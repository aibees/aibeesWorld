package com.aibees.world.user.model.sql;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.aibees.world.user.ctrl.UserController;
import com.aibees.world.user.model.UserDao;

@Repository("UserDao")
public class UserDaoImpl implements UserDao {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	public static final String PREFIX = "com.aibees.world.user";
	
	@Resource(name="sqlSession")
	private SqlSession session;

	@Override
	public Object loginDao(Object obj) {
		Object result = session.selectOne(PREFIX + ".login", obj);
		logger.info("session Query result : {}", result);
		return result;
	}
	
	@Override
	public int insertMainDao(Object obj) { // USER TABLE INSERT
		int result = session.insert(PREFIX + ".insert", obj);
		logger.info("session result : {}", result);
		return result;
	}
	
	@Override
	public int insertDetailDao(Object obj) { // USER_DETAIL TABLE INSERT
		int result = session.insert(PREFIX + ".insertDetail", obj);
		logger.info("session detail result : {}", result);
		return result;
	}
}
