package com.aibees.world.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aibees.world.user.model.UserDao;

@Service("UserLoginService")
public class UserLoginServiceImpl implements UserLoginService {

	@Resource(name="UserDao")
	private UserDao dao;
	
	@Override
	public Object LoginService(Object obj) {
		return dao.loginDao(obj);
	}
	
	@Override
	public Object IdCheckService(String id) {
		return dao.idCheckDao(id);
	}
}
