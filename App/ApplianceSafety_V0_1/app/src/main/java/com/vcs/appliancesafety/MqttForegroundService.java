
package com.vcs.appliancesafety;

import android.Manifest;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.IBinder;
import android.os.Handler;
import android.os.Looper;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;

import org.eclipse.paho.client.mqttv3.IMqttActionListener;
import org.eclipse.paho.client.mqttv3.IMqttDeliveryToken;
import org.eclipse.paho.client.mqttv3.IMqttToken;
import org.eclipse.paho.client.mqttv3.MqttAsyncClient;
import org.eclipse.paho.client.mqttv3.MqttCallbackExtended;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;
import org.json.JSONObject;

import java.nio.charset.StandardCharsets;
import java.util.UUID;

public class MqttForegroundService extends Service {

    public static final String ACTION_REQUEST_STATUS =
            "com.vcs.appliancesafety.ACTION_REQUEST_STATUS";
    public static final String ACTION_SERVICE_EVENT =
            "com.vcs.appliancesafety.ACTION_SERVICE_EVENT";
    public static final String EXTRA_EVENT = "event";
    public static final String EXTRA_MESSAGE = "message";
    public static final String EXTRA_PAYLOAD = "payload";

    private static final String BROKER = "tcp://broker.emqx.io:1883";
    private static final String TELEMETRY_TOPIC = "appliance/AP001/telemetry";
    private static final String COMMAND_TOPIC = "appliance/AP001/command";
    private static final String CHANNEL_ID = "appliance_mqtt_service";
    private static final int SERVICE_NOTIFICATION_ID = 2001;
    private static final int FAULT_NOTIFICATION_ID = 2002;
    private static final String PREFS_NAME = "APPLIANCE_SAFETY_STATE";

    private MqttAsyncClient mqttClient;
    private boolean stopping;
    private final Handler retryHandler = new Handler(Looper.getMainLooper());
    private boolean pendingStatusRequest;
    private boolean connecting;
    private boolean subscriptionInProgress;
    private String previousFault = "";

    @Override
    public void onCreate() {
        super.onCreate();
        stopping = false;
        createNotificationChannel();
        startServiceInForeground();
        connectMqtt();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent != null
                && ACTION_REQUEST_STATUS.equals(intent.getAction())) {
            pendingStatusRequest = true;
            publishQueuedStatusRequestIfReady();
        }

        return START_STICKY;
    }

    private void startServiceInForeground() {
        Notification notification = new NotificationCompat.Builder(
                this, CHANNEL_ID)
                .setSmallIcon(R.mipmap.ic_launcher)
                .setContentTitle("Appliance Safety")
                .setContentText("Starting appliance monitoring")
                .setCategory(NotificationCompat.CATEGORY_SERVICE)
                .setOngoing(true)
                .setContentIntent(createMainActivityPendingIntent())
                .build();

        startForeground(
                SERVICE_NOTIFICATION_ID,
                notification,
                ServiceInfo.FOREGROUND_SERVICE_TYPE_CONNECTED_DEVICE
        );
    }

    private PendingIntent createMainActivityPendingIntent() {
        Intent intent = new Intent(this, MainActivity.class);

        return PendingIntent.getActivity(
                this,
                2001,
                intent,
                PendingIntent.FLAG_UPDATE_CURRENT
                        | PendingIntent.FLAG_IMMUTABLE
        );
    }

    private synchronized void connectMqtt() {
        if (stopping || connecting
                || (mqttClient != null && mqttClient.isConnected())) {
            return;
        }

        try {
            if (mqttClient == null) {
                String clientId = "AP001_ANDROID_SERVICE_"
                        + UUID.randomUUID().toString().replace("-", "");

                mqttClient = new MqttAsyncClient(
                        BROKER,
                        clientId,
                        null
                );
            }

            mqttClient.setCallback(new MqttCallbackExtended() {
                @Override
                public void connectComplete(
                        boolean reconnect,
                        String serverURI) {
                    if (reconnect) {
                        subscribeTelemetry();
                    }
                }

                @Override
                public void connectionLost(Throwable cause) {
                    broadcastEvent(
                            "CONNECTION",
                            "MQTT connection lost; reconnecting"
                    );

                    updateServiceNotification(
                            "MQTT connection lost; reconnecting"
                    );
                }

                @Override
                public void messageArrived(
                        String topic,
                        MqttMessage message) {
                    if (!TELEMETRY_TOPIC.equals(topic)) {
                        return;
                    }

                    String payload = new String(
                            message.getPayload(),
                            StandardCharsets.UTF_8
                    );

                    processTelemetry(payload);
                }

                @Override
                public void deliveryComplete(IMqttDeliveryToken token) {
                }
            });

            MqttConnectOptions options = new MqttConnectOptions();
            options.setAutomaticReconnect(true);
            options.setCleanSession(true);
            options.setConnectionTimeout(15);
            options.setKeepAliveInterval(30);

            connecting = true;

            mqttClient.connect(options, null, new IMqttActionListener() {
                @Override
                public void onSuccess(IMqttToken token) {
                    connecting = false;

                    broadcastEvent("CONNECTION", "MQTT connected");
                    updateServiceNotification(
                            "MQTT connected; monitoring AP001"
                    );

                    subscribeTelemetry();
                }

                @Override
                public void onFailure(IMqttToken token, Throwable error) {
                    connecting = false;

                    broadcastEvent(
                            "CONNECTION",
                            "MQTT connection failed: " + errorMessage(error)
                    );

                    updateServiceNotification(
                            "MQTT connection failed; retrying"
                    );

                    scheduleReconnect();
                }
            });

        } catch (MqttException error) {
            connecting = false;

            broadcastEvent(
                    "ERROR",
                    "MQTT setup failed: " + errorMessage(error)
            );

            updateServiceNotification("MQTT setup failed; retrying");
            scheduleReconnect();
        }
    }

    private void scheduleReconnect() {
        if (!stopping) {
            retryHandler.removeCallbacks(reconnectRunnable);
            retryHandler.postDelayed(reconnectRunnable, 5000L);
        }
    }

    private final Runnable reconnectRunnable = this::connectMqtt;

    private synchronized void subscribeTelemetry() {
        if (stopping || mqttClient == null
                || !mqttClient.isConnected()
                || subscriptionInProgress) {
            return;
        }

        subscriptionInProgress = true;

        try {
            mqttClient.subscribe(
                    TELEMETRY_TOPIC,
                    0,
                    null,
                    new IMqttActionListener() {
                        @Override
                        public void onSuccess(IMqttToken token) {
                            subscriptionInProgress = false;

                            broadcastEvent(
                                    "CONNECTION",
                                    "MQTT connected; telemetry subscribed"
                            );

                            updateServiceNotification(
                                    "Monitoring AP001 telemetry"
                            );

                            publishQueuedStatusRequestIfReady();
                        }

                        @Override
                        public void onFailure(
                                IMqttToken token,
                                Throwable error) {
                            subscriptionInProgress = false;

                            broadcastEvent(
                                    "ERROR",
                                    "Telemetry subscription failed: "
                                            + errorMessage(error)
                            );

                            updateServiceNotification(
                                    "Telemetry subscription failed"
                            );

                            scheduleReconnect();
                        }
                    }
            );

        } catch (MqttException error) {
            subscriptionInProgress = false;

            broadcastEvent(
                    "ERROR",
                    "Telemetry subscription failed: "
                            + errorMessage(error)
            );

            scheduleReconnect();
        }
    }

    private void publishQueuedStatusRequestIfReady() {
        if (!pendingStatusRequest || stopping
                || mqttClient == null
                || !mqttClient.isConnected()
                || subscriptionInProgress) {
            return;
        }

        pendingStatusRequest = false;
        publishStatusRequest();
    }

    private void publishStatusRequest() {
        if (mqttClient == null || !mqttClient.isConnected()) {
            pendingStatusRequest = true;

            broadcastEvent(
                    "REQUEST_QUEUED",
                    "MQTT is connecting; status request queued"
            );

            return;
        }

        try {
            JSONObject command = new JSONObject();
            command.put("id", "AP001");
            command.put("command", "REQUEST_STATUS");

            String requestId = UUID.randomUUID().toString();
            command.put("request_id", requestId);

            MqttMessage message = new MqttMessage(
                    command.toString().getBytes(StandardCharsets.UTF_8)
            );

            message.setQos(0);
            message.setRetained(false);

            mqttClient.publish(
                    COMMAND_TOPIC,
                    message,
                    null,
                    new IMqttActionListener() {
                        @Override
                        public void onSuccess(IMqttToken token) {
                            broadcastEvent(
                                    "REQUEST_SENT",
                                    "Status request published to MQTT; waiting for device response"
                            );

                            updateServiceNotification(
                                    "Status request published to MQTT"
                            );
                        }

                        @Override
                        public void onFailure(
                                IMqttToken token,
                                Throwable error) {
                            pendingStatusRequest = true;

                            broadcastEvent(
                                    "ERROR",
                                    "Status request publish failed: "
                                            + errorMessage(error)
                            );

                            updateServiceNotification(
                                    "Status request publish failed"
                            );

                            scheduleReconnect();
                        }
                    }
            );

        } catch (Exception error) {
            pendingStatusRequest = true;

            broadcastEvent(
                    "ERROR",
                    "Could not create status request: "
                            + errorMessage(error)
            );
        }
    }

    private void processTelemetry(String payload) {
        try {
            ApplianceTelemetry telemetry = TelemetryParser.parse(payload);

            getSharedPreferences(PREFS_NAME, MODE_PRIVATE)
                    .edit()
                    .putString("last_telemetry", payload)
                    .putLong("last_received_at", System.currentTimeMillis())
                    .apply();

            broadcastEvent("TELEMETRY", payload);

            String fault = telemetry.fault == null
                    ? "Not reported"
                    : telemetry.fault.trim();

            if (fault.isEmpty()) {
                fault = "Not reported";
            }

            if (!isNormalFault(fault)
                    && !"Not reported".equalsIgnoreCase(fault)
                    && !fault.equalsIgnoreCase(previousFault)) {
                showFaultNotification(fault);
            }

            if (isNormalFault(fault)) {
                NotificationManagerCompat.from(this)
                        .cancel(FAULT_NOTIFICATION_ID);
            }

            previousFault = fault;

        } catch (Exception error) {
            broadcastEvent(
                    "ERROR",
                    "Invalid telemetry: " + errorMessage(error)
            );
        }
    }

    private boolean isNormalFault(String fault) {
        return "NONE".equalsIgnoreCase(fault)
                || "NO_FAULT".equalsIgnoreCase(fault)
                || "OK".equalsIgnoreCase(fault);
    }

    private void showFaultNotification(String fault) {
        Notification notification = new NotificationCompat.Builder(
                this, CHANNEL_ID)
                .setSmallIcon(R.mipmap.ic_launcher)
                .setContentTitle("Appliance Safety Alert")
                .setContentText("AP001 reports: " + fault)
                .setStyle(
                        new NotificationCompat.BigTextStyle()
                                .bigText("Appliance AP001 reports fault: " + fault)
                )
                .setPriority(NotificationCompat.PRIORITY_HIGH)
                .setCategory(NotificationCompat.CATEGORY_ALARM)
                .setContentIntent(createMainActivityPendingIntent())
                .setAutoCancel(true)
                .build();

        if (Build.VERSION.SDK_INT < 33
                || checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS)
                == PackageManager.PERMISSION_GRANTED) {
            NotificationManagerCompat.from(this)
                    .notify(FAULT_NOTIFICATION_ID, notification);
        }
    }

    private void updateServiceNotification(String message) {
        Notification notification = new NotificationCompat.Builder(
                this, CHANNEL_ID)
                .setSmallIcon(R.mipmap.ic_launcher)
                .setContentTitle("Appliance Safety")
                .setContentText(message)
                .setCategory(NotificationCompat.CATEGORY_SERVICE)
                .setOngoing(true)
                .setContentIntent(createMainActivityPendingIntent())
                .build();

        NotificationManager manager =
                getSystemService(NotificationManager.class);

        if (manager != null) {
            manager.notify(SERVICE_NOTIFICATION_ID, notification);
        }
    }

    private void createNotificationChannel() {
        NotificationChannel channel = new NotificationChannel(
                CHANNEL_ID,
                "Appliance Safety Monitoring",
                NotificationManager.IMPORTANCE_LOW
        );

        channel.setDescription(
                "Persistent MQTT monitoring and appliance fault alerts"
        );

        NotificationManager manager =
                getSystemService(NotificationManager.class);

        if (manager != null) {
            manager.createNotificationChannel(channel);
        }
    }

    private void broadcastEvent(String event, String message) {
        Intent intent = new Intent(ACTION_SERVICE_EVENT);
        intent.setPackage(getPackageName());
        intent.putExtra(EXTRA_EVENT, event);
        intent.putExtra(EXTRA_MESSAGE, message);

        if ("TELEMETRY".equals(event)) {
            intent.putExtra(EXTRA_PAYLOAD, message);
        }

        sendBroadcast(intent);
    }

    private String errorMessage(Throwable error) {
        return error == null || error.getMessage() == null
                ? "Unknown error"
                : error.getMessage();
    }

    @Override
    public void onTaskRemoved(Intent rootIntent) {
        super.onTaskRemoved(rootIntent);
    }

    @Override
    public void onDestroy() {
        stopping = true;
        retryHandler.removeCallbacksAndMessages(null);

        if (mqttClient != null) {
            try {
                if (mqttClient.isConnected()) {
                    mqttClient.disconnect();
                }

                mqttClient.close();

            } catch (MqttException ignored) {
            }
        }

        super.onDestroy();
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }
}
