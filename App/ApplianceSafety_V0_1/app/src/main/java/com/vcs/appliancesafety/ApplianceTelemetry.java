
package com.vcs.appliancesafety;

public class ApplianceTelemetry {

    public String deviceId;
    public boolean simulated;

    public Double voltage;
    public Double current;
    public Double realPower;
    public Double apparentPower;
    public Double powerFactor;
    public Double frequency;
    public Double energyWh;
    public Double leakageCurrent;

    public String loadState;
    public String fault;

    public long receivedAt;

    public ApplianceTelemetry() {
        deviceId = "";
        simulated = false;

        voltage = null;
        current = null;
        realPower = null;
        apparentPower = null;
        powerFactor = null;
        frequency = null;
        energyWh = null;
        leakageCurrent = null;

        loadState = "UNKNOWN";
        fault = "Not reported";

        receivedAt = System.currentTimeMillis();
    }
}
