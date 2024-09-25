package com.trainenquirysystem.pojo;

public class Train {
	private String trainId;
    private String trainNumber;
    private String trainName;
    private String fromStation;
    private String toStation;
    private String departureTime;
    private String reachedTime;
    private String TrainType;
	public String getTrainId() {
		return trainId;
	}
	public void setTrainId(String trainId) {
		this.trainId = trainId;
	}
	public String getTrainNumber() {
		return trainNumber;
	}
	public void setTrainNumber(String trainNumber) {
		this.trainNumber = trainNumber;
	}
	public String getTrainName() {
		return trainName;
	}
	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}
	public String getFromStation() {
		return fromStation;
	}
	public void setFromStation(String fromStation) {
		this.fromStation = fromStation;
	}
	public String getToStation() {
		return toStation;
	}
	public void setToStation(String toStation) {
		this.toStation = toStation;
	}
	public String getDepartureTime() {
		return departureTime;
	}
	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}
	public String getReachedTime() {
		return reachedTime;
	}
	public void setReachedTime(String reachedTime) {
		this.reachedTime = reachedTime;
	}
	public String getTrainType() {
		return TrainType;
	}
	public void setTrainType(String trainType) {
		TrainType = trainType;
	}
    
}
