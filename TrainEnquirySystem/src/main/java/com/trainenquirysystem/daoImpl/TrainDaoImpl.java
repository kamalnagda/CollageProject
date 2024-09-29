package com.trainenquirysystem.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.trainenquirysystem.connection.DbConnection;
import com.trainenquirysystem.dao.TrainDao;
import com.trainenquirysystem.pojo.Train;

public class TrainDaoImpl implements TrainDao {

	@Override
	public boolean addTrain(Train train) {
		try (Connection con = DbConnection.getConnection()) {
			PreparedStatement ps = con.prepareStatement("Insert Into Train (train_number , train_name , from_station , "
					+ "to_station ,reached_time , departure_time , train_type, status) values(?,?,?,?,?,?,?,?)");
			ps.setString(1, train.getTrainNumber());
			ps.setString(2, train.getTrainName());
			ps.setString(3, train.getFromStation());
			ps.setString(4, train.getToStation());
			ps.setString(5, train.getReachedTime());
			ps.setString(6, train.getDepartureTime());
			ps.setString(7, train.getTrainType());
			ps.setBoolean(8, true);

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
			PreparedStatement ps = con.prepareStatement("SELECT * FROM Train WHERE train_number= ? and status = ?");
			ps.setString(1,trainNumber);
			ps.setBoolean(2,true);
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				
                train.setTrainId(rs.getString("train_id"));
                train.setTrainNumber(rs.getString("train_number"));
                train.setTrainName(rs.getString("train_name"));
                train.setFromStation(rs.getString("from_station"));
                train.setToStation(rs.getString("to_station"));
                train.setReachedTime(rs.getString("reached_time"));
                train.setDepartureTime(rs.getString("departure_time"));
                train.setTrainType(rs.getString("train_type"));
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
		List<Train> trains = new ArrayList<>();
		try (Connection con = DbConnection.getConnection()) {
			PreparedStatement ps = con.prepareStatement("SELECT * FROM Train WHERE status = true");
			ResultSet rs = ps.executeQuery();
			
            while (rs.next()) {
                Train train = new Train();
                train.setTrainId(rs.getString("train_id"));
                train.setTrainNumber(rs.getString("train_number"));
                train.setTrainName(rs.getString("train_name"));
                train.setFromStation(rs.getString("from_station"));
                train.setToStation(rs.getString("to_station"));
                train.setReachedTime(rs.getString("reached_time"));
                train.setDepartureTime(rs.getString("departure_time"));
                train.setTrainType(rs.getString("train_type"));
                
                trains.add(train);
            }

            return trains;

		} catch (SQLException | NullPointerException e) {
			e.printStackTrace();
			return null;
		}
		
		
	}

	@Override
	public boolean updateTrain(Train train) {
		try (Connection con = DbConnection.getConnection()) {
			PreparedStatement ps = con.prepareStatement("UPDATE Train SET train_number = ?, train_name = ?, from_station = ?, to_station = ?, reached_time = ?,"
					+ " departure_time = ?, train_type = ? WHERE train_id = ?");
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
	public boolean deleteTrain(String trainId) {
		try (Connection con = DbConnection.getConnection()) {
			PreparedStatement ps = con.prepareStatement("UPDATE Train SET status = ? WHERE train_id = ?");
			ps.setBoolean(1, false);
			ps.setString(2, trainId);

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

}
