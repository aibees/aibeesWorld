package com.aibees.world.user.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aibees.world.user.model.UserDao;
import com.aibees.world.user.model.vo.UserVO;

@Service("UserUpdateService")
public class UserUpdateServiceImpl implements UserUpdateService {

	private static final Logger logger = LoggerFactory.getLogger(UserUpdateServiceImpl.class);
	
	@Resource(name="UserDao")
	private UserDao dao;
	
	@Override
	@Transactional
	public int InsertService(Object obj) {
		int tranResult = -1;
		
		logger.debug("InsertUpdate Service");
		/*
		 * 회원가입 Transaction
		 * 1. USER TABLE에 메인 데이터 저장
		 * 2. USER_DETAIL 비밀번호 저장
		 */
		
		try {
			tranResult = dao.insertMainDao(obj);
			tranResult = dao.insertDetailDao(obj);
		}
		catch(Exception e) {
			e.printStackTrace();
			tranResult = 0;
		}
		
		return tranResult;
	}
	
	@Override
	@Transactional
	public int DeleteService(Object obj) {
		// TODO Auto-generated method stub
		return 0;
	}
}
