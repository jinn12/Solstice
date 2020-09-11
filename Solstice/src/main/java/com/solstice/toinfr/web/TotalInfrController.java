package com.solstice.toinfr.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TotalInfrController {
	@RequestMapping(value="/toinfrList.do", method=RequestMethod.GET)
	public String selectTotalInfrList(Model model){
		String flag ="totalIn";
		System.out.println("####### Hello this is MyTotalInfrController 클래스 "); 
		model.addAttribute("flag",flag);
		return "totalInfr/totalInfrList.tiles"; 
		} 
	}