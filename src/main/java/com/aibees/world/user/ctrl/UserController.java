package com.aibees.world.user.ctrl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aibees.world.user.model.vo.UserDTO;
import com.aibees.world.user.model.vo.UserVO;
import com.aibees.world.user.service.UserLoginService;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Resource(name="UserLoginService")
	private UserLoginService loginService;
	
	@RequestMapping("/loginForm.do")
	public String loginFrom() {
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
	
	@RequestMapping("signUp.do")
	public String userSignUp() {
		logger.info("Forwarding to user Signup Page");
		return "login/signup";
	}
	
	@RequestMapping(value="register.do", method=RequestMethod.POST)
	public String UserLogin(UserVO uservo) {
		logger.info("register uservo data : {}", uservo);
		return "redirect:loginForm.do";
	}
	
	@RequestMapping("logout.do")
	public String userLogout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		session.removeAttribute("loginUser");
		logger.info("User Logout From page");
		return "redirect:main.do";
	}
}
