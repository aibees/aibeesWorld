package com.aibees.world.secret.ctrl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aibees.world.secret.model.vo.DiaryDTO;
import com.aibees.world.user.ctrl.UserController;

@Controller
public class PrvateController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@RequestMapping("/private.do")
	public String privateSite() {
		return "private/private_main";
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
