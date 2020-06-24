package controllers;


import entities.Weather;
import repositories.WeatherRepository;
import javax.ws.rs.*;
import java.util.List;

@Path("weather")
public class WeatherController {
    private final WeatherRepository repo;

    public WeatherController() {
        repo = new WeatherRepository();
    }

    @GET
    @Path("/{id}")
    @Produces("application/json")
    public Weather get(@PathParam("id") int id) {
        return repo.get(id);
    }

    @GET
    @Produces("application/json")
    public List<Weather> getAll() {
        return repo.getAll();
    }

    @POST
    @Consumes("application/json")
    @Produces("application/json")
    public void add(Weather weather) {
    	repo.add(weather);
    }

    @DELETE
    @Path("/{id}")
    @Produces("application/json")
    public void delete(@PathParam("id") int id) {
    	repo.delete(id);
    }

}
