package com.solstice.tminfr.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class TradeMarkInfrController {
	private static final Logger logger = LoggerFactory.getLogger(TradeMarkInfrController.class);

	
	public TradeMarkInfrController() {};

	//상표침해  현황 목록 
	@RequestMapping(value="/tminfrList.do", method=RequestMethod.GET)
	public String selectTradeMarkInfrList(Model model){
		String flag ="tradeMarkIn";
		System.out.println("####### Hello this is TradeMarkInfr클래스 "); 
		 model.addAttribute("flag", flag);
		 return "tmInfr/tmInfrList.tiles"; 
		} 

}

