package com.aibees.world.user.model;

public interface UserDao {
	public Object loginDao(Object obj);
	
	public Object idCheckDao(String id);
	
	public int insertMainDao(Object obj);
	
	public int insertDetailDao(Object obj);
}
