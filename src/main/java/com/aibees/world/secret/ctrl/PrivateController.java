package com.aibees.world.secret.ctrl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aibees.world.secret.model.vo.DiaryDTO;
import com.aibees.world.user.model.vo.UserVO;

@Controller
public class PrivateController {
	
	private static final Logger logger = LoggerFactory.getLogger(PrivateController.class);
	
	@RequestMapping("/private.do")
	public String privateSite(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		UserVO uservo = (UserVO)session.getAttribute("loginUser");
		if(uservo == null) {
			return "redirect:loginForm.do";
		}
		String role = uservo.getRole();
		String name = uservo.getName();
		System.out.println(role);
		
		if("admin".equals(role) || "임다은".equals(name)) {
			return "private/private_main";
		}
		else { // Permission Denied
			model.addAttribute("setAlert", "접근 권한이 없습니다.");
			model.addAttribute("url", "index.jsp");
			return "private/err_denied";
		}
	}
	
	@RequestMapping("/private/diary.do")
	public String privateDiary() {
		return "private/board/listPage";
	}
	
	@RequestMapping("/private/createDiary.do")
	public String privateCreateDiary() {
		return "private/board/register";
	}
	
	@RequestMapping(value="/private/register.do", method=RequestMethod.POST)
	public String privateRegisterDiary(DiaryDTO diarydto) {
		logger.info("Request data : {}", diarydto);
		int insertResult = 0;
		
		if(insertResult == 0) {
			return "error_common";
		}
		else {
			return "redirect:/private/diary.do";
		}
		
	}
}
