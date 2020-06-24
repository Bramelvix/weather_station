package interfaces;

import entities.Weather;

import java.util.List;

public interface WeatherInterface {
    List<Weather> getAll();
    void delete(int id);
    Weather get(int id);
	void add(Weather weather);

}
