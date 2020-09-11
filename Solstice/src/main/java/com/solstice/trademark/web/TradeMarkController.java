package com.solstice.trademark.web;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.solstice.client.service.ClientVO;
import com.solstice.trademark.service.TradeMarkService;
import com.solstice.trademark.service.TradeMarkVO;

@Controller
public class TradeMarkController {
	private static final Logger logger = LoggerFactory.getLogger(TradeMarkController.class);
	
	
	@Autowired
	private TradeMarkService trademarkService;

	public TradeMarkController() {};
	
	/*@RequestMapping(value="/tradeMarkList.do", method=RequestMethod.GET)
	public String selectTradeMarkList(){ 
		System.out.println("####### Hello this is MyTradeMarkController 클래스 "); 
		return "trademark/trademarkList.tiles"; 
	}*/
	
	//상표 목록 
		@RequestMapping(value="/tradeMarkList.do", method=RequestMethod.GET)
		public String selectTmListPage(Model model){
			String flag ="tradeMark";
			System.out.println("####### Hello this is TradeMark 클래스 "); 
			model.addAttribute("flag",flag);
	          return "trademark/trademarkList.tiles"; 
			} 
	
	//검색결과에 대한 컨트롤러
	@RequestMapping(value="/selectTmSearchList.do", method=RequestMethod.GET)
	public String selectTmSearchList(Model model, TradeMarkVO trademark,
	         @RequestParam(name = "page", required = false) String page,
	         @RequestParam(name = "search", required = false) String search,
	         @RequestParam(name = "searchtype1", required = false) String searchtype1,
	         @RequestParam(name = "searchtype", required = false) String searchtype){ 
		System.out.println("####### Hello this is selectTmSearchList 클래스 "); 
		  System.out.println("serach : " + search);
	      System.out.println("serach 2: " + searchtype);
	      int currentPage = 1;
	      if(page !=null) {
	         currentPage = Integer.parseInt(page);
	      }
	      //페이징
	      int limit = 10; // 한 페이지에 출력할 목록 갯수
	      HashMap<String, Object> mapp = new HashMap<String, Object>();
	      mapp.put("search", search);
	      mapp.put("searchtype", searchtype);
	      mapp.put("searchtype1", searchtype1);
	      
	      int listCount1 = trademarkService.trademarkSearchListCount(mapp);

	      logger.info(currentPage + ", " + listCount1);


	    
	      
	      
	      //페이지 수 계산
          int maxPage = (int)((double)listCount1 / limit + 0.9);
          // 현재 페이지가 포함된 페이지 그룹의 시작값
          int startPage = (int)((double)currentPage / limit + 0.9);
          // 현재 페이지가 포함된 페이지 그룹의 끝값
          int endPage = startPage + limit - 1;
          
          if(maxPage < endPage) {
             endPage = maxPage;
          }
          
          // 쿼리문에 반영할 현재 페이지에 출력할 목록의 시작행과 끝행 계산
          int startRow = (currentPage - 1) * limit + 0;
          int endRow = startRow + limit - 0;
	            
	            
	            HashMap<String, Object> map = new HashMap<String, Object>();
	            map.put("startRow", startRow);
	            map.put("endRow", endRow);
	            map.put("search", search);
	            map.put("searchtype", searchtype);
	            map.put("searchtype1", searchtype1);
	            map.put("listcount1", listCount1);


	            List<TradeMarkVO> tmlist = trademarkService.selectTmSearchList(map);
	         
	            logger.info("고객 수 : " + tmlist.size());
	            
	            
	            if(tmlist != null && tmlist.size() > 0) {
	               model.addAttribute("search", search);
	               model.addAttribute("searchtype",searchtype);
	               model.addAttribute("list", tmlist); // 리스트에 담은 전체 정보
	               model.addAttribute("listCount1", listCount1); // 전체갯수
	               model.addAttribute("maxPage", maxPage); // 맨마지막페이지
	               model.addAttribute("currentPage", currentPage); // 해당페이지 기본값 1
	               model.addAttribute("startPage", startPage); // 첫페이지
	               model.addAttribute("endPage", endPage); // 끝페이지
	               model.addAttribute("limit", limit); // 한페이지당 출력할갯수 기본값10개
	               model.addAttribute("page", page);
	               
	            } else {
	               model.addAttribute("message", currentPage + "페이지 목록 조회 실패");
	               model.addAttribute("common/error");
	            }
		return "trademark/searchTradeMark.tiles"; 
		} 
	
	//상표 상세 보기
		@RequestMapping("tmDetail.do")
		public ModelAndView selectTmDetail(@RequestParam(name="page",required=false)String page, 
				 @RequestParam(name="tm_seq",required=false) int tm_seq, ModelAndView mv ) {
			System.out.println("고객상세보기 컨트롤러 입성");

		TradeMarkVO trademark = trademarkService.selectTmDetail(tm_seq);
		System.out.println("상표상세보기 서비스 통과");
		System.out.println(trademark);
		
		//이거 나중에 맵퍼에서 쿼리문 따로 만들기
		if (trademark != null) {
		mv.addObject("trademark", trademark);
		
		mv.setViewName("trademark/tmDetail");
		} else {
		mv.addObject("message", "상표 상세 조회 실패");
		mv.setViewName("common/error");
		}
		return mv;
		
		}
		/*
		//상표 상세보기 와 다음글 이전글
		@SuppressWarnings("unused")
		@RequestMapping("tmprenext.do")
		public ModelAndView selectTmDetail(ModelAndView mv, @RequestParam("tm_seq") int tm_seq) {

		TradeMarkVO trademark = trademarkService.selectTmDetail(tm_seq);
		TradeMarkVO prevnotice = trademarkService.selectNextPrevTm(trademark.getRnum()-1);
		TradeMarkVO nextnotice = trademarkService.selectNextPrevTm(trademark.getRnum()+1);
		//이거 나중에 맵퍼에서 쿼리문 따로 만들기
		if (trademark != null) {
		mv.addObject("trademark ", trademark );
		mv.addObject("prevnotice", prevnotice);
		mv.addObject("nextnotice", nextnotice);
		mv.setViewName("trademark /tmDetail");
		} else {
		mv.addObject("message", "공지 상세 조회 실패");
		mv.setViewName("common/error");
		}
		return mv;

		}*/
}
