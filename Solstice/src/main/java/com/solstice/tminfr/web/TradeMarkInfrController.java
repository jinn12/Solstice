package com.solstice.tminfr.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TradeMarkInfrController {
	@RequestMapping(value="/tminfrList.do", method=RequestMethod.GET)
	public String selectTradeMarkInfrList(){ 
		System.out.println("####### Hello this is MyTradeMarkInfrController  클래스 "); 
		return "tmInfr/tmInfrList.tiles"; 
		} 
	}

