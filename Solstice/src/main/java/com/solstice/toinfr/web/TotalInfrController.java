package com.solstice.toinfr.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TotalInfrController {
	@RequestMapping(value="/toinfrList.do", method=RequestMethod.GET)
	public String selectTotalInfrList(){ 
		System.out.println("####### Hello this is MyTotalInfrController 클래스 "); 
		return "totalInfr/totalInfrList.tiles"; 
		} 
	}