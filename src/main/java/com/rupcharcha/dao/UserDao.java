package com.rupcharcha.dao;

import java.util.List;

import com.rupcharcha.entity.User;

public interface UserDao {

	public int registerUser(User user);
	
	public void deleteDataByID(int id);
	
	public User getDataById(int id);
	
	public List<User> getAllData(User user);
	
	public User loginUser(String email, String password);
	
	
	
}
