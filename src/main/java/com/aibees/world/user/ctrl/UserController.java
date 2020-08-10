package com.aibees.world.user.ctrl;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aibees.world.user.model.vo.UserDTO;
import com.aibees.world.user.model.vo.UserVO;
import com.aibees.world.user.service.UserLoginService;
import com.aibees.world.user.service.UserUpdateService;
import com.aibees.world.utils.BeanUtils;
import com.aibees.world.utils.ObjectUtils;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	private ObjectUtils objectUtils = (ObjectUtils)BeanUtils.getBean("ObjectUtils");
	
	@Resource(name="UserLoginService")
	private UserLoginService loginService;
	
	@Resource(name="UserUpdateService")
	private UserUpdateService updateService;
	
	@RequestMapping("/loginForm.do")
	public String loginFrom() {
		logger.info("Fowarding to Login Page");
		return "login/login";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> UserLogin(HttpServletRequest request, UserDTO userdto) {
		Object result = loginService.LoginService(userdto);
		logger.info("login result : {}", result);
		
		// Login Success시, Session 넣어주기
		HttpSession session = request.getSession(true);
		session.setAttribute("loginUser", result);
		
		return objectUtils.UserVoMapping((UserVO)result);
	}
	
	@RequestMapping("/signUp.do")
	public String userSignUp() {
		logger.info("Forwarding to user Signup Page");
		return "login/signup";
	}
	
	@RequestMapping(value="/registerPost.do", method=RequestMethod.POST)
	public String UserRegister(UserVO uservo, Model model) {
		// uservo phoneNum replace "-" to none
		String phoneTrim = uservo.getPhone().replace("-", "");
		uservo.setPhone(phoneTrim);
		logger.debug("logger debug test");
		logger.info("Debug : register uservo data : {}", uservo);
		
		// insert Transaction
		int updateResult = updateService.InsertService(uservo);
		System.out.println("updateResult : " + updateResult);
		
		if(updateResult == 1) {
			// normal result : Success
			model.addAttribute("resultFlag", "success");
		}
		else {
			// Failed
			model.addAttribute("resultFlag", "failed");
		}
		return "login/registerSuccess";
	}
	
	@RequestMapping("logout.do")
	public String userLogout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		session.removeAttribute("loginUser");
		logger.info("User Logout From page");
		return "redirect:main.do";
	}
	
	@RequestMapping("loginRedirect.do")
	public String loginRedirect() {
		logger.debug("No Session. Forward to LoginPage or Main");;
		return "login/redirect";
	}
}
