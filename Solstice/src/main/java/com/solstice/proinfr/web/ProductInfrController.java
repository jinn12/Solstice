package com.solstice.proinfr.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductInfrController {
	@RequestMapping(value="/proInfrList.do", method=RequestMethod.GET)
	public String selectProInfrList(Model model){
		String flag ="productIn";
		System.out.println("####### Hello this is MyProductInfrController 클래스 "); 
		model.addAttribute("flag",flag);
		return "proInfr/proInfrList.tiles"; 
		} 
	}
