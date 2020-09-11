package com.solstice.report.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class ReportController {
 @RequestMapping(value="/reportList.do", method=RequestMethod.GET)
		public String selectReportList(Model model){
	 String flag ="report";
			System.out.println("####### Hello this is MyReportController 클래스 "); 
			model.addAttribute("flag",flag);
			return "report/reportList.tiles"; 
			} 
 
 @RequestMapping(value="/reportDetail.do", method=RequestMethod.GET)
	public String selectReportDetail(){ 
		System.out.println("####### Hello this is MyReportController 클래스 "); 
		return "report/reportDetail.tiles"; 
		} 
 
 @RequestMapping(value="/report.do", method=RequestMethod.GET)
	public String selectReport(){ 
		System.out.println("####### Hello this is MyReportController 클래스 "); 
		return "report/report.tiles"; 
		} 
	
	
		
}
