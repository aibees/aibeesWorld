package com.aibees.world.lab;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LabController {

	private static final Logger logger = LoggerFactory.getLogger(LabController.class);
	
	@RequestMapping("Laboratory.do")
	public String IntroLab(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if(session == null) {
			return "redirect:main.do";
		}
		logger.info("into the Laboratory");
		return "test/labIntro";
	}
	
}
