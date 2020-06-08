package com.aibees.world.secret.model;

import java.util.List;

public interface PrivateDao {
	
	public List<Object> selectAll(String obj);
	
	public int insertDiary(Object obj);

}
