package com.aibees.world.utils;

import org.springframework.context.ApplicationContext;

import com.aibees.world.common.ApplicationContextProvider;

public class BeanUtils {

	public static Object getBean(String id) {
		ApplicationContext applicationContext = ApplicationContextProvider.getApplicationContext();
		
		if(applicationContext == null) {
			throw new NullPointerException("ApplicationContext Initialization Failed");
		}
		
		return applicationContext.getBean(id);
	}
	
}
