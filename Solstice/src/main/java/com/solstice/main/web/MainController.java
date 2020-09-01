package com.solstice.main.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping(value = "/main.do")
	public String initMain(HttpServletRequest req) throws Exception {
		System.out.println("타일즈 컨트롤러에 입성했습니다3!!!");
		  String ip = req.getHeader("X-Forwarded-For");
		    if (ip == null) ip = req.getRemoteAddr();


		return "main/main";
	}
	
	@RequestMapping(value = "loginMain.do")
	public String loginMain() {
		

		return "main/LoginMain.tiles";
	}
	
	
}
