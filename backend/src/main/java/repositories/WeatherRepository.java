package repositories;

import entities.Weather;
import interfaces.WeatherInterface;
import util.SqlConnection;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class WeatherRepository implements WeatherInterface {
	private final SqlConnection sql;

	public WeatherRepository() {
		Properties prop = getProps("application.properties");
		if (prop == null) {
			System.err.println("Error reading config file");
			System.exit(1);
		}
		sql = new SqlConnection(prop.getProperty("db.url"), prop.getProperty("db.user"), prop.getProperty("db.password"));

	}

	private static Properties getProps(String file) {
		try (InputStream input = WeatherRepository.class.getClassLoader().getResourceAsStream(file)) {
			Properties prop = new Properties();
			prop.load(input);
			return prop;
		} catch (IOException ex) {
			ex.printStackTrace();
		}
		return null;
	}

    @Override
    public List<Weather> getAll() {
		List<Weather> results = new ArrayList<>();
    	try {
			Connection connection = sql.getConnection();
			PreparedStatement statement = connection.prepareStatement(
				"SELECT id, location, datetime, air_temperature, soil_temperature, air_humidity, soil_humidity, light_intensity FROM weather_station"
			);
			statement.execute();
			ResultSet set = statement.getResultSet();
			while (set.next()) {
				results.add(new Weather(
					set.getInt(1),
					set.getString(2),
					set.getTimestamp(3),
					set.getByte(4),
					set.getByte(5),
					set.getByte(6),
					set.getByte(7),
					set.getByte(8)
				));
			}
			sql.close();
		} catch (SQLException e) {
    		e.printStackTrace();
		}
        return results;
    }

    @Override
    public void delete(int id) {
		try {
			Connection connection = sql.getConnection();
			PreparedStatement statement = connection.prepareStatement(
				"DELETE FROM weather_station WHERE id =?"
			);
			statement.setInt(1, id);
			statement.execute();
			sql.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
    }

   @Override
	public Weather get(int id) {
		Weather weather = null;
		try {
			Connection connection = sql.getConnection();
			PreparedStatement statement = connection.prepareStatement(
			   "SELECT id, location, datetime, air_temperature, soil_temperature, air_humidity, soil_humidity, light_intensity FROM weather_station WHERE id=?"
			);
			statement.setInt(1, id);
			statement.execute();
			ResultSet set = statement.getResultSet();
			if (set.next()) {
				weather = new Weather(
					set.getInt(1),
					set.getString(2),
					set.getTimestamp(3),
					set.getByte(4),
					set.getByte(5),
					set.getByte(6),
					set.getByte(7),
					set.getByte(8)
				);
			}
			sql.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return weather;
   }

   @Override
	public void add(Weather weather) {
		try {
			Connection connection = sql.getConnection();
			PreparedStatement statement = connection.prepareStatement(
				"INSERT INTO weather_station (location, air_temperature, soil_temperature, air_humidity, soil_humidity, light_intensity) VALUES (?, ?, ?, ?, ?, ?)"
			);
			statement.setString(1, weather.getLocation());
			statement.setByte(2, weather.getAir_temperature());
			statement.setByte(3, weather.getSoil_temperature());
			statement.setByte(4, weather.getAir_humidity());
			statement.setByte(5, weather.getSoil_humidity());
			statement.setByte(6, weather.getLight_intensity());
			statement.execute();
			sql.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
