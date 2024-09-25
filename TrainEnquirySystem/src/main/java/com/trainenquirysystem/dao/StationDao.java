package com.trainenquirysystem.dao;

import java.util.List;

import com.trainenquirysystem.pojo.Station;

public interface StationDao {

	
	    // Method to add a new station
	    Boolean addStation(Station station);

	    // Method to get a station by its code
	    Station getStationByCode(String stationCode);

	    // Method to get all stations
	    List<Station> getAllStations();

	    // Method to update station details
	    void updateStation(Station station);

	    // Method to delete a station by its code
	    void deleteStationByCode(String stationCode);
	}


