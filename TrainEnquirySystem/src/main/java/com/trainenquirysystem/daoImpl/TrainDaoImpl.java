package com.trainenquirysystem.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.trainenquirysystem.connection.DbConnection;
import com.trainenquirysystem.dao.TrainDao;
import com.trainenquirysystem.pojo.Train;

public class TrainDaoImpl implements TrainDao {

	@Override
	public boolean addTrain(Train train) {
		try (Connection con = DbConnection.getConnection()) {
			PreparedStatement ps = con.prepareStatement("Insert Into Train (trainnumber , trainname , fromstation , "
					+ "tostation ,reachedtime , departuretime , traintype) values(?,?,?,?,?,?,?)");
			ps.setString(1, train.getTrainNumber());
			ps.setString(2, train.getTrainName());
			ps.setString(3, train.getFromStation());
			ps.setString(4, train.getToStation());
			ps.setString(5, train.getReachedTime());
			ps.setString(6, train.getDepartureTime());
			ps.setString(7, train.getTrainType());

			int count = ps.executeUpdate();
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
	public Train getTrain(String trainNumber) {
		Train train = new Train();
		try (Connection con = DbConnection.getConnection()) {
			PreparedStatement ps = con.prepareStatement("SELECT * FROM Train WHERE 'trainNumber'= ?");
			ps.setString(1,trainNumber);
			ResultSet rs = ps.executeQuery();
			
			if (rs.isBeforeFirst()) {
				
				train.setTrainId(rs.getString("traiId"));
				train.setTrainNumber(rs.getString("traiNumber"));
				train.setTrainName(rs.getString("trainName"));
				train.setFromStation(rs.getString("fromStation"));
				train.setToStation(rs.getString("toStation"));
				train.setDepartureTime(rs.getString("departureTime"));
				train.setReachedTime(rs.getString("reachedTime"));
				train.setTrainType(rs.getString("trainType"));
				return train;
			}
			else
			{
				return null;
			}
			

		} catch (SQLException | NullPointerException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Train> getAllTrains() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateTrain(Train train) {
		try (Connection con = DbConnection.getConnection()) {
			PreparedStatement ps = con.prepareStatement("UPDATE Train SET trainnumber = ?, trainname = ?, fromstation = ?, tostation = ?, reachedtime = ?,"
					+ " departuretime = ?, traintype = ? WHERE trainnid = ?");
			ps.setString(1, train.getTrainNumber());
			ps.setString(2, train.getTrainName());
			ps.setString(3, train.getFromStation());
			ps.setString(4, train.getToStation());
			ps.setString(5, train.getReachedTime());
			ps.setString(6, train.getDepartureTime());
			ps.setString(7, train.getTrainType());
			ps.setString(8, train.getTrainId());

			int count = ps.executeUpdate();
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
	public void deleteTrain(String trainNumber) {
		// TODO Auto-generated method stub
		
	}

}
