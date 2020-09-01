package com.solstice.proinfr.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductInfrController {
	@RequestMapping(value="/proInfrList.do", method=RequestMethod.GET)
	public String selectProInfrList(){ 
		System.out.println("####### Hello this is MyProductInfrController 클래스 "); 
		return "proInfr/proInfrList.tiles"; 
		} 
	}
