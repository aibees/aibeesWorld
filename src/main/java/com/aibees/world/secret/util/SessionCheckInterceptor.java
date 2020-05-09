package com.aibees.world.secret.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionCheckInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String uri = request.getRequestURI();
		String query = request.getQueryString();
		String path = uri;
		
		if(request.getMethod().equalsIgnoreCase("get")) {
			path = uri + "?" + query;
		}
		
		HttpSession session = request.getSession(false);
		
		if(session == null) {
			// Permission check with session in url access to private space
			session = request.getSession(true);
			session.setAttribute("dest", path);
			response.sendRedirect("/loginRedirect.do");
			return false;
		} else if(session.getAttribute("loginUser") == null) {
			// Normal access in main stage
			session.setAttribute("dest", path);
			response.sendRedirect("/loginForm.do");
			return false;
		}
		
		return true;
	}
}
