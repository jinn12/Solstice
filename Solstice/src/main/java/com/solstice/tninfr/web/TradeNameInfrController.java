package com.solstice.tninfr.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TradeNameInfrController {
	@RequestMapping(value="/tninfrList.do", method=RequestMethod.GET)
	public String selectTradeNameInfrList(Model model){ 
		String flag = "tradeNameIn";
		System.out.println("####### Hello this is MyTradeNameInfrController  클래스 "); 
		model.addAttribute("flag", flag);
		return "tnInfr/tnInfrList.tiles"; 
		} 
	}