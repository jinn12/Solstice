package com.solstice.request.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RequestController {
	@RequestMapping(value="/requestList.do", method=RequestMethod.GET)
	public String selectRequestList(Model model){ 
		String flag = "request";
		System.out.println("####### Hello this is MyRequestController  클래스 "); 
		model.addAttribute("flag", flag);
		return "request/requestList.tiles"; 
		
		} 
	}
