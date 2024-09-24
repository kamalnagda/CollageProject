package com.trainenquirysystem.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {

	public static Connection getConnection() {
		
		try {
			Class.forName(DbDetails.DBDRIVER);
			Connection con = DriverManager.getConnection(DbDetails.CONSTR,DbDetails.USERNAME,DbDetails.PASSWORD);
			return con ;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
