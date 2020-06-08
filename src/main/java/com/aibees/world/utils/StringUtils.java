package com.aibees.world.utils;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;

public class StringUtils {
	
	public String ToJson(Object vo) {
		String ret = new String();
		Map<String, String> voMapper = new HashMap<String, String>();
		
		Field[] fields = vo.getClass().getDeclaredFields();
		
		for(Field f : fields) {
			f.setAccessible(true);
			
			try {
				voMapper.put(f.getName(), (String)f.get(vo));
			}
			catch(Exception e) {
				ret = e.getMessage();
			}
		}
		JSONObject obj = new JSONObject();
		for(Map.Entry<String, String> e : voMapper.entrySet()) {
			obj.put(e.getKey(), e.getValue());
		}
		
		ret = obj.toJSONString();
		return ret;
	}
}
