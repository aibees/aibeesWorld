package com.aibees.world.user.ctrl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aibees.world.user.model.vo.UserDTO;
import com.aibees.world.user.service.UserLoginService;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Resource(name="UserLoginService")
	private UserLoginService loginService;
	
	@RequestMapping("/loginForm.do")
	public String loginFrom(Model model) {
		logger.info("Fowarding to Login Page");
		return "login/login";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String UserLogin(UserDTO userdto, Model model) {
		Object result = loginService.LoginService(userdto);
		logger.info("login result : {}", result);
		model.addAttribute("loginUserModel", result);
		return "redirect:main.do";
	}
}
