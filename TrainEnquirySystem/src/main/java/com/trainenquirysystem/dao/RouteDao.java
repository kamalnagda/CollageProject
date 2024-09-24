package com.trainenquirysystem.dao;
import com.trainenquirysystem.pojo.Route;
import java.util.List;

public interface RouteDao {
	
  // Method to add a new route
	    void addRoute(Route route);

	    // Method to get a route by its route ID
	    Route getRouteById(int routeId);

	    // Method to get all routes
	    List<Route> getAllRoutes();

	    // Method to update route details
	    void updateRoute(Route route);

	    // Method to delete a route by its route ID
	    void deleteRouteById(int routeId);

	    // Method to get all routes by train ID
	    List<Route> getRoutesByTrainId(int trainId);

	    // Method to get all routes by source and destination stations
	    List<Route> getRoutesByStations(String sourceStation, String destinationStation);
	}


