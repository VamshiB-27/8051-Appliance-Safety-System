package com.vcs.appliancesafety;

public class ApplianceTelemetry {

    public String deviceId;
    public boolean simulated;
    public boolean pzemValid;
    public boolean relayOn;
    public boolean relayKnown;
    public boolean buzzerOn;
    public boolean buzzerKnown;

    public Double voltage;
    public Double current;
    public Double realPower;
    public Double apparentPower;
    public Double powerFactor;
    public Double frequency;
    public Double energyWh;
    public Double leakageCurrent;
    public Double temperature;

    public String loadState;
    public String fault;

    public long receivedAt;

    public ApplianceTelemetry() {
        deviceId = "";
        simulated = false;
        pzemValid = false;
        relayOn = false;
        relayKnown = false;
        buzzerOn = false;
        buzzerKnown = false;

        voltage = null;
        current = null;
        realPower = null;
        apparentPower = null;
        powerFactor = null;
        frequency = null;
        energyWh = null;
        leakageCurrent = null;
        temperature = null;

        loadState = "UNKNOWN";
        fault = "Not reported";
        receivedAt = System.currentTimeMillis();
    }
}
