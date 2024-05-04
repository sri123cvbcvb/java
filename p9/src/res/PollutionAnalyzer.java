package res;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import connection.DB;
public class PollutionAnalyzer {

    private static final String JDBC_URL = "jdbc:mysql://your-mysql-host:3306/your-database";
    private static final String USER = "your-username";
    private static final String PASSWORD = "your-password";
    private static final int status = 0;
    public void main(String email) {
        try {
        	System.out.println("main:"+email);
        	String email1 = email;
            Connection connection = DB.getConnection();

            // Retrieve pollution data from the database
            ResultSet resultSet = retrievePollutionData(connection,email1);

            // Prioritize locations based on pollution
            prioritizeLocations(resultSet);

            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static ResultSet retrievePollutionData(Connection connection, String email1) throws SQLException {
    	System.out.println("retrievePollutionData:"+email1);
        String query = "SELECT * FROM city_data where email= '"+email1+"' ";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        return preparedStatement.executeQuery();
      
    }

    private static void prioritizeLocations(ResultSet resultSet) throws SQLException {
        while (resultSet.next()) {
            // Retrieve pollution parameters for each location
            double pm25 = resultSet.getDouble("PM25");
            double pm10 = resultSet.getDouble("PM10");
            double no2 = resultSet.getDouble("NO2");
            double so2 = resultSet.getDouble("SO2");
            double o3 = resultSet.getDouble("O3");
            double co = resultSet.getDouble("CO");

            // Calculate a pollution score (You can customize this scoring mechanism)
            double pollutionScore = pm25 + pm10 + no2 + so2 + o3 + co;

            // Print or store the location and its pollution score
            System.out.println("Location: " + resultSet.getString("Latitude") + ", " + resultSet.getString("Longitude") +
                    " | Pollution Score: " + pollutionScore);
            Connection con1 = DB.getConnection();
            String query1 = "update city_data set TrafficDensity= '"+pollutionScore+"' WHERE Latitude= '"+resultSet.getString("Latitude")+"' AND Longitude= '"+resultSet.getString("Longitude")+"' ";
            PreparedStatement preparedStatement1 = con1.prepareStatement(query1);
             preparedStatement1.executeUpdate();
        }
     
    }
}
