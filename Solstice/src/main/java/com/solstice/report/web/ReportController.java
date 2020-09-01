package com.solstice.report.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class ReportController {
 @RequestMapping(value="/reportList.do", method=RequestMethod.GET)
		public String selectReportList(){ 
			System.out.println("####### Hello this is MyReportController 클래스 "); 
			return "report/reportList.tiles"; 
			} 
		
}
