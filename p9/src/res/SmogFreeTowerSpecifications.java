package res;

import java.sql.ResultSet;

public class SmogFreeTowerSpecifications {
    private double latitude;
    private double longitude;
    private double altitude;
    private double pm25;
    private double pm10;
    private double no2;
    private double so2;
    private double o3;
    private double co;
    private double temperature;
    private double humidity;
    private double windSpeed;
    private double populationDensity;
    private double trafficDensity;
    private String industrialActivity;
    private String landUse;
    private String environmentalImpact;
    private String regulatoryCompliance;
    private double costEstimate;
    private String publicOpinion;

    public SmogFreeTowerSpecifications(double latitude, double longitude, double altitude, double pm25, double pm10,
            double no2, double so2, double o3, double co, double temperature, double humidity, double windSpeed,
            double populationDensity, double trafficDensity, String industrialActivity, String landUse,
            String environmentalImpact, String regulatoryCompliance, double costEstimate, String publicOpinion) {
        this.latitude = latitude;
        this.longitude = longitude;
        this.altitude = altitude;
        this.pm25 = pm25;
        this.pm10 = pm10;
        this.no2 = no2;
        this.so2 = so2;
        this.o3 = o3;
        this.co = co;
        this.temperature = temperature;
        this.humidity = humidity;
        this.windSpeed = windSpeed;
        this.populationDensity = populationDensity;
        this.trafficDensity = trafficDensity;
        this.industrialActivity = industrialActivity;
        this.landUse = landUse;
        this.environmentalImpact = environmentalImpact;
        this.regulatoryCompliance = regulatoryCompliance;
        this.costEstimate = costEstimate;
        this.publicOpinion = publicOpinion;
    }

    // Add getter methods for each parameter

    

	public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    // Add getter methods for other parameters...

    public double getPM25() {
        return pm25;
    }

    public double getPM10() {
        return pm10;
    }

    public double getNO2() {
        return no2;
    }

    public double getSO2() {
        return so2;
    }

    public double getO3() {
        return o3;
    }

    public double getCO() {
        return co;
    }

    public double getTemperature() {
        return temperature;
    }

    public double getHumidity() {
        return humidity;
    }

    public double getWindSpeed() {
        return windSpeed;
    }

    public double getPopulationDensity() {
        return populationDensity;
    }

    public double getTrafficDensity() {
        return trafficDensity;
    }

    public String getIndustrialActivity() {
        return industrialActivity;
    }

    public String getLandUse() {
        return landUse;
    }

    public String getEnvironmentalImpact() {
        return environmentalImpact;
    }

    public String getRegulatoryCompliance() {
        return regulatoryCompliance;
    }

    public double getCostEstimate() {
        return costEstimate;
    }

    public String getPublicOpinion() {
        return publicOpinion;
    }
}
