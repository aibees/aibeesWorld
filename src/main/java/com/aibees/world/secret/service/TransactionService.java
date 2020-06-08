package com.aibees.world.secret.service;

import org.springframework.stereotype.Service;

@Service
public interface TransactionService {

	public int insertData(Object obj);
	
	public int updateData(Object obj);
	
	public int deleteData(Object obj);
}
