package com.solstice.tradename.web;

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

import com.solstice.trademark.service.TradeMarkService;
import com.solstice.trademark.service.TradeMarkVO;
import com.solstice.trademark.web.TradeMarkController;
import com.solstice.tradename.service.TradeNameService;
import com.solstice.tradename.service.TradeNameVO;


@Controller
public class TradeNameController {
	private static final Logger logger = LoggerFactory.getLogger(TradeNameController.class);

	@Autowired
	private TradeNameService tradenameService;

	public TradeNameController() {};
	
	//상호정보 검색하는 화면으로 가기
	@RequestMapping(value="/tradeNameList.do", method=RequestMethod.GET)
	public String selectTradeNameList(){ 
		System.out.println("####### Hello this is MyTradeNameController 클래스 "); 
		return "tradename/tradenameList.tiles"; 
		} 
	
	//검색결과에 대한 컨트롤러
		@RequestMapping(value="/selectTnSearchList.do", method=RequestMethod.GET)
		public String selectTmSearchList(Model model, TradeMarkVO trademark,
		         @RequestParam(name = "page", required = false) String page,
		         @RequestParam(name = "search", required = false) String search,
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
		    
		       int listCount = tradenameService.tradenameSearchListCount(mapp);

		      logger.info(currentPage + ", " + listCount);


		    
		      
		      
		      //페이지 수 계산
	          int maxPage = (int)((double)listCount / limit + 0.9);
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
		            map.put("listcount", listCount);


		            List<TradeNameVO> tnlist = tradenameService.selectTnSearchList(map);
		         
		            logger.info("고객 수 : " + tnlist.size());
		            
		            
		            if(tnlist != null && tnlist.size() > 0) {
		               model.addAttribute("search", search);
		               model.addAttribute("searchtype",searchtype);
		               model.addAttribute("list", tnlist); // 리스트에 담은 전체 정보
		               model.addAttribute("listCount", listCount); // 전체갯수
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
			return "tradename/searchTradeName.tiles"; 
			} 
		
		//상표 상세 보기
			@RequestMapping("tnDetail.do")
			public ModelAndView selectTnDetail(@RequestParam(name="page",required=false)String page, 
					 @RequestParam(name="brand_seq",required=false) int brand_seq, ModelAndView mv ) {
				System.out.println("고객상세보기 컨트롤러 입성");

			TradeNameVO tradename = tradenameService.selectTnDetail(brand_seq);
			System.out.println("상표상세보기 서비스 통과");
			System.out.println(tradename);
			
			//이거 나중에 맵퍼에서 쿼리문 따로 만들기
			if (tradename != null) {
			mv.addObject("tradename", tradename);
			
			mv.setViewName("tradename/tnDetail");
			} else {
			mv.addObject("message", "상표 상세 조회 실패");
			mv.setViewName("common/error");
			}
			return mv;
			
	
			}

		}