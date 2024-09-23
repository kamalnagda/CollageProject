package com.trainenquirysystem.dao;
import com.trainenquirysystem.pojo.User;
import java.util.List;

public interface UserDao {
	
	    // Method to add a new user
	    void addUser(User user);

	    // Method to get a user by their ID
	    User getUserById(int userId);

	    // Method to get a user by their username
	    User getUserByUsername(String username);

	    // Method to get all users
	    List<User> getAllUsers();

	    // Method to update user details
	    void updateUser(User user);

	    // Method to delete a user by their ID
	    void deleteUserById(int userId);
	}



