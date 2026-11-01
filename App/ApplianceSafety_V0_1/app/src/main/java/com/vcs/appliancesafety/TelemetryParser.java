package com.vcs.appliancesafety;

import org.json.JSONException;
import org.json.JSONObject;

public final class TelemetryParser {

    private TelemetryParser() {
    }

    public static ApplianceTelemetry parse(String payload)
            throws JSONException {

        if (payload == null || payload.trim().isEmpty()) {
            throw new JSONException("Empty telemetry payload");
        }

        JSONObject json = new JSONObject(payload);
        ApplianceTelemetry telemetry = new ApplianceTelemetry();

        telemetry.deviceId = firstString(json, "id", "device_id");

        if (!"AP001".equals(telemetry.deviceId)) {
            throw new JSONException(
                    "Missing or unexpected device ID: " + telemetry.deviceId
            );
        }

        telemetry.simulated = json.optBoolean("simulated", false);
        telemetry.pzemValid = json.optBoolean("pzem_valid", true);

        telemetry.voltage = firstNumber(json, "vrms", "voltage");
        telemetry.current = firstNumber(json, "irms", "current");
        telemetry.realPower = firstNumber(json, "real_w", "power", "active_power");
        telemetry.apparentPower = firstNumber(json, "apparent_va", "apparent_power");
        telemetry.powerFactor = firstNumber(json, "pf", "power_factor");
        telemetry.frequency = firstNumber(json, "freq_hz", "frequency");
        telemetry.energyWh = firstNumber(json, "energy_wh", "energy");

        if (telemetry.apparentPower == null
                && telemetry.voltage != null
                && telemetry.current != null) {
            telemetry.apparentPower =
                    telemetry.voltage * telemetry.current;
        }

        Double leakageMa = firstNumber(json, "leak_ma", "leakage_ma");
        if (leakageMa != null) {
            telemetry.leakageCurrent = leakageMa;
        } else {
            Double leakageA = firstNumber(
                    json, "leakage_a", "leakage_current", "leak_a"
            );
            telemetry.leakageCurrent =
                    leakageA == null ? null : leakageA * 1000.0;
        }

        telemetry.temperature = firstNumber(
                json, "temperature_c", "temperature"
        );

        telemetry.relayKnown = json.has("relay") && !json.isNull("relay");
        telemetry.relayOn = json.optBoolean("relay", false);
        telemetry.buzzerKnown = json.has("buzzer") && !json.isNull("buzzer");
        telemetry.buzzerOn = json.optBoolean("buzzer", false);

        telemetry.loadState = firstString(
                json, "load_state", "relay_state"
        );
        if (telemetry.loadState.isEmpty() && telemetry.relayKnown) {
            telemetry.loadState = telemetry.relayOn ? "ON" : "OFF";
        }
        if (telemetry.loadState.isEmpty()) {
            telemetry.loadState = "UNKNOWN";
        }

        telemetry.fault = firstString(
                json, "error", "fault", "alarm", "fault_status"
        );
        if (telemetry.fault.isEmpty()) {
            telemetry.fault = "Not reported";
        }

        telemetry.receivedAt = System.currentTimeMillis();

        validateRange(telemetry.voltage, 0.0, 300.0, "voltage");
        validateRange(telemetry.current, 0.0, 200.0, "current");
        validateRange(telemetry.realPower, 0.0, 60000.0, "real power");
        validateRange(telemetry.apparentPower, 0.0, 60000.0, "apparent power");
        validateRange(telemetry.powerFactor, 0.0, 1.05, "power factor");
        validateRange(telemetry.frequency, 0.0, 100.0, "frequency");
        validateRange(telemetry.energyWh, 0.0, Double.MAX_VALUE, "energy");
        validateRange(telemetry.leakageCurrent, 0.0, 10000.0, "leakage current");
        validateRange(telemetry.temperature, -50.0, 200.0, "temperature");

        return telemetry;
    }

    private static String firstString(JSONObject json, String... keys) {
        for (String key : keys) {
            if (json.has(key) && !json.isNull(key)) {
                Object value = json.opt(key);
                if (value instanceof String
                        || value instanceof Number
                        || value instanceof Boolean) {
                    return String.valueOf(value).trim();
                }
            }
        }
        return "";
    }

    private static Double firstNumber(
            JSONObject json, String... keys) throws JSONException {

        for (String key : keys) {
            if (!json.has(key) || json.isNull(key)) {
                continue;
            }

            Object value = json.opt(key);
            double number;

            if (value instanceof Number) {
                number = ((Number) value).doubleValue();
            } else if (value instanceof String) {
                String text = ((String) value).trim();
                if (text.isEmpty()) {
                    continue;
                }
                try {
                    number = Double.parseDouble(text);
                } catch (NumberFormatException exception) {
                    throw new JSONException("Invalid numeric field: " + key);
                }
            } else {
                throw new JSONException("Invalid numeric field: " + key);
            }

            if (!Double.isFinite(number)) {
                throw new JSONException("Non-finite numeric field: " + key);
            }
            return number;
        }
        return null;
    }

    private static void validateRange(
            Double value,
            double minimum,
            double maximum,
            String field) throws JSONException {

        if (value != null && (value < minimum || value > maximum)) {
            throw new JSONException(
                    "Out-of-range " + field + ": " + value
            );
        }
    }
}
