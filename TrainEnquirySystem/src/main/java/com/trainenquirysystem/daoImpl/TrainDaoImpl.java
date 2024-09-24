package com.trainenquirysystem.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
					+ "tostation ,arrivaltime , departuretime , traintype) values(?,?,?,?,?,?,?)");
			ps.setString(1, train.getTrainNumber());
			ps.setString(2, train.getTrainName());
			ps.setString(3, train.getFromStation());
			ps.setString(4, train.getToStation());
			ps.setString(5, train.getArrivalTime());
			ps.setString(6, train.getDepartureTime());
			ps.setString(7, train.getTrainType());

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
	public Train getTrain(String trainNumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Train> getAllTrains() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateTrain(Train train) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteTrain(String trainNumber) {
		// TODO Auto-generated method stub
		
	}

}
