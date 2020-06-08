package com.aibees.world.utils;

import java.util.HashMap;

import com.aibees.world.user.model.vo.UserVO;

public class ObjectUtils {

	public HashMap<String, Object> UserVoMapping(UserVO userVo) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		
		result.put("id", userVo.getId());
		result.put("pwd", userVo.getPwd());
		result.put("name", userVo.getName());
		result.put("role", userVo.getRole());
		result.put("phone", userVo.getPhone());
		
		return result;
	}
}
