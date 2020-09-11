package com.solstice.notice.web;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.solstice.client.service.ClientVO;
import com.solstice.notice.service.NoticeService;
import com.solstice.notice.service.NoticeVO;
import com.solstice.rival.service.RivalService;
import com.solstice.rival.service.RivalVO;
import com.solstice.rival.web.RivalController;

@Controller
public class NoticeController {
	private static final Logger logger = LoggerFactory.getLogger( NoticeController.class);
	@Autowired
	private NoticeService noticeService;
	
	public NoticeController() {};
	
	//공지사항 목록으로 이동
	//고객 목록 
		@RequestMapping(value="/noticeList.do", method=RequestMethod.GET)
		public String selectNoticeList(@RequestParam(name="page",required=false)String page, 
				 Model model ){
			String flag = "notice";
			System.out.println("####### Hello this is MyClientController 클래스 "); 
			 logger.info("page : " + page);
			 int currentPage = 1;
			 if(page !=null) {
			 currentPage = Integer.parseInt(page);
			 }
		      //페이징
	          int limit = 10;
	          int listCount = noticeService.noticeCount(); // 총 목록 갯수
	          
	          logger.info("listCount : " + listCount + ", currentPage : " + currentPage);
	     
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
	          
	          System.out.println(startRow + ", " + endRow);
	          
	          HashMap<String, Object> map = new HashMap<String, Object>();
	          map.put("startRow", startRow);
	          map.put("endRow", endRow);
	         
	          
	          List<NoticeVO> list = noticeService.selectNoticeList(map);
	                            
	          System.out.println("등록 고객 수 : " + list.size());
	          System.out.println(map);
	          System.out.println(list);
	          
	          
	          
	          if(list != null && list.size() > 0) {
	             model.addAttribute("list",list);    //전체리스트
	             model.addAttribute("listCount",listCount);  //리스트 전체 갯수
	             model.addAttribute("maxPage",maxPage);
	             model.addAttribute("currentPage",currentPage);
	             model.addAttribute("startPage",startPage);
	             model.addAttribute("endPage",endPage);
	             model.addAttribute("limit",limit);
	             model.addAttribute("page", page);
	             model.addAttribute("flag", flag);
	      
	          } else {
	             model.addAttribute("message", currentPage + "페이지 목록 조회 실패");
	             model.addAttribute("common/error");
	          }
			
			return "notice/noticeList.tiles"; 
			} 
	
	//공지사항 검색
	   @RequestMapping("selectNoticeSearchList.do")
	   public String selectClientSearchList(Model model,NoticeVO notice,
	         @RequestParam(name = "page", required = false) String page,
	         @RequestParam(name = "search", required = false) String search,
	         @RequestParam(name = "searchtype", required = false) String searchtype)
	         {

	      
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
	      
	      int listCount = noticeService.noticeSearchListCount(mapp);

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


	            List<NoticeVO> nlist = noticeService.selectNoticeSearchList(map);
	         System.out.println("리스트에 담긴것:" + nlist);
	            logger.info("공지사항 수 : " + nlist.size());
	            
	            
	            if(nlist != null && nlist.size() > 0) {
	               model.addAttribute("search", search);
	               model.addAttribute("searchtype",searchtype);
	               model.addAttribute("list", nlist); // 리스트에 담은 전체 정보
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
	            
	      
	        	return "notice/noticeList.tiles"; 
	   }   
	   
	   //공지사항 상세보기
	   @RequestMapping("noticeDetail.do")
		public ModelAndView selectNoticeDetail(@RequestParam(name="page",required=false)String page, 
				 @RequestParam(name="notice_seq",required=false) int notice_seq, ModelAndView mv ) {
			System.out.println("고객상세보기 컨트롤러 입성");

		NoticeVO notice = noticeService.selectNoticeDetail(notice_seq);
		                  noticeService.noticeReadCount(notice_seq);   //공지사항 조회수 추가
		                  
		System.out.println("공지사항 조회수 증가 서비스 통과");
		System.out.println("공지사항 상세보기 서비스 통과");
		System.out.println(notice);
	
	
		if (notice != null) {
		mv.addObject("notice", notice);
		mv.setViewName("notice/noticeDetail.tiles");
		} else {
		mv.addObject("message", "공지사항 상세 조회 실패");
		mv.setViewName("common/error");
		}
		return mv;
		
		}
	
	 //공지사항 등록으로 이동하기
		@RequestMapping(value="/moveInsertNotice.do", method=RequestMethod.GET)
		public String insertMyClient(){ 
			System.out.println("####### Hello this is MyInsertClietn 클래스 "); 
			return "notice/insertNotice.tiles"; 
			
			} 
		
	    //공지사항 등록하기
		@RequestMapping(value="/insertNotice.do", method=RequestMethod.POST)
		public String insertNotice(NoticeVO notice, Model model,@RequestParam String user_email){ 
			System.out.println("####### Hello this is 공지사항 등록 "); 
			int result = 0;
			
			result = noticeService.insertNotice(notice);	//  공지사항 추가
			
			
			System.out.println("서비스 통과");
			String vfn = "notice/noticeList.tiles";
			
			 if (result > 0) {
				 model.addAttribute("notice", notice);
				 model.addAttribute("user_email",user_email);
				 model.addAttribute("msg", "고객등록 성공");
				 vfn= "redirect:/noticeList.do";  
		        } else {
		        	vfn = "notice/insertNotice.tiles";
		            model.addAttribute("msg", "고객등록실패!");
		        
			}
			return vfn; 
		
		}
		
		//공지사항 수정하기로 이동하는 버튼
	   @RequestMapping("moveUpateNotice.do")
	    public String updateNotice(Model model, @RequestParam(name="notice_seq") int notice_seq) {
	System.out.println("수정하기로 이동 하는 컨트롤러");
	    NoticeVO notice = noticeService.selectNoticeDetail(notice_seq);
	    System.out.println(notice_seq);

	    model.addAttribute("notice", notice);
	 
	    return "notice/noticeUpdate.tiles";
	    }
	    
	 // 공지사항 수정
		@RequestMapping(value="updateMyNotice.do")
		public String updateMyNotice(NoticeVO notice, Model model, HttpServletRequest request, @RequestParam(name="notice_seq") int notice_seq) {
			System.out.println("수정하기 컨트롤러");
			
			int result = noticeService.updateMyNotice(notice);
			
			model.addAttribute("notice", notice);
			System.out.println("정보수정 서비스 통과");
			
			String vfn = null;
			
			 if (result > 0) {
				 model.addAttribute("notice", notice);
				 model.addAttribute("notice_seq", notice_seq); 
				 model.addAttribute("msg", "공지사항 수정 성공");
				 vfn ="redirect:noticeList.do";
		        } else {
		        	vfn = "notice/noticeUpdate.tiles";
		            model.addAttribute("msg", "공지사항 수정 실패!");
		        
			}
			return vfn; 
	 }
		
		//공지사항 상세페이지에서 삭제
		@RequestMapping("deleteDetailNotice.do")
		public String deleteDetailClient(Model model, @RequestParam("notice_seq") int notice_seq) {
		int result = noticeService.deleteDetailNotice(notice_seq);
		String view = "";
		if (result > 0) {
		view = "redirect:noticeList.do";
		} else {
		model.addAttribute("message", "공지사항 삭제 실패");
		view = "common/error";
		}
		return view;
		}
	
	}
