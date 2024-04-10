package com.rupcharcha.dao;

import java.util.List;

import com.rupcharcha.entity.Matching;
import com.rupcharcha.entity.User;

public interface MatchDao {
	
	public int saveData(Matching matching);
	
	public void deleteData(int id);
	
	public Matching getDataById(int id);
	
	public List<Matching> getAllaDataList(User user);
}
