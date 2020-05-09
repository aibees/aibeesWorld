package com.aibees.world.user.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import com.aibees.world.user.model.UserDao;

@Service("UserUpdateService")
public class UserUpdateServiceImpl implements UserUpdateService {

	private static final Logger logger = LoggerFactory.getLogger(UserUpdateServiceImpl.class);
	
	@Resource(name="UserDao")
	private UserDao dao;
	
	@Override
	public int InsertService(Object obj) {
		logger.debug("InsertUpdate Service");
		return dao.insertDao(obj);
	}
	
	@Override
	public int DeleteService(Object obj) {
		// TODO Auto-generated method stub
		return 0;
	}
}
