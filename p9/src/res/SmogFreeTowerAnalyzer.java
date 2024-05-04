package res;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.DB;

public class SmogFreeTowerAnalyzer {

    public static void main(String[] args) {
        // Retrieve Smog Free Tower specifications and location details
        double latitude = 28.6139; // Replace with the actual latitude
        double longitude = 77.209; // Replace with the actual longitude

        // Connect to the database or retrieve data from another source
       Connection connection = DB.getConnection();

        // Retrieve tower specifications based on location
        SmogFreeTowerSpecifications towerSpecifications = getTowerSpecifications(latitude, longitude, connection);

        if (towerSpecifications != null) {
            // Calculate parameters
            double airPurificationRate = calculateAirPurificationRate(towerSpecifications);
            double airIntake = calculateAirIntake(towerSpecifications);
            double wasteParticlesCollectedPerHour = calculateWasteParticlesCollectedPerHour(towerSpecifications);

            // Print or use the calculated parameters
            System.out.println("Air Purification Rate: " + airPurificationRate + " m³/h");
            System.out.println("Air Intake: " + airIntake + " m³/h");
            System.out.println("Waste Particles Collected per Hour: " + wasteParticlesCollectedPerHour + " particles/h");
        } else {
            System.out.println("Unable to retrieve tower specifications.");
        }

        // Close the database connection if used
        // Example: connection.close();
    }

    // Method to retrieve tower specifications based on location
    private static SmogFreeTowerSpecifications getTowerSpecifications(double latitude, double longitude, Connection connection) {
    	String latitude_1 = Double.toString(latitude);
    	String longitude_1 = Double.toString(longitude);
    	System.out.println(latitude_1);
    	System.out.println(longitude_1);
    	     String altitude = null;
    	   
    	     String pm25 = null;
    	     
    	     String pm10 = null;
    	    
    	     String no2 = null;
    	     
    	     String so2 = null;
    	     
    	     String o3 = null;
    	    
    	     String co = null;
    	     
    	     String temperature = null;
    	     
    	     String humidity = null;
    	     
    	     String windSpeed = null;
    	     
    	     String populationDensity = null;
    	     
    	     String trafficDensity = null;
    	     
    	     String industrialActivity = null;
    	     String landUse = null;
    	     String environmentalImpact = null;
    	     String regulatoryCompliance = null;
    	     String costEstimate = null;
    	     
    	     String publicOpinion = null;
    	
    	
    	
    	     try {
    	String query = "SELECT * FROM city_data where Latitude= '"+latitude_1+"' AND Longitude= '"+longitude_1+"' ";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        ResultSet rs = preparedStatement.executeQuery();
         
			while (rs.next()){
				 System.out.println(rs.getString("Altitude"));
				altitude = rs.getString("Altitude");
				pm25 = rs.getString("PM25");
				pm10 = rs.getString("PM10");
				no2 = rs.getString("NO2");
				so2 = rs.getString("SO2");
				o3 = rs.getString("O3");
				co = rs.getString("CO");
				temperature = rs.getString("Temperature");
				humidity = rs.getString("Humidity");
				windSpeed = rs.getString("WindSpeed");
				populationDensity = rs.getString("PopulationDensity");
				trafficDensity = rs.getString("TrafficDensity");
				industrialActivity = rs.getString("IndustrialActivity");
				landUse = rs.getString("LandUse");
				environmentalImpact = rs.getString("EnvironmentalImpact");
				regulatoryCompliance = rs.getString("RegulatoryCompliance");
				costEstimate = rs.getString("CostEstimate");
				publicOpinion = rs.getString("PublicOpinion");
			
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       
    	     double altitude1 = Double.parseDouble(altitude);
    	     double pm25_1 = Double.parseDouble(pm25);
    	     double pm10_1 = Double.parseDouble(pm10);
    	     double no2_1 = Double.parseDouble(no2);
    	     double so2_1 = Double.parseDouble(so2);
    	     double o3_1 = Double.parseDouble(o3);
    	     double co_1 = Double.parseDouble(co);
    	     double temperature_1 = Double.parseDouble(temperature);
    	     double humidity_1 = Double.parseDouble(humidity);
    	     double windSpeed_1 = Double.parseDouble(windSpeed);
    	     double populationDensity_1 = Double.parseDouble(populationDensity);
    	     double trafficDensity_1 = Double.parseDouble(trafficDensity);
    	     double costEstimate_1 = Double.parseDouble(costEstimate);
        return new SmogFreeTowerSpecifications(latitude, longitude, altitude1, pm25_1, pm10_1, no2_1, so2_1, o3_1, co_1, temperature_1, humidity_1, windSpeed_1, populationDensity_1, trafficDensity_1,
                industrialActivity, landUse, environmentalImpact, regulatoryCompliance, costEstimate_1, publicOpinion);
    }

    // Methods to calculate parameters
    private static double calculateAirPurificationRate(SmogFreeTowerSpecifications specifications) {
        // Implement logic to calculate air purification rate based on specifications
        return specifications.getPM25() + specifications.getPM10() + specifications.getNO2()
                + specifications.getSO2() + specifications.getO3() + specifications.getCO();
    }

    private static double calculateAirIntake(SmogFreeTowerSpecifications specifications) {
        // Implement logic to calculate air intake based on specifications
        return specifications.getWindSpeed() * specifications.getPopulationDensity();
    }

    private static double calculateWasteParticlesCollectedPerHour(SmogFreeTowerSpecifications specifications) {
        // Implement logic to calculate waste particles collected per hour based on specifications
        return specifications.getIndustrialActivity().equalsIgnoreCase("High") ? 1000 : 500;
    }
}

