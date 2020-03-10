package com.aibees.world.user.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionCheckInterceptor extends HandlerInterceptorAdapter {
	
	private static final Logger logger = LoggerFactory.getLogger(SessionCheckInterceptor.class);
	/*
	 * if return false, request is done without execute Controller layer.
	 * else (return true), go to Controller layer soon.
	 * */
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		if(session.getAttribute("loginUser") == null) {
			logger.info("Login Session data is Null");
			
			// request URI & Query for redirecting after Login process
			String uri = request.getRequestURI();
			String query = request.getQueryString();
			String path = uri;
			
			if(request.getMethod().equalsIgnoreCase("get")) {
				path = uri + "?" + query;
			}
			
			session.setAttribute("dest", path);
			response.sendRedirect("/login.do");
			return false;
		}
		return true;
	}
}
