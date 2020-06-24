package entities;

import java.sql.Timestamp;

public class Weather {
    private int id;
    private String location = "";
	private Timestamp datetime = new Timestamp(System.currentTimeMillis());
    private byte air_temperature;
    private byte soil_temperature;
    private byte air_humidity;
    private byte soil_humidity;
    private byte light_intensity;

	public Weather(int id, String location, Timestamp datetime, byte air_temperature, byte soil_temperature, byte air_humidity, byte soil_humidity, byte light_intensity) {
		this.id = id;
		this.location = location;
		this.datetime = datetime;
		this.air_temperature = air_temperature;
		this.soil_temperature = soil_temperature;
		this.air_humidity = air_humidity;
		this.soil_humidity = soil_humidity;
		this.light_intensity = light_intensity;
	}

	public Weather() {

    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Timestamp getDatetime() {
		return datetime;
	}

	public void setDatetime(Timestamp datetime) {
		this.datetime = datetime;
	}

	public byte getAir_temperature() {
		return air_temperature;
	}

	public void setAir_temperature(byte air_temperature) {
		this.air_temperature = air_temperature;
	}

	public byte getSoil_temperature() {
		return soil_temperature;
	}

	public void setSoil_temperature(byte soil_temperature) {
		this.soil_temperature = soil_temperature;
	}

	public byte getAir_humidity() {
		return air_humidity;
	}

	public void setAir_humidity(byte air_humidity) {
		this.air_humidity = air_humidity;
	}

	public byte getSoil_humidity() {
		return soil_humidity;
	}

	public void setSoil_humidity(byte soil_humidity) {
		this.soil_humidity = soil_humidity;
	}

	public byte getLight_intensity() {
		return light_intensity;
	}

	public void setLight_intensity(byte light_intensity) {
		this.light_intensity = light_intensity;
	}
}
