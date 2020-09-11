package com.solstice.chart.web;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.solstice.rival.service.RivalService;
import com.solstice.rival.service.RivalVO;
import com.solstice.rival.web.RivalController;
import com.solstice.users.service.UsersService;

@Controller
public class GoogleChartController {
	private static final Logger logger = LoggerFactory.getLogger(GoogleChartController.class);
	


	@Autowired
	private RivalService rivalService;

	public GoogleChartController() {};
	
	
	/*@RequestMapping(value="/bardata.do", method=RequestMethod.POST)
	public void bardata( Model model, RivalVO rival, HttpServletResponse response){ 
		System.out.println("####### Hello this is 구글차트"); 
		//해당 고객의 라이벌 리스트   //쿼리문 가는 서비스 연결
		  List<RivalVO> rivalList = rivalService.selectRivalListCount();
		   //ajax에 반환할 JSON 생성
		//전송용 json 객체
			JSONObject sendJson = new JSONObject();
			//json 배열 객체
			JSONArray jarr = new JSONArray();
			//list를 jarr 로 옮겨 저장 (복사)
			for( RivalVO reportb : rivalList) {
				
			JSONObject job = new JSONObject();
			job.put("id", reportb.getAppl_date());
			job.put("date", reportb.getApplicant());
			//job.put("reason", URLEncoder.encode(reportb.getReportbreason(), "utf-8"));
			jarr.add(job);
			}
      
			sendJson.put("list", jarr);
			logger.debug(jarr.toJSONString());
			response.setContentType("application/jsonl charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println(sendJson.toJSONString());
			out.flush();
			out.close();
		}
	

	*/
	


}
