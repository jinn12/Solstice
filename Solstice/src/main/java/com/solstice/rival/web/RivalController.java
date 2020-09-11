package com.solstice.rival.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
import com.solstice.rival.service.RivalService;
import com.solstice.rival.service.RivalVO;




@Controller
public class RivalController {
	private static final Logger logger = LoggerFactory.getLogger(RivalController.class);
	
	@Autowired
	private RivalService rivalService;

	
	public RivalController() {};
	
	//경쟁사 목록으로 이동
			@RequestMapping(value="/rivalList.do", method=RequestMethod.GET)
			public String selectRivalList(@RequestParam(name="page",required=false)String page, 
					 Model model ){
				System.out.println("####### Hello this is CompetitorController 클래스 "); 
				 logger.info("page : " + page);
				 String flag = "rival";
				 int currentPage = 1;
				 if(page !=null) {
				 currentPage = Integer.parseInt(page);
				 }
			      //페이징
		          int limit = 10;
		          int rivalCount = rivalService.rivalCount(); // 해당 고객이 지정한 경쟁사의 건 수
		          
		          logger.info("listCount : " + rivalCount + ", currentPage : " + currentPage);
		     
		          //페이지 수 계산
		          int maxPage = (int)((double) rivalCount/ limit + 0.9);
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
		        
		          List<RivalVO> rivaList = rivalService.selectRivalList(map); //해당 고객의 라이벌 리스트
		         
	              
		          System.out.println("등록 고객 수 : " + rivaList.size());
		          System.out.println(map);
		          System.out.println(rivaList);
		       
		          
		          
		          
		          if(rivaList != null && rivaList.size() > 0) {
		             model.addAttribute("list",rivaList);    //전체리스트
		             model.addAttribute("listCount",rivalCount);  //리스트 전체 갯수
		             model.addAttribute("maxPage",maxPage);
		             model.addAttribute("currentPage",currentPage);
		             model.addAttribute("startPage",startPage);
		             model.addAttribute("endPage",endPage);
		             model.addAttribute("limit",limit);
		             model.addAttribute("page", page);
		             model.addAttribute("com_seq",rivaList.get(0).getCom_seq());
		             model.addAttribute("com_company_name",rivaList.get(0).getRival_seq()); //권석전문가의 가르침
		             model.addAttribute("flag", flag);
		        
		          } else {
		             model.addAttribute("message", currentPage + "페이지 목록 조회 실패");
		             model.addAttribute("common/error");
		          }
				
				return "rival/rivalList.tiles"; 
				} 
			
			//경쟁사 검색 
	
			   @RequestMapping("selectRivalSearchList.do")
			   public String selectRivalSearchList(Model model,ClientVO client,
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
			      
			      int searchCount = rivalService.rivalSearchListCount(mapp);

			      logger.info(currentPage + ", " + searchCount);


			    
			      
			      
			      //페이지 수 계산
		          int maxPage = (int)((double)searchCount / limit + 0.9);
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
			            map.put("searchCount", searchCount);


			            List<RivalVO> rlist = rivalService.selectRivalSearchList(map);
			         
			            logger.info("고객 수 : " + rlist.size());
			            
			            
			            if(rlist != null && rlist.size() > 0) {
			               model.addAttribute("search", search);
			               model.addAttribute("searchtype",searchtype);
			               model.addAttribute("list", rlist); // 리스트에 담은 전체 정보
			               model.addAttribute("listCount", searchCount); // 전체갯수
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
			            
			      
			            return "rival/rivalList.tiles"; 
			   }
			   
			//경쟁사 상세보기
			
				@RequestMapping("rivalDetail.do")
				public ModelAndView selectRivaDetail(@RequestParam(name="page",required=false)String page, 
						 @RequestParam(name="rival_seq",required=false) int rival_seq, ModelAndView mv ) {
					System.out.println("경쟁사 상세보기 컨트롤러 입성");

				RivalVO rival = rivalService.selectRivaDetail(rival_seq);
				//int rivalOfClientCount = rivalService.rivalOfClientCount(rival_seq); // 해당 경쟁사에게 지정된 고객의 건 수
				int tmCount = rivalService.rivaltmCount(rival_seq); //해당 경쟁사가 보유한 상표 갯수 카운트
			
				System.out.println("고객상세보기 서비스 통과");
				System.out.println(rival);

				
				//이거 나중에 맵퍼에서 쿼리문 따로 만들기
				if (rival != null) {
				mv.addObject("rival", rival);
				mv.addObject("tmCount", tmCount);

				mv.setViewName("rival/rivalDetail.tiles");
				} else {
				mv.addObject("message", "경쟁사 상세 조회 실패");
				mv.setViewName("common/error");
				}
				return mv;
				
				}
				
				//해당 경쟁사의 상표 목록으로 이동
		     	@RequestMapping(value="/rivalForTmList.do", method=RequestMethod.GET)
				public String selectRivalForTmList(@RequestParam(name="page",required=false)String page, 
						@RequestParam(name="rival_seq",required=false) int rival_seq,
						@RequestParam(name="kipo_no",required=false)String kipo_no,RivalVO rival,
						 Model model, HttpServletRequest request){
					System.out.println("####### Hello this is 테스트 중입니다. "); 
					/*rival.setKipo_no(kipo_no);
					System.out.println("겟 키포노: " + rival.getKipo_no());*/
					System.out.println("그냥 키포노" + kipo_no);
					System.out.println("시퀀스" + rival_seq);
					 int currentPage = 1;
					 if(page !=null) {
					 currentPage = Integer.parseInt(page);
					 }
					
				      //페이징
			          int limit = 10;
					
					/* int tmCount = rivalService.rivaltmCount(rival_seq); //해당 고객이 보유한 상표 갯수 카운트
					 System.out.println("고객 상표 카운트 통과");*/
			          
			          int tmCount = rivalService.rivalKipoCount(rival);
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
			          map.put("rival_seq",rival_seq);
			          map.put("kipo_no",kipo_no);
			          
			          List<RivalVO> rivalOfTmList = rivalService.selectRivalForTmList(map); //해당 고객의 라이벌 리스트
			          System.out.println(rivalOfTmList);
			          if(rivalOfTmList != null && rivalOfTmList.size() > 0) {
			        	  
			        	  model.addAttribute("list",rivalOfTmList);    //전체리스트
				             model.addAttribute("listCount",tmCount);  //리스트 전체 갯수
				             model.addAttribute("maxPage",maxPage);
				             model.addAttribute("currentPage",currentPage);
				          	 model.addAttribute("startPage",startPage);
				             model.addAttribute("endPage",endPage);
				             model.addAttribute("limit",limit);
				             model.addAttribute("page", page);
				             model.addAttribute("rival", rival);
				             model.addAttribute("kipo_no", kipo_no);
				          model.addAttribute("rival_company_name",rivalOfTmList.get(0).getCom_company_name()); //권석전문가의 가르침
				    model.addAttribute("rival_seq",rivalOfTmList.get(0).getRival_seq()); //권석전문가의 가르침
			          }else {
			              model.addAttribute("message", currentPage + "페이지 목록 조회 실패");
			              model.addAttribute("common/error");
			           }
					return "rival/rivalOfTmSearchList.tiles"; 
					} 
				
				//해당 경쟁사의 상표 목록으로 이동
				@RequestMapping(value="/rivalOfTradeMark.do", method=RequestMethod.GET)
				public String selectRivalOfTm(@RequestParam(name="page",required=false)String page, 
						 @RequestParam(name="rival_seq",required=false) int rival_seq, 
						 @RequestParam(name="rival_company_name",required=false) String rival_company_name, Model model ){
				
			          int tmCount = rivalService.rivaltmCount(rival_seq); //해당 고객이 보유한 상표 갯수 카운트
			      
			            RivalVO rival = rivalService.selectRivaDetail(rival_seq);
			           
			           System.out.println(rival.getRival_kipo_no_list());
			           /* String[] arr = rival.getRival_kipo_no_list().split(",");
			            List<String> kipo_no = new ArrayList<String>();
			           
			            for(int i =0 ; i < arr.length ; i++) {
			            	kipo_no.add(i, arr[i]);
			            	System.out.println("W : "+arr[i]);
			            }
			           */
				
			          model.addAttribute("listCount",tmCount);  //리스트 전체 갯수
			         /* model.addAttribute("kipo_no", kipo_no); // 특허고객번호 분리
*/			             model.addAttribute("page", page);
			             model.addAttribute("rival", rival);
			             model.addAttribute("rival_seq",rival.getCom_seq());
			             model.addAttribute("rival_company_name",rival.getCom_company_name()); //권석전문가의 가르침
			    
					return "rival/rivalOfTradeMark.tiles"; 
					} 
				
				//경쟁사의 상표 중 상세보기로 이동
				//경쟁사의 상표 상세 보기
				@RequestMapping("tmDetailForRival.do")
				public ModelAndView selectRivalOfTmDetail(@RequestParam(name="page",required=false)String page, 
						 @RequestParam(name="tm_seq",required=false) int tm_seq,
						 @RequestParam(name="rival_seq",required=false) int rival_seq, 
						 RivalVO rivalOfTm1,
						ModelAndView mv ) {
					System.out.println("경쟁사 컨트롤러 입성");

					rivalOfTm1 =  rivalService.selectRivalOfTmDetail(rivalOfTm1);
					System.out.println("rivalOfTm1: " + rivalOfTm1);
			
			 
				System.out.println("경쟁사 상세보기 서비스 통과");
				System.out.println(rivalOfTm1);
			
				//System.out.println(rivaList);
				
				//이거 나중에 맵퍼에서 쿼리문 따로 만들기
				if (rivalOfTm1 != null) {
				mv.addObject("Tm", rivalOfTm1);
				mv.addObject("tm_seq", rivalOfTm1.getTm_seq());
				mv.addObject("rival_seq",rivalOfTm1.getRival_seq());
			
				
				mv.setViewName("rival/rivalOfTmDetail.tiles");
				} else {
				mv.addObject("message", "고객 상세 조회 실패");
				mv.setViewName("common/error");
				}
				return mv;
				
				}
				
				
				
				//경쟁사 목록에서 경쟁사 삭제하기
				   //목록에서 고객 삭제하기
			    @RequestMapping("deleteRival.do")
			    public void deleteQna(@RequestParam(value="rival_seq") int rival_seq, HttpServletResponse response) throws IOException {
			       int result = rivalService.deleteRival(rival_seq);
			       
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
			  

				//경쟁사 등록으로 이동하기
				@RequestMapping(value="/moveInsertRival.do", method=RequestMethod.GET)
				public String insertMyClient(){ 
					System.out.println("####### Hello this is MyInsertClietn 클래스 "); 
					return "rival/insertRival.tiles"; 
					
					} 
				
			    //경쟁사 등록 하기 
				@RequestMapping(value="/insertRival.do", method=RequestMethod.POST)
				public String inserClient(RivalVO rival, Model model){ 
					System.out.println("####### Hello this is inserClient.do 경쟁사 등록"); 
					int result = 0;
					
					result = rivalService.insertRival(rival);	//  고객추가
					
					String vfn = "rival/rivalList.tiles";
					
					 if (result > 0) {
						 model.addAttribute("rival", rival);
						 model.addAttribute("msg", "경쟁사등록 성공");
						 vfn= "redirect:/rivalList.do";  
				        } else {
				        	vfn = "rival/insertRival.tiles";
				            model.addAttribute("msg", "경쟁사 등록실패!");
				        
					}
					return vfn; 
				
				}
				
				 //경쟁사 수정하기로 이동하는 버튼
			    @RequestMapping("MoveUpateRival.do")
			    public String moveUpdateRival(Model model, @RequestParam(name="rival_seq") int rival_seq) {
			System.out.println("수정하기로 이동 하는 컨트롤러");
			RivalVO rival = rivalService.selectRivaDetail(rival_seq);
			    System.out.println(rival_seq);

			    model.addAttribute("rival", rival);
			 
			    return "rival/updateRivalDetail.tiles";
			    }
			    
			 // 경쟁사 수정
				@RequestMapping(value="updateRival.do")
				public String updateRival(@RequestParam(name="page",required=false)String page,RivalVO rival, Model model, HttpServletRequest request) {
					System.out.println("수정하기 컨트롤러");
					System.out.println("rival_seq: "+rival.getRival_seq());
					int result = rivalService.updateMyRival(rival);
					
					
					System.out.println("정보수정 서비스 통과");
					
					String vfn = null;
					
					if(result > 0) {
						// 업데이트 성공하면 세션 가져와 로그아웃 후 재로그인 하게 만들기
						model.addAttribute("rival", rival);
						model.addAttribute("rival_seq", rival.getRival_seq());
						model.addAttribute("page", page);
					    
						 return "redirect:rivalList.do";
						

					}else {
						model.addAttribute("message", "고객 정보 수정 실패");
						 return "rival/updateRivalDetail.tiles";
						
					}
					
				}
				
				//경쟁사 상세페이지에서 삭제
			     @RequestMapping("deleteDetailRival.do")
				public String deleteDetailRival(Model model, @RequestParam("rival_seq") int rival_seq) {
				int result = rivalService.deleteDetailRival(rival_seq);
				String view = "";
				if (result > 0) {
				view = "redirect:rivalList.do";
				} else {
				model.addAttribute("message", "경쟁사 삭제 실패");
				view = "common/error";
				}
				return view;
				}
		
	}