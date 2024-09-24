package com.trainenquirysystem.dao;

import java.util.List;

import com.trainenquirysystem.pojo.Train;

public interface TrainDao {
	
    boolean addTrain(Train train);
    Train getTrain(String trainNumber);
    List<Train> getAllTrains();
    void updateTrain(Train train);
    void deleteTrain(String trainNumber);
}