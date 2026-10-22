package com.vcs.appliancesafety;

import android.os.Handler;
import android.os.Looper;

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

public class MqttManager {

    public interface Listener {
        void onConnected();
        void onDisconnected(String reason);
        void onTelemetry(ApplianceTelemetry telemetry);
        void onError(String message);
        void onInfo(String message);
    }

    private static final String SERVER_URI =
            "tcp://broker.emqx.io:1883";

    private static final String TELEMETRY_TOPIC =
            "appliance/AP001/telemetry";

    private static final String COMMAND_TOPIC =
            "appliance/AP001/command";

    private final Handler mainHandler =
            new Handler(Looper.getMainLooper());

    private final Listener listener;

    private volatile boolean closed = true;
    private volatile boolean connecting;
    private volatile boolean connected;

    private MqttAsyncClient client;

    public MqttManager(Listener listener) {
        this.listener = listener;
    }

    public synchronized void connect() {
        if (connecting || (client != null && client.isConnected())) {
            return;
        }

        closed = false;
        connecting = true;
        connected = false;

        try {
            String clientId =
                    "ApplianceSafety-" + UUID.randomUUID();

            client = new MqttAsyncClient(
                    SERVER_URI,
                    clientId,
                    null
            );

            client.setCallback(new MqttCallbackExtended() {
                @Override
                public void connectComplete(
                        boolean reconnect,
                        String serverURI) {

                    if (closed) {
                        return;
                    }

                    connected = false;
                    subscribeToTelemetry();
                }

                @Override
                public void connectionLost(Throwable cause) {
                    connected = false;

                    if (!closed) {
                        post(() -> listener.onDisconnected(
                                errorMessage(cause)
                        ));
                    }
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

                    try {
                        ApplianceTelemetry telemetry =
                                TelemetryParser.parse(payload);

                        post(() -> listener.onTelemetry(telemetry));

                    } catch (Exception exception) {
                        post(() -> listener.onError(
                                "Invalid telemetry: "
                                        + errorMessage(exception)
                        ));
                    }
                }

                @Override
                public void deliveryComplete(
                        IMqttDeliveryToken token) {
                }
            });

            MqttConnectOptions options =
                    new MqttConnectOptions();

            options.setAutomaticReconnect(true);
            options.setCleanSession(true);
            options.setConnectionTimeout(15);
            options.setKeepAliveInterval(30);

            client.connect(
                    options,
                    null,
                    new IMqttActionListener() {
                        @Override
                        public void onSuccess(IMqttToken token) {
                            connecting = false;
                        }

                        @Override
                        public void onFailure(
                                IMqttToken token,
                                Throwable exception) {

                            connecting = false;
                            connected = false;

                            if (!closed) {
                                post(() -> listener.onError(
                                        "MQTT connection failed: "
                                                + errorMessage(exception)
                                ));
                            }
                        }
                    });

        } catch (MqttException exception) {
            connecting = false;
            connected = false;

            post(() -> listener.onError(
                    "MQTT setup failed: "
                            + errorMessage(exception)
            ));
        }
    }

    private void subscribeToTelemetry() {
        if (closed || client == null || !client.isConnected()) {
            return;
        }

        try {
            client.subscribe(
                    TELEMETRY_TOPIC,
                    0,
                    null,
                    new IMqttActionListener() {
                        @Override
                        public void onSuccess(IMqttToken token) {
                            if (closed) {
                                return;
                            }

                            connected = true;
                            connecting = false;
                            post(listener::onConnected);
                        }

                        @Override
                        public void onFailure(
                                IMqttToken token,
                                Throwable exception) {

                            connected = false;

                            if (!closed) {
                                post(() -> listener.onError(
                                        "MQTT subscription failed: "
                                                + errorMessage(exception)
                                ));
                            }
                        }
                    });

        } catch (MqttException exception) {
            connected = false;

            post(() -> listener.onError(
                    "MQTT subscription failed: "
                            + errorMessage(exception)
            ));
        }
    }

    public void requestDeviceStatus() {
        if (closed || client == null
                || !client.isConnected() || !connected) {
            post(() -> listener.onError(
                    "Cannot request status: MQTT is not connected"
            ));
            return;
        }

        try {
            JSONObject request = new JSONObject();
            request.put("id", "AP001");
            request.put("command", "REQUEST_STATUS");
            request.put("request_id", UUID.randomUUID().toString());

            MqttMessage message = new MqttMessage(
                    request.toString().getBytes(StandardCharsets.UTF_8)
            );

            message.setQos(0);
            message.setRetained(false);

            client.publish(
                    COMMAND_TOPIC,
                    message,
                    null,
                    new IMqttActionListener() {
                        @Override
                        public void onSuccess(IMqttToken token) {
                            post(() -> listener.onInfo(
                                    "Status request sent. Waiting for device response..."
                            ));
                        }

                        @Override
                        public void onFailure(
                                IMqttToken token,
                                Throwable exception) {
                            post(() -> listener.onError(
                                    "Status request failed: "
                                            + errorMessage(exception)
                            ));
                        }
                    });

        } catch (Exception exception) {
            post(() -> listener.onError(
                    "Could not publish status request: "
                            + errorMessage(exception)
            ));
        }
    }

    public boolean isConnected() {
        return connected;
    }

    public synchronized void disconnect() {
        closed = true;
        connecting = false;
        connected = false;

        MqttAsyncClient currentClient = client;
        client = null;

        if (currentClient == null) {
            return;
        }

        try {
            if (currentClient.isConnected()) {
                currentClient.disconnect();
            }
        } catch (MqttException ignored) {
        }

        try {
            currentClient.close();
        } catch (MqttException ignored) {
        }
    }

    private void post(Runnable runnable) {
        mainHandler.post(() -> {
            if (!closed) {
                runnable.run();
            }
        });
    }

    private String errorMessage(Throwable exception) {
        if (exception == null || exception.getMessage() == null) {
            return "Unknown error";
        }

        return exception.getMessage();
    }
}
