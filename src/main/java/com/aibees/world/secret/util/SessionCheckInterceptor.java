package com.aibees.world.secret.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionCheckInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession(false);
		
		if(session.getAttribute("loginUser") == null) {
			String uri = request.getRequestURI();
			String query = request.getQueryString();
			String path = uri;
			
			if(request.getMethod().equalsIgnoreCase("get")) {
				path = uri + "?" + query;
			}
			
			session.setAttribute("dest", path);
			response.sendRedirect("/loginForm.do");
			return false;
		}
		
		return true;
	}
}
