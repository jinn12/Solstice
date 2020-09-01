package com.solstice.request.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RequestController {
	@RequestMapping(value="/requestList.do", method=RequestMethod.GET)
	public String selectRequestList(){ 
		System.out.println("####### Hello this is MyRequestController  클래스 "); 
		return "request/requestList.tiles"; 
		} 
	}
