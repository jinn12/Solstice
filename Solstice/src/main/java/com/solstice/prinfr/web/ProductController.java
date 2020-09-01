package com.solstice.prinfr.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {
	@RequestMapping(value="/productList.do", method=RequestMethod.GET)
	public String selectProductList(){ 
		System.out.println("####### Hello this is MyProductController 클래스 "); 
		return "product/productList.tiles"; 
		} 
	}
