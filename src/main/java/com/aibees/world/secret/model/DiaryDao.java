package com.aibees.world.secret.model;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.aibees.world.secret.model.vo.DiaryVO;
import com.aibees.world.user.ctrl.UserController;

@Repository("DiaryDao")
public class DiaryDao implements PrivateDao {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	public static final String PREFIX = "com.aibees.world.private";
	
	@Resource(name="sqlSession")
	private SqlSession session;
	
	@Override
	public List<Object> selectAll(String obj) {
		List<Object> diaryList = session.selectList(PREFIX + ".selectAllDiary", obj);
		return diaryList;
	}

	@Override
	public int insertDiary(Object obj) {
		logger.debug(obj.toString());
		int result = session.insert(PREFIX + ".insertDiary", obj);
		logger.debug("session result : {}", result);
		return result;
	}

}
