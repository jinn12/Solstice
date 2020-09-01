package com.solstice.client.web;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.solstice.client.service.ClientService;
import com.solstice.client.service.ClientVO;
import com.solstice.client.service.RivaVO;
import com.solstice.rival.service.RivalService;
import com.solstice.rival.service.RivalVO;


@Controller
public class ClientController {
private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
	
	
	@Autowired
	private ClientService clientService;
	@Autowired
	private RivalService rivalService;

	public ClientController() {};
	
	//고객 수
	@RequestMapping("getListCountNotice.do")
	public String getListCountClient() {
	return "client/clientList.tiles"; 
	}
	
	//고객 목록 
	@RequestMapping(value="/clientList.do", method=RequestMethod.GET)
	public String selectClientList(@RequestParam(name="page",required=false)String page, 
			 @RequestParam(name="com_reg_no",required=false)String com_reg_no, Model model ){
		System.out.println("####### Hello this is MyClientController 클래스 "); 
		 logger.info("page : " + page);
		 int currentPage = 1;
		 if(page !=null) {
		 currentPage = Integer.parseInt(page);
		 }
	      //페이징
          int limit = 10;
          int listCount = clientService.listCount(); // 총 목록 갯수
          
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
          map.put("com_reg_no",com_reg_no);
          
          List<ClientVO> list = clientService.selectClientList(map);
                            
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
             model.addAttribute("com_reg_no",com_reg_no);
             
             /*model.addAttribute("user/myQnaList");*/
          } else {
             model.addAttribute("message", currentPage + "페이지 목록 조회 실패");
             model.addAttribute("common/error");
          }
		
		return "client/clientList.tiles"; 
		} 
	
	//고객 상세 보기
	@RequestMapping("clientDetail.do")
	public ModelAndView selectClientDetail(@RequestParam(name="page",required=false)String page, 
			 @RequestParam(name="com_seq",required=false) int com_seq, ModelAndView mv ) {
		System.out.println("고객상세보기 컨트롤러 입성");

	ClientVO client = clientService.selectClientDetail(com_seq);
	int rivaCount = clientService.rivaCount(com_seq); // 해당 고객이 지정한 경쟁사의 건 수
	int tmCount = clientService.tmCount(com_seq); //해당 고객이 보유한 상표 갯수 카운트
     //HashMap<String, Object> map = new HashMap<String, Object>();
    //List<ClientVO> rivaList = clientService.selectClientForRivaList(map); //해당 고객의 라이벌 리스트

	
	System.out.println("고객상세보기 서비스 통과");
	System.out.println(client);
	System.out.println(rivaCount);
	System.out.println("고객의 상표 수: " + tmCount);
	//System.out.println(rivaList);
	
	//이거 나중에 맵퍼에서 쿼리문 따로 만들기
	if (client != null) {
	mv.addObject("client", client);
	mv.addObject("rivaCount", rivaCount);
	mv.addObject("tmCount", tmCount);
	//mv.addObject("rivaList", rivaList);
	
	mv.setViewName("client/clientDetail.tiles");
	} else {
	mv.addObject("message", "고객 상세 조회 실패");
	mv.setViewName("common/error");
	}
	return mv;
	
	}
	
	
	//해당 고객의 경쟁사 목록으로 이동 
		@RequestMapping(value="/clientForRiva.do", method=RequestMethod.GET)
		public String selectClientForRivaList(@RequestParam(name="page",required=false)String page, 
				 @RequestParam(name="com_seq",required=false)int com_seq, 
				 Model model ){
			System.out.println("####### Hello this is MyClientController 클래스 "); 
			 List<ClientVO> rivaList1 = clientService.selectClientForRivaList1(); //해당 고객의 라이벌 리스트
			 System.out.println("해당고객의 라이벌 리스트로 이동 서비스 통과 성공");
			 logger.info("page : " + page);
			 int currentPage = 1;
			 if(page !=null) {
			 currentPage = Integer.parseInt(page);
			 }
		      //페이징
	          int limit = 10;
	          int rivaCount = clientService.rivaCount(com_seq); // 해당 고객이 지정한 경쟁사의 건 수
	          
	          logger.info("listCount : " + rivaCount + ", currentPage : " + currentPage);
	     
	          //페이지 수 계산
	          int maxPage = (int)((double)rivaCount / limit + 0.9);
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
	          map.put("com_seq",com_seq);
	          
	          List<ClientVO> rivaList = clientService.selectClientForRivaList(map); //해당 고객의 라이벌 리스트
	          
	          ClientVO client = clientService.selectClientDetail(com_seq);
              System.out.println("고객 한명:" + client);
              
	          System.out.println("등록 고객 수 : " + rivaList.size());
	          System.out.println(map);
	          System.out.println(rivaList);
	       
	          
	          
	          
	          if(rivaList != null && rivaList.size() > 0) {
	             model.addAttribute("list",rivaList);  
	             //전체리스트
	             model.addAttribute("listCount",rivaCount);  //리스트 전체 갯수
	             model.addAttribute("maxPage",maxPage);
	             model.addAttribute("currentPage",currentPage);
	             model.addAttribute("startPage",startPage);
	             model.addAttribute("endPage",endPage);
	             model.addAttribute("limit",limit);
	             model.addAttribute("page", page);
	             model.addAttribute("client", client);
	             model.addAttribute("com_seq",rivaList.get(0).getCom_seq());//권석전문가의 가르침
	            
	          } else if(client != null){
	        	  model.addAttribute("list",rivaList);  
		             //전체리스트
		             model.addAttribute("listCount",rivaCount);  //리스트 전체 갯수
		             model.addAttribute("maxPage",maxPage);
		             model.addAttribute("currentPage",currentPage);
		             model.addAttribute("startPage",startPage);
		             model.addAttribute("endPage",endPage);
		             model.addAttribute("limit",limit);
		             model.addAttribute("page", page);
		             model.addAttribute("client", client);
		             model.addAttribute("com_seq",com_seq);//권석전문가의 가르침
	          }else {
	             model.addAttribute("message", currentPage + "페이지 목록 조회 실패");
	             model.addAttribute("common/error");
	          }
			
			return "client/clientForRiva.tiles"; 
			} 
		//해당 고객의 경쟁사 목록으로 이동 
		@RequestMapping(value="/clientForPageRiva.do", method=RequestMethod.GET)
		public String selectClientForPageRivaList(@RequestParam(name="page",required=false)String page, 
				 @RequestParam(name="com_seq",required=false)int com_seq, 
				 @RequestParam(name="com_company_name",required=false)String com_company_name,  Model model ){
			System.out.println("####### Hello this is MyClientController 클래스 "); 
			
			 System.out.println("해당고객의 라이벌 리스트로 이동 서비스 통과 성공");
			 logger.info("page : " + page);
			 int currentPage = 1;
			 if(page !=null) {
			 currentPage = Integer.parseInt(page);
			 }
		      //페이징
	          int limit = 10;
	          int rivaCount = clientService.rivaCount(com_seq); // 해당 고객이 지정한 경쟁사의 건 수
	          
	          logger.info("listCount : " + rivaCount + ", currentPage : " + currentPage);
	     
	          //페이지 수 계산
	          int maxPage = (int)((double)rivaCount / limit + 0.9);
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
	          map.put("com_seq",com_seq);
	          
	          List<ClientVO> rivaList = clientService.selectClientForRivaList(map); //해당 고객의 라이벌 리스트
	          
	          ClientVO client = clientService.selectClientDetail(com_seq);
              System.out.println("고객 한명:" + client);
              
	          System.out.println("등록 고객 수 : " + rivaList.size());
	          System.out.println(map);
	          System.out.println(rivaList);
	       
	          
	          
	          
	          if(rivaList != null && rivaList.size() > 0) {
	             model.addAttribute("list",rivaList);    //전체리스트
	             model.addAttribute("listCount",rivaCount);  //리스트 전체 갯수
	             model.addAttribute("maxPage",maxPage);
	             model.addAttribute("currentPage",currentPage);
	             model.addAttribute("startPage",startPage);
	             model.addAttribute("endPage",endPage);
	             model.addAttribute("limit",limit);
	             model.addAttribute("page", page);
	             model.addAttribute("client", client);
	             model.addAttribute("com_seq",rivaList.get(0).getCom_seq());
	             model.addAttribute("com_company_name",rivaList.get(0).getCom_company_name()); //권석전문가의 가르침
	        
	          } else {
	             model.addAttribute("message", currentPage + "페이지 목록 조회 실패");
	             model.addAttribute("common/error");
	          }
			
			return "client/clientForRiva.tiles"; 
			} 
	
	//고객 상세페이지에서 삭제
	@RequestMapping("deleteDetailClient.do")
	public String deleteDetailClient(Model model, @RequestParam("com_seq") int com_seq) {
	int result = clientService.deleteDetailClient(com_seq);
	
	String view = "";
	if (result > 0) {
		model.addAttribute("com_seq", com_seq);
	view = "redirect:clientList.do";
	
	} else {
	model.addAttribute("message", "공지사항 삭제 실패");
	view = "common/error";
	}
	return view;
	}
	//경쟁사 상세페이지에서 경쟁사 삭제
    @RequestMapping("deleteDetailClientOfRiva.do")
	public String deleteDetailClientOfRiva(Model model, ClientVO client,@RequestParam("rival_seq") int rival_seq,
			@RequestParam("com_seq") int com_seq)
			 {
    	System.out.println("고객관리에서 경쟁사 삭제  컨트롤러 입성");
    	
	clientService.deleteDetailClientOfRival(client);
	
		model.addAttribute("rival_seq", rival_seq);
		model.addAttribute("com_seq", com_seq);
		model.addAttribute("client", client);
	return "redirect:clientForRiva.do";

	}
	//고객 검색
	   @RequestMapping("selectClientSearchList.do")
	   public String selectClientSearchList(Model model,ClientVO client,
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
	      
	      int listCount = clientService.clientSearchListCount(mapp);

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


	            List<ClientVO> clist = clientService. selectClientSearchList(map);
	         
	            logger.info("고객 수 : " + clist.size());
	            
	            
	            if(clist != null && clist.size() > 0) {
	               model.addAttribute("search", search);
	               model.addAttribute("searchtype",searchtype);
	               model.addAttribute("list", clist); // 리스트에 담은 전체 정보
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
	            
	      
	        	return "client/clientList.tiles"; 
	   }
	   
	   

	//고객 등록시 사업자번호 중복확인
	@RequestMapping(value="checkBizNo.do", method=RequestMethod.POST)
	public void selectCheckBizNoo(@RequestParam(value="com_biz_no") String com_biz_no, HttpServletResponse response) throws IOException {
		
		System.out.println("컨트롤러입성 ");
		logger.info("com_biz_no: " + com_biz_no);
		int result = clientService.selectCheckBizNoo(com_biz_no);

		
		String returnValue = null;
		
		if(result < 1) 
			returnValue = "ok";
		else
			returnValue = "fail";
		
		PrintWriter out = response.getWriter();
		out.append(returnValue);
		out.flush();
		out.close();
	}
	

	//고객등록으로 이동하기
	@RequestMapping(value="/insertMyClient.do", method=RequestMethod.GET)
	public String insertMyClient(){ 
		System.out.println("####### Hello this is MyInsertClietn 클래스 "); 
		return "client/insertClient.tiles"; 
		
		} 
	
    //고객등록 하기 
	@RequestMapping(value="/inserClient.do", method=RequestMethod.POST)
	public String inserClient(ClientVO client, Model model){ 
		System.out.println("####### Hello this is inserClient.do 고객등록 "); 
		int result = 0;
		
		result = clientService.inserClient(client);	//  고객추가
		
		String vfn = "client/clientList.tiles";
		
		 if (result > 0) {
			 model.addAttribute("client", client);
			 model.addAttribute("msg", "고객등록 성공");
			 vfn= "redirect:/clientList.do";  
	        } else {
	        	vfn = "client/insertClinet.tiles";
	            model.addAttribute("msg", "고객등록실패!");
	        
		}
		return vfn; 
	
	}
	

	
	   //목록에서 고객 삭제하기
    @RequestMapping("deleteClient.do")
    public void deleteQna(@RequestParam(value="com_seq") int com_seq, HttpServletResponse response) throws IOException {
       int result = clientService.deleteClient(com_seq);
       
       String returnValue = null;
       if(result > 0)
          returnValue = "ok";
       else
          returnValue = "fail";
       
       PrintWriter out = response.getWriter();
       out.append(returnValue);
       out.flush();
       out.close();
    }
    

  //고객 수정하기로 이동하는 버튼
    @RequestMapping("MoveUpateClient.do")
    public String updateClient(Model model, @RequestParam(name="com_seq") int com_seq) {
System.out.println("수정하기로 이동 하는 컨트롤러");
    ClientVO client = clientService.selectClientDetail(com_seq);
    System.out.println(com_seq);

    model.addAttribute("client", client);
 
    return "client/updateClientDetail";
    }
    
 // 고객 수정
	@RequestMapping(value="updateMyClient.do")
	public String updateMyClient(ClientVO client, Model model, HttpServletRequest request
			, @RequestParam(name="com_seq") int com_seq) {
		System.out.println("수정하기 컨트롤러");
		System.out.println("com_seq: "+client.getCom_seq());
		int result = clientService.updateMyClient(client);
		
		
		System.out.println("정보수정 서비스 통과");
		
		String vfn = null;
		
		if(result > 0) {
			// 업데이트 성공하면 목록으로 가기
			model.addAttribute("client", client);
			model.addAttribute("com_seq", com_seq);
			 vfn= "redirect:/clientList.do";  
			

		}else {
		model.addAttribute("message", "고객 정보 수정 실패");
		vfn= "client/updateClientDetail.tiles";
		}
		

		
		return vfn;
	}
	//고객관리-경쟁사에서 경쟁사 상세보기 페이지
	@RequestMapping("clientForRivaDetail.do")
	public ModelAndView selectclientForRivaDetail(@RequestParam(name="page",required=false)String page, 
			 @RequestParam(name="rival_seq",required=false) int rival_seq, ModelAndView mv ) {
		System.out.println("경쟁사 상세보기 컨트롤러 입성");

	ClientVO client = clientService.selectclientForRivaDetail(rival_seq);
	
	System.out.println("고객상세보기 서비스 통과");
	System.out.println(client);

	
	//이거 나중에 맵퍼에서 쿼리문 따로 만들기
	if (client != null) {
	mv.addObject("client", client);

	mv.setViewName("client/rivalDetail.tiles");
	} else {
	mv.addObject("message", "경쟁사 상세 조회 실패");
	mv.setViewName("common/error");
	}
	return mv;
	
	}

	   //목록에서 경쟁사 삭제하기
 @RequestMapping("deleteRivalListInClient.do")
 public void deleteRivalListInClient(@RequestParam(value="rival_seq") int rival_seq, HttpServletResponse response) throws IOException {
    int result = clientService.deleteClientOfRiva(rival_seq);
    
    String returnValue = null;
    if(result > 0)
       returnValue = "ok";
    else
       returnValue = "fail";
    
    PrintWriter out = response.getWriter();
    out.append(returnValue);
    out.flush();
    out.close();
 }

 //경쟁사 등록 하기로 이동하기 버튼
 @RequestMapping("moveInsertRiva.do")
 public String moveInsertRiva( Model model, @RequestParam(name="com_seq",required=false) int com_seq) {
System.out.println("수정하기로 이동 하는 컨트롤러");

List<ClientVO> rivaList = clientService.selectClientForRivaList1(com_seq);
 System.out.println(com_seq);
 System.out.println(rivaList);
 
 if(rivaList != null && rivaList.size() > 0) {
  
     model.addAttribute("riva", rivaList); 
      model.addAttribute("com_seq",rivaList.get(0).getCom_seq());//권석전문가의 가르침
    
  } else if(rivaList.size() == 0){
	  model.addAttribute("riva", rivaList); 
      model.addAttribute("com_seq",com_seq);//권석전문가의 가르침
  }else {
   
     model.addAttribute("common/error");
  }

 return "client/insertCllientOfRiva.tiles";
 }

   //경쟁사 등록 컨트롤러
 @RequestMapping(value="/insertRivaOfClient.do", method=RequestMethod.POST)
	public String insertRivaOfClient( @RequestParam(name="com_seq",required=false) int com_seq, ClientVO riva, Model model){ 
		System.out.println("####### Hello this is insertRivaOfClient.do 경쟁사 등록 "); 
		int result = 0;
		System.out.println("고객의 시퀀스:" +riva.getCom_seq());
		
		result = clientService.insertRivaOfClient(riva);	//  고객추가
		System.out.println("서비스 통과");
		System.out.println(riva);
		System.out.println(result);
		String vfn = "client/clientForRiva.tiles";
		
		 if (result > 0) {
			 model.addAttribute("riva", riva);
			 model.addAttribute("com_seq", com_seq); //com_seq가 없으면 뷰로 갈 수 없다. //은 + 선아주임님의 가르침 ㅠ
			 model.addAttribute("msg", "고객등록 성공");
			 vfn= "redirect:/clientForRiva.do";  
	        } else {
	        	vfn = "client/insertCllientOfRiva.tiles";
	            model.addAttribute("msg", "고객등록실패!");
	        
		}
		return vfn; 
 }
 
 //고객관리에서 경쟁사 수정하기로 이동하는 버튼
 @RequestMapping("moveUpateClientOfRiva.do")
 public String moveUpdateRival(Model model, @RequestParam(name="rival_seq") int rival_seq,
		 @RequestParam(name="com_seq") int com_seq ) {
System.out.println("수정하기로 이동 하는 컨트롤러");
RivalVO rival = rivalService.selectRivaDetail(rival_seq);
 System.out.println(rival_seq);

 model.addAttribute("rival", rival);

 return "client/updateRivalDetail.tiles";
 }
 
// 고객관리에서 경쟁사 수정하기
	@RequestMapping(value="updateClientOfRiva.do")
	public String updateRival(@RequestParam(name="page",required=false)String page,
			@RequestParam(name="rival_seq",required=false) int rival_seq,
			@RequestParam(name="com_seq",required=false) int com_seq,
			RivalVO rival, Model model, HttpServletRequest request) {
		System.out.println("수정하기 컨트롤러");
		System.out.println("rival_seq: "+ rival_seq);
		System.out.println("com_seq: "+ com_seq);
		int result = rivalService.updateMyRival(rival);
		
		
		System.out.println("정보수정 서비스 통과");
		
	
		if(result > 0) {
		
			model.addAttribute("rival", rival);
		/*	model.addAttribute("rival_seq", rival.getRival_seq());
			model.addAttribute("com_seq", rival.getCom_seq());*/
			model.addAttribute("rival_seq", rival_seq);
			model.addAttribute("com_seq", com_seq);
			model.addAttribute("page", page);
		    
			 return "redirect:clientForRiva.do";
			

		}else {
			model.addAttribute("message", "고객 정보 수정 실패");
			 return "client/updateRivalDetail.tiles";
			
		}
		
	}


        //해당 고객의 상표목록으로 이동      
 @RequestMapping(value="/clientOfTradeMark.do", method=RequestMethod.GET)
	public String selectClientOfTmList(@RequestParam(name="page",required=false)String page, 
			 @RequestParam(name="com_seq",required=false)int com_seq, 
			 @RequestParam(name="com_company_name",required=false)String com_company_name,  Model model ){
		System.out.println("####### Hello this is 해당 고객이 상표 보유 목록 클래스 "); 
		
       int tmCount = clientService.tmCount(com_seq); //해당 고객이 보유한 상표 갯수 카운트
       ClientVO client = clientService.selectClientDetail(com_seq);
                         System.out.println("고객 한명:" + client);
    
          model.addAttribute("listCount",tmCount);  //리스트 전체 갯수
          model.addAttribute("page", page);
          model.addAttribute("client", client);
          model.addAttribute("com_seq",client.getCom_seq());
          model.addAttribute("com_company_name",client.getCom_company_name()); //권석전문가의 가르침

		return "client/clientOfTradeMark.tiles"; 
		} 
 
//해당 고객이 보유한 특허고객번호 목록을 누르면 자동 검색 컨트롤러 
@RequestMapping(value="/clientOfTmSearchList.do", method=RequestMethod.GET)
	public String selectclientOfTmSearchList(@RequestParam(name="page",required=false)String page, 
			@RequestParam(name="com_seq",required=false) int com_seq,
			@RequestParam(name="kipo_no",required=false)String kipo_no, ClientVO client,
			 Model model, HttpServletRequest request){
		System.out.println("####### Hello this is 해당 고객이 상표 보유 목록 클래스 "); 
		
		System.out.println("그냥 키포노" + kipo_no);
		System.out.println("시퀀스" + com_seq);
		 int currentPage = 1;
		 if(page !=null) {
		 currentPage = Integer.parseInt(page);
		 }
		
	      //페이징
          int limit = 10;
	   int tmCount = clientService.clientKipoCount(client); //해당 고객이 보유한 상표 갯수 카운트
	   System.out.println("고객 상표 카운트 통과");
	   
	 //페이지 수 계산
       int maxPage = (int)((double)tmCount / limit + 0.9);
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
       map.put("com_seq",com_seq);
       map.put("kipo_no",kipo_no);
      
       List<ClientVO> clientOfTmList = clientService.selectClientForTmList(map); //해당 고객의 라이벌 리스트
       
 
       System.out.println("등록 고객 수 : " + clientOfTmList.size());
       System.out.println(map);
       System.out.println(clientOfTmList);
      
       
       if(clientOfTmList != null && clientOfTmList.size() > 0) {
          model.addAttribute("list",clientOfTmList);    //전체리스트
          model.addAttribute("listCount",tmCount);  //리스트 전체 갯수
          model.addAttribute("maxPage",maxPage);
          model.addAttribute("currentPage",currentPage);
          model.addAttribute("startPage",startPage);
          model.addAttribute("endPage",endPage);
          model.addAttribute("limit",limit);
          model.addAttribute("page", page);
          model.addAttribute("kipo_no", kipo_no);
          model.addAttribute("client", client);
          model.addAttribute("com_seq",clientOfTmList.get(0).getCom_seq());
          model.addAttribute("com_company_name",clientOfTmList.get(0).getCom_company_name()); //권석전문가의 가르침
     
       } else {
          model.addAttribute("message", currentPage + "페이지 목록 조회 실패");
          model.addAttribute("common/error");
       }
		
		return "client/clientOfTradeMarkList.tiles"; 
		} 
  
			//고객의 상표 상세 보기
			@RequestMapping("tmDetailForClient.do")
			public ModelAndView selectClientOfTmDetail(@RequestParam(name="page",required=false)String page, 
					 @RequestParam(name="tm_seq",required=false) int tm_seq,
					 @RequestParam(name="com_seq",required=false) int com_seq, 
					 ClientVO clientOfTm1,
					ModelAndView mv ) {
				System.out.println("고객상세보기 컨트롤러 입성");

				 clientOfTm1 = clientService.selectClientOfTmDetail(clientOfTm1);
				System.out.println("clientOfTm1: " + clientOfTm1);
		
		 
			System.out.println("고객상세보기 서비스 통과");
		
			if (clientOfTm1 != null) {
			mv.addObject("Tm", clientOfTm1);
			mv.addObject("tm_seq", clientOfTm1.getTm_seq());
			mv.addObject("com_seq", clientOfTm1.getCom_seq());
		
			
			mv.setViewName("client/clientOfTmDetail.tiles");
			} else {
			mv.addObject("message", "고객 상세 조회 실패");
			mv.setViewName("common/error");
			}
			return mv;
			
			}
	
	
}
