
package com.klef.ep.models;
import java.io.Serializable;

public class TableCounts implements Serializable{
    private int doctorCount;
    private int patientCount;
    private int receptionistCount;

    public TableCounts(int doctorCount, int patientCount, int receptionistCount) {
        this.doctorCount = doctorCount;
        this.patientCount = patientCount;
        this.receptionistCount = receptionistCount;
    }

    // Getters and setters (optional, based on your use case)
    public int getDoctorCount() {
        return doctorCount;
    }

    public void setDoctorCount(int doctorCount) {
        this.doctorCount = doctorCount;
    }

    public int getPatientCount() {
        return patientCount;
    }

    public void setPatientCount(int patientCount) {
        this.patientCount = patientCount;
    }

    public int getReceptionistCount() {
        return receptionistCount;
    }

    public void setReceptionistCount(int receptionistCount) {
        this.receptionistCount = receptionistCount;
    }
}
