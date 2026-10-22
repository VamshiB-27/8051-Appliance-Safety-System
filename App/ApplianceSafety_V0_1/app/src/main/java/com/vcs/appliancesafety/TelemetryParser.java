package com.vcs.appliancesafety;

import org.json.JSONException;
import org.json.JSONObject;

public class TelemetryParser {

    public static ApplianceTelemetry parse(String payload)
            throws JSONException {

        JSONObject json = new JSONObject(payload);

        ApplianceTelemetry telemetry = new ApplianceTelemetry();

        telemetry.deviceId = json.optString("id", "");
        telemetry.simulated = json.optBoolean("simulated", false);

        telemetry.voltage = getNumber(json, "vrms");
        telemetry.current = getNumber(json, "irms");
        telemetry.realPower = getNumber(json, "real_w");
        telemetry.apparentPower = getNumber(json, "apparent_va");
        telemetry.powerFactor = getNumber(json, "pf");
        telemetry.frequency = getNumber(json, "freq_hz");
        telemetry.leakageCurrent = getNumber(json, "leak_ma");

        telemetry.loadState = json.optString("load_state", "UNKNOWN");
        telemetry.fault = json.optString("fault", "Not reported");
        telemetry.receivedAt = System.currentTimeMillis();

        if (telemetry.deviceId.isEmpty()) {
            throw new JSONException("Missing device ID");
        }

        if (!"AP001".equals(telemetry.deviceId)) {
            throw new JSONException("Unexpected device ID");
        }

        return telemetry;
    }

    private static Double getNumber(JSONObject json, String key) {
        if (!json.has(key) || json.isNull(key)) {
            return null;
        }

        Object value = json.opt(key);

        if (value instanceof Number) {
            double number = ((Number) value).doubleValue();

            if (Double.isFinite(number)) {
                return number;
            }
        }

        return null;
    }
}