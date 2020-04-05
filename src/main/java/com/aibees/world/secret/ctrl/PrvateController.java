package com.aibees.world.secret.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PrvateController {
	
	@RequestMapping("/private.do")
	public String privateSite() {
		return "private/private_main";
	}
	
	@RequestMapping("/private/diary.do")
	public String privateDiary() {
		return "private/board/listPage";
	}
}
