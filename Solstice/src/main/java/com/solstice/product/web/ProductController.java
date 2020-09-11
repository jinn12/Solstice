package com.solstice.product.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solstice.notice.service.NoticeService;
import com.solstice.notice.web.NoticeController;

@Controller
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger( ProductController.class);

	
	public ProductController() {};

	//상표 목록 
	@RequestMapping(value="/productList.do", method=RequestMethod.GET)
	public String selectPorductList(Model model){
		String flag ="product";
		System.out.println("####### Hello this is Product클래스 "); 
		 model.addAttribute("flag", flag);
          return "product/productList.tiles"; 
		} 

}
