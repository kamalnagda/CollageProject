package com.trainenquirysystem.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.trainenquirysystem.connection.DbConnection;
import com.trainenquirysystem.dao.StationDao;
import com.trainenquirysystem.pojo.Station;

public class StationDaoImpl implements StationDao {
	
	@Override
	public Boolean addStation(Station station) {
		try (Connection con = DbConnection.getConnection()) {
			PreparedStatement ps = con.prepareStatement("Insert Into Station (stationCode, stationName, location, state) values(?,?,?,?)");
			ps.setString(1, station.getStationCode());
			ps.setString(2, station.getStationName());
			ps.setString(3, station.getLocation());
			ps.setString(4, station.getState());
			
			int count = ps.executeUpdate();
			System.out.println(count);
			if (count > 0) {
				return true;
			} else {
				return false;
			}

		} catch (SQLException | NullPointerException e) {
			e.printStackTrace();
			return false;
		}
		
		
	}

	@Override
	public Station getStationByCode(String stationCode) {
		
		return null;
		
		
	}

	@Override
	public List<Station> getAllStations() {
		return null;
	
		}

	@Override
	public void updateStation(Station updatedStation) {
			
	
		
	}

	@Override
	public void deleteStationByCode(String stationCode) {
	
		
	}

	
	
}
