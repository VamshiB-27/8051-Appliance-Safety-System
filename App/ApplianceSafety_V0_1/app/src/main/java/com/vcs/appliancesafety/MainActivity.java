
package com.vcs.appliancesafety;

import android.Manifest;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.Button;
import android.widget.TextView;

import androidx.activity.EdgeToEdge;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class MainActivity extends AppCompatActivity {

    private static final String CHANNEL_ID = "appliance_safety_alerts";
    private static final int NOTIFICATION_CONNECTION_ID = 1002;
    private static final long STATUS_TIMEOUT_MS = 20000L;
    private static final String PREFS_NAME = "APPLIANCE_SAFETY_STATE";

    private TextView tvConnectionStatus;
    private TextView tvLastDeviceResponse;
    private TextView tvVoltage;
    private TextView tvCurrent;
    private TextView tvRealPower;
    private TextView tvApparentPower;
    private TextView tvPowerFactor;
    private TextView tvFrequency;
    private TextView tvLeakageCurrent;
    private TextView tvLoadState;
    private TextView tvRelayState;
    private TextView tvBuzzerState;
    private TextView tvTemperature;
    private TextView tvFaultStatus;
    private TextView tvLastUpdated;

    private Button btnTurnOn;
    private Button btnTurnOff;
    private Button btnRequestStatus;
    private Button btnBuzzerOn;
    private Button btnBuzzerOff;
    private Button btnClearFault;

    private final Handler handler = new Handler(Looper.getMainLooper());

    private boolean receiverRegistered;
    private boolean awaitingStatusRequest;
    private boolean connectionNotificationShown;
    private String previousFault = "";
    private boolean hasReceivedTelemetry;

    private final Runnable statusTimeoutRunnable = () -> {
        if (awaitingStatusRequest) {
            awaitingStatusRequest = false;
            btnRequestStatus.setEnabled(true);
            btnRequestStatus.setText("Request Device Status");
            tvLastUpdated.setText(
                    "No new telemetry received. Check ESP32 command forwarding and MCU response."
            );
        }
    };

    private final BroadcastReceiver serviceReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }

            String event = intent.getStringExtra(
                    MqttForegroundService.EXTRA_EVENT
            );
            String message = intent.getStringExtra(
                    MqttForegroundService.EXTRA_MESSAGE
            );

            if ("TELEMETRY".equals(event)) {
                String payload = intent.getStringExtra(
                        MqttForegroundService.EXTRA_PAYLOAD
                );

                if (payload != null) {
                    displayTelemetry(payload);

                    if (awaitingStatusRequest) {
                        awaitingStatusRequest = false;
                        handler.removeCallbacks(statusTimeoutRunnable);
                        btnRequestStatus.setEnabled(true);
                        btnRequestStatus.setText("Request Device Status");
                        tvLastUpdated.setText(
                                "Telemetry received. Verify the device response."
                        );
                    }
                }

                setConnectionStatus(
                        "MQTT CONNECTED",
                        Color.rgb(8, 125, 66)
                );
                setControlButtonsEnabled(true);

                NotificationManagerCompat.from(MainActivity.this)
                        .cancel(NOTIFICATION_CONNECTION_ID);

                connectionNotificationShown = false;
                return;
            }

            if ("CONNECTION".equals(event)) {
                String status = message == null
                        ? "MQTT status changed" : message;

                if (status.toLowerCase(Locale.ROOT).contains("connected")) {
                    setConnectionStatus(
                            "MQTT CONNECTED",
                            Color.rgb(8, 125, 66)
                    );
                    setControlButtonsEnabled(true);

                    NotificationManagerCompat.from(MainActivity.this)
                            .cancel(NOTIFICATION_CONNECTION_ID);

                    connectionNotificationShown = false;
                } else {
                    setConnectionStatus(
                            "MQTT RECONNECTING",
                            Color.rgb(150, 95, 0)
                    );
                    setControlButtonsEnabled(false);
                    tvLastUpdated.setText(status);
                }
                return;
            }

            if ("REQUEST_QUEUED".equals(event)) {
                tvLastUpdated.setText(
                        message == null
                                ? "MQTT connecting; status request queued."
                                : message
                );
                return;
            }

            if ("REQUEST_SENT".equals(event)) {
                tvLastUpdated.setText(
                        message == null
                                ? "Request published. Waiting for telemetry."
                                : message
                );

                handler.removeCallbacks(statusTimeoutRunnable);
                handler.postDelayed(
                        statusTimeoutRunnable,
                        STATUS_TIMEOUT_MS
                );
                return;
            }

            if ("ERROR".equals(event)) {
                tvLastUpdated.setText(
                        message == null ? "Background MQTT error" : message
                );

                setConnectionStatus(
                        "MQTT ERROR",
                        Color.rgb(190, 55, 45)
                );
                setControlButtonsEnabled(false);

                if (awaitingStatusRequest
                        && message != null
                        && (message.contains("Status request")
                        || message.contains("status request")
                        || message.contains("MQTT connection failed")
                        || message.contains("Could not create status request"))) {
                    awaitingStatusRequest = false;
                    handler.removeCallbacks(statusTimeoutRunnable);
                    btnRequestStatus.setEnabled(true);
                    btnRequestStatus.setText("Request Device Status");
                }
            }
        }
    };

    private final ActivityResultLauncher<String> notificationPermissionLauncher =
            registerForActivityResult(
                    new ActivityResultContracts.RequestPermission(),
                    granted -> {
                        tvLastUpdated.setText(
                                granted
                                        ? "Notifications enabled."
                                        : "Notifications disabled. Enable them in app settings."
                        );
                    }
            );

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);

        ViewCompat.setOnApplyWindowInsetsListener(
                findViewById(R.id.main),
                (view, insets) -> {
                    Insets systemBars = insets.getInsets(
                            WindowInsetsCompat.Type.systemBars()
                    );

                    view.setPadding(
                            systemBars.left,
                            systemBars.top,
                            systemBars.right,
                            systemBars.bottom
                    );

                    return insets;
                }
        );

        initializeViews();
        createNotificationChannel();
        requestNotificationPermission();
        showWaitingForData();

        setConnectionStatus(
                "STARTING MQTT...",
                Color.rgb(150, 95, 0)
        );

        btnTurnOn.setEnabled(false);
        btnTurnOff.setEnabled(false);
        btnRequestStatus.setEnabled(true);
        setControlButtonsEnabled(false);

        btnRequestStatus.setOnClickListener(
                view -> requestDeviceStatus()
        );

        btnTurnOn.setOnClickListener(view ->
                sendDeviceCommand("RELAY,ON"));
        btnTurnOff.setOnClickListener(view ->
                sendDeviceCommand("RELAY,OFF"));
        btnBuzzerOn.setOnClickListener(view ->
                sendDeviceCommand("BUZZER,ON"));
        btnBuzzerOff.setOnClickListener(view ->
                sendDeviceCommand("BUZZER,OFF"));
        btnClearFault.setOnClickListener(view ->
                sendDeviceCommand("FAULT,CLEAR"));

        startMqttForegroundService();
    }

    private void initializeViews() {
        tvConnectionStatus = findViewById(R.id.tvConnectionStatus);
        tvLastDeviceResponse = findViewById(R.id.tvLastDeviceResponse);
        tvVoltage = findViewById(R.id.tvVoltage);
        tvCurrent = findViewById(R.id.tvCurrent);
        tvRealPower = findViewById(R.id.tvRealPower);
        tvApparentPower = findViewById(R.id.tvApparentPower);
        tvPowerFactor = findViewById(R.id.tvPowerFactor);
        tvFrequency = findViewById(R.id.tvFrequency);
        tvLeakageCurrent = findViewById(R.id.tvLeakageCurrent);
        tvLoadState = findViewById(R.id.tvLoadState);
        tvRelayState = findViewById(R.id.tvRelayState);
        tvBuzzerState = findViewById(R.id.tvBuzzerState);
        tvTemperature = findViewById(R.id.tvTemperature);
        tvFaultStatus = findViewById(R.id.tvFaultStatus);
        tvLastUpdated = findViewById(R.id.tvLastUpdated);

        btnTurnOn = findViewById(R.id.btnTurnOn);
        btnTurnOff = findViewById(R.id.btnTurnOff);
        btnRequestStatus = findViewById(R.id.btnRequestStatus);
        btnBuzzerOn = findViewById(R.id.btnBuzzerOn);
        btnBuzzerOff = findViewById(R.id.btnBuzzerOff);
        btnClearFault = findViewById(R.id.btnClearFault);
    }

    private void startMqttForegroundService() {
        Intent serviceIntent = new Intent(
                this,
                MqttForegroundService.class
        );

        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                ContextCompat.startForegroundService(this, serviceIntent);
            } else {
                startService(serviceIntent);
            }
        } catch (Exception error) {
            tvLastUpdated.setText(
                    "Could not start monitoring: "
                            + safeText(error.getMessage())
            );
        }
    }

    private void requestDeviceStatus() {
        if (awaitingStatusRequest) {
            return;
        }

        awaitingStatusRequest = true;
        btnRequestStatus.setEnabled(false);
        btnRequestStatus.setText("Requesting...");
        tvLastUpdated.setText("Queuing status request for MQTT...");

        Intent serviceIntent = new Intent(
                this,
                MqttForegroundService.class
        );

        serviceIntent.setAction(
                MqttForegroundService.ACTION_REQUEST_STATUS
        );

        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                ContextCompat.startForegroundService(this, serviceIntent);
            } else {
                startService(serviceIntent);
            }

            handler.removeCallbacks(statusTimeoutRunnable);
            handler.postDelayed(
                    statusTimeoutRunnable,
                    STATUS_TIMEOUT_MS
            );

        } catch (Exception error) {
            awaitingStatusRequest = false;
            btnRequestStatus.setEnabled(true);
            btnRequestStatus.setText("Request Device Status");

            tvLastUpdated.setText(
                    "Status request failed: "
                            + safeText(error.getMessage())
            );
        }
    }

    private void sendDeviceCommand(String command) {
        Intent serviceIntent = new Intent(
                this,
                MqttForegroundService.class
        );
        serviceIntent.setAction(MqttForegroundService.ACTION_SEND_COMMAND);
        serviceIntent.putExtra(MqttForegroundService.EXTRA_COMMAND, command);

        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                ContextCompat.startForegroundService(this, serviceIntent);
            } else {
                startService(serviceIntent);
            }
            tvLastUpdated.setText("Sending command: " + command);
        } catch (Exception error) {
            tvLastUpdated.setText(
                    "Command failed: " + safeText(error.getMessage())
            );
        }
    }

    private void displayTelemetry(String payload) {
        try {
            ApplianceTelemetry telemetry = TelemetryParser.parse(payload);
            updateDashboard(telemetry);
            handleFaultNotification(telemetry.fault);
        } catch (Exception error) {
            tvLastUpdated.setText(
                    "Invalid telemetry: " + safeText(error.getMessage())
            );
        }
    }

    private void showWaitingForData() {
        tvVoltage.setText("-- V");
        tvCurrent.setText("-- A");
        tvRealPower.setText("-- W");
        tvApparentPower.setText("-- VA");
        tvPowerFactor.setText("--");
        tvFrequency.setText("-- Hz");
        tvLeakageCurrent.setText("-- mA");
        tvLoadState.setText("Waiting for relay status");
        tvRelayState.setText("UNKNOWN");
        tvRelayState.setTextColor(Color.rgb(38, 50, 71));
        tvRelayState.setBackgroundColor(Color.WHITE);
        tvBuzzerState.setText("UNKNOWN");
        tvBuzzerState.setTextColor(Color.rgb(38, 50, 71));
        tvBuzzerState.setBackgroundColor(Color.WHITE);
        tvTemperature.setText("-- °C");
        tvFaultStatus.setText("No telemetry received yet");
        tvFaultStatus.setTextColor(Color.rgb(104, 115, 134));
        tvLastUpdated.setText("Waiting for device data...");
        tvLastDeviceResponse.setText("Last device response: --:--:--");
    }

    private void updateDashboard(ApplianceTelemetry telemetry) {
        tvVoltage.setText(format(telemetry.voltage, 1, " V"));
        tvCurrent.setText(format(telemetry.current, 2, " A"));
        tvRealPower.setText(format(telemetry.realPower, 1, " W"));
        tvApparentPower.setText(format(telemetry.apparentPower, 1, " VA"));
        tvPowerFactor.setText(format(telemetry.powerFactor, 3, ""));
        tvFrequency.setText(format(telemetry.frequency, 2, " Hz"));
        tvLeakageCurrent.setText(format(telemetry.leakageCurrent, 2, " mA"));

        tvTemperature.setText(format(telemetry.temperature, 1, " °C"));

        if (telemetry.relayKnown) {
            setOutputState(tvRelayState, telemetry.relayOn, "RELAY");
            tvLoadState.setText(
                    "Relay state: " + (telemetry.relayOn ? "ON" : "OFF")
            );
        } else {
            tvRelayState.setText("UNKNOWN");
            tvRelayState.setTextColor(Color.rgb(38, 50, 71));
            tvRelayState.setBackgroundColor(Color.WHITE);
            tvLoadState.setText("Relay state not reported by ESP32");
        }

        if (telemetry.buzzerKnown) {
            setOutputState(tvBuzzerState, telemetry.buzzerOn, "BUZZER");
        } else {
            tvBuzzerState.setText("UNKNOWN");
            tvBuzzerState.setTextColor(Color.rgb(38, 50, 71));
            tvBuzzerState.setBackgroundColor(Color.WHITE);
        }

        String fault = safeText(telemetry.fault);
        tvFaultStatus.setText("FAULT: " + fault);

        if (isNormalFaultState(fault)) {
            tvFaultStatus.setTextColor(Color.rgb(8, 125, 66));
            tvFaultStatus.setBackgroundColor(Color.rgb(221, 247, 231));
        } else if ("Not reported".equalsIgnoreCase(fault)) {
            tvFaultStatus.setTextColor(Color.rgb(104, 115, 134));
            tvFaultStatus.setBackgroundColor(Color.rgb(238, 241, 245));
        } else {
            tvFaultStatus.setTextColor(Color.rgb(190, 35, 35));
            tvFaultStatus.setBackgroundColor(Color.rgb(255, 230, 230));
        }

        String time = new SimpleDateFormat(
                "HH:mm:ss",
                Locale.getDefault()
        ).format(new Date(telemetry.receivedAt));

        tvLastDeviceResponse.setText("Last device response: " + time);
        tvLastUpdated.setText("Device data received at " + time);
    }

    private void setOutputState(
            TextView view,
            boolean isOn,
            String label) {

        view.setText(label + ": " + (isOn ? "ON" : "OFF"));
        view.setBackgroundColor(Color.WHITE);

        if ("RELAY".equals(label)) {
            view.setTextColor(
                    isOn ? Color.rgb(25, 118, 210)
                            : Color.rgb(126, 87, 194)
            );
        } else {
            view.setTextColor(
                    isOn ? Color.rgb(211, 47, 47)
                            : Color.rgb(25, 118, 210)
            );
        }
    }

    private void updateLastDeviceResponseTime(long timestamp) {
        String time = new SimpleDateFormat(
                "HH:mm:ss",
                Locale.getDefault()
        ).format(new Date(timestamp));
        tvLastDeviceResponse.setText("Last device response: " + time);
    }

    private void handleFaultNotification(String faultValue) {
        String fault = safeText(faultValue);

        if (!hasReceivedTelemetry) {
            hasReceivedTelemetry = true;
            previousFault = fault;

            if (!isNormalFaultState(fault)
                    && !"Not reported".equalsIgnoreCase(fault)) {
                notifyFault(fault);
            }
            return;
        }

        if (fault.equalsIgnoreCase(previousFault)) {
            return;
        }

        previousFault = fault;

        if (isNormalFaultState(fault)) {
            NotificationManagerCompat.from(this)
                    .cancel(1001);
            return;
        }

        if ("Not reported".equalsIgnoreCase(fault)) {
            return;
        }

        notifyFault(fault);
    }

    private boolean isNormalFaultState(String fault) {
        return "NONE".equalsIgnoreCase(fault)
                || "NO_FAULT".equalsIgnoreCase(fault)
                || "OK".equalsIgnoreCase(fault);
    }

    private void notifyFault(String fault) {
        showNotification(
                1001,
                "Appliance safety alert",
                "Device AP001 reports: " + fault,
                NotificationCompat.PRIORITY_HIGH
        );
    }

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel channel = new NotificationChannel(
                    CHANNEL_ID,
                    "Appliance Safety Alerts",
                    NotificationManager.IMPORTANCE_HIGH
            );

            channel.setDescription(
                    "Appliance fault and connection notifications"
            );

            channel.enableVibration(true);

            NotificationManager manager =
                    getSystemService(NotificationManager.class);

            if (manager != null) {
                manager.createNotificationChannel(channel);
            }
        }
    }

    private void requestNotificationPermission() {
        if (Build.VERSION.SDK_INT >= 33
                && ContextCompat.checkSelfPermission(
                this,
                Manifest.permission.POST_NOTIFICATIONS
        ) != PackageManager.PERMISSION_GRANTED) {
            notificationPermissionLauncher.launch(
                    Manifest.permission.POST_NOTIFICATIONS
            );
        }
    }

    private void showNotification(
            int notificationId,
            String title,
            String message,
            int priority) {

        if (Build.VERSION.SDK_INT >= 33
                && ContextCompat.checkSelfPermission(
                this,
                Manifest.permission.POST_NOTIFICATIONS
        ) != PackageManager.PERMISSION_GRANTED) {
            return;
        }

        Intent intent = new Intent(this, MainActivity.class);

        android.app.PendingIntent pendingIntent =
                android.app.PendingIntent.getActivity(
                        this,
                        notificationId,
                        intent,
                        android.app.PendingIntent.FLAG_UPDATE_CURRENT
                                | android.app.PendingIntent.FLAG_IMMUTABLE
                );

        NotificationCompat.Builder builder =
                new NotificationCompat.Builder(this, CHANNEL_ID)
                        .setSmallIcon(R.mipmap.ic_launcher)
                        .setContentTitle(title)
                        .setContentText(message)
                        .setStyle(
                                new NotificationCompat.BigTextStyle()
                                        .bigText(message)
                        )
                        .setPriority(priority)
                        .setCategory(NotificationCompat.CATEGORY_STATUS)
                        .setContentIntent(pendingIntent)
                        .setAutoCancel(true);

        NotificationManagerCompat.from(this)
                .notify(notificationId, builder.build());
    }

    private String format(Double value, int decimals, String unit) {
        if (value == null || !Double.isFinite(value)) {
            return "--" + unit;
        }

        return String.format(
                Locale.getDefault(),
                "%." + decimals + "f%s",
                value,
                unit
        );
    }

    private String safeText(String value) {
        return value == null || value.trim().isEmpty()
                ? "Unknown" : value;
    }

    private void setControlButtonsEnabled(boolean enabled) {
        btnTurnOn.setEnabled(enabled);
        btnTurnOff.setEnabled(enabled);
        btnBuzzerOn.setEnabled(enabled);
        btnBuzzerOff.setEnabled(enabled);
        btnClearFault.setEnabled(enabled);
        btnRequestStatus.setEnabled(enabled && !awaitingStatusRequest);
    }

    private void setConnectionStatus(String text, int textColor) {
        tvConnectionStatus.setText(text);
        tvConnectionStatus.setTextColor(textColor);
    }

    @Override
    protected void onStart() {
        super.onStart();

        IntentFilter filter = new IntentFilter(
                MqttForegroundService.ACTION_SERVICE_EVENT
        );

        ContextCompat.registerReceiver(
                this,
                serviceReceiver,
                filter,
                ContextCompat.RECEIVER_NOT_EXPORTED
        );

        receiverRegistered = true;

        String lastPayload = getSharedPreferences(
                PREFS_NAME,
                MODE_PRIVATE
        ).getString("last_telemetry", null);

        if (lastPayload != null) {
            displayTelemetry(lastPayload);

            long lastReceivedAt = getSharedPreferences(
                    PREFS_NAME,
                    MODE_PRIVATE
            ).getLong("last_received_at", 0L);

            if (lastReceivedAt > 0L) {
                updateLastDeviceResponseTime(lastReceivedAt);
            }
        }
    }

    @Override
    protected void onStop() {
        handler.removeCallbacks(statusTimeoutRunnable);

        if (receiverRegistered) {
            unregisterReceiver(serviceReceiver);
            receiverRegistered = false;
        }

        awaitingStatusRequest = false;
        btnRequestStatus.setEnabled(true);
        btnRequestStatus.setText("Request Device Status");

        super.onStop();
    }

    @Override
    protected void onDestroy() {
        handler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }
}
