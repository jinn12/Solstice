package com.solstice.users.web;

import java.io.IOException;
import java.io.PrintWriter;


import javax.security.auth.login.LoginException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*import org.mindrot.jbcrypt.BCrypt;*/
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.solstice.users.service.UsersService;
import com.solstice.users.service.UsersVO;

@Controller
public class UsersController {
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	
	
	@Autowired
	private UsersService usersService;
	public BCryptPasswordEncoder bcryptPasswordEncoder;   //암호화
	public UsersController() {};
	// 로그인 페이지 이동
	  
			@RequestMapping("moveLogin.do")
			public String moveLoginPage(ModelMap model) {
			
				System.out.println("분석가 로그인 컨트롤러 이동");
				return "users/usersLogin";
			}
			// 회원가입 페이지 이동
			@RequestMapping("moveEnrollPage.do")
			public String moveEnrollPage() {
				return "users/enrollPage";
			}
			
			// 이메일 중복확인
			@RequestMapping(value="checkEmail.do", method=RequestMethod.POST)
			public void selectCheckEmail(@RequestParam(value="user_email") String user_email, HttpServletResponse response) throws IOException {
				
				logger.info("email: " + user_email);
				int result = usersService.selectCheckEmail(user_email);

				
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
	/*		
		// 회원가입  (+암호화 처리 기능)
			@RequestMapping(value="insertUsers.do", method=RequestMethod.POST)
			public String insertUsers(UsersVO users, Model model) {
				BCryptPasswordEncoder bcryptPasswordEncoder = new BCryptPasswordEncoder();
			    String encPassword = bcryptPasswordEncoder.encode(users.getPw());
			    System.out.println(encPassword);
			    users.setPw(encPassword);
			    int result = usersService.insertUsers(users);
			    if (result > 0) {
		            return "users/enrollSuccess";
		        } else {
		            model.addAttribute("msg", "회원가입 실패!");
		            return "common/error";
		        }

		
			}*/
			// 회원가입
			@RequestMapping(value="insertUsers.do", method=RequestMethod.POST)
			public String insertUsers(UsersVO users, Model model) {
				//users.setUserpwd(bcryptPasswordEncoder.encode(users.getUserpwd()));
				int result = 0;
				
				result = usersService.insertUsers(users);	// users 테이블 추가
				 if (result > 0) {
			            return "users/enrollSuccess";
			        } else {
			            model.addAttribute("msg", "회원가입 실패!");
			            return "common/error";
			        }

			}
			// 연습
						@RequestMapping(value="pr.do", method=RequestMethod.POST)
						public String pr() {
						;
						            return "users/enrollPage2.tiles";
						        }

	
				
	


	// 회원 로그인
	      
		@RequestMapping(value="userLogin.do", method= {RequestMethod.POST, RequestMethod.GET})
		public String selectUsersLogin(UsersVO users,HttpSession session,ModelMap model) throws LoginException {
	
			UsersVO loginUser = usersService.selectUsersLogin(users);
			System.out.println("loginUser" + loginUser);
			System.out.println("users" + users);
			
			String vfn = "main/LoginMain.tiles";
			
			if(loginUser != null) {
		        session.setAttribute("loginUser", loginUser);
				vfn = "redirect:/loginMain.do";
				
				}else {
					vfn = "users/usersLogin";
					model.addAttribute("loginFail", "로그인 실패!");
					model.addAttribute("message", "탈퇴한 계정입니다. 탈퇴일로부터 30일 내에는 동일한 이메일로 재가입이 불가능합니다.");
				}
			
			return vfn;
		}	
		
	
	
	
		// 회원 로그아웃
				@RequestMapping("logout.do")	
				public String usersLogout(HttpServletRequest request) {
					HttpSession session = request.getSession(false);
					if(session != null) {
						session.invalidate();
					}
					return "main/main";
				}
			
			/*	// 내정보 수정 페이지 이동
				@RequestMapping("moveMyPageEdit.do")
				public String moveMyPageEdit(HttpSession session, Model model, UsersVO user) {
					System.out.println("내 정보 수정으로 이동 컨트롤러");
					String vfn = null;
					System.out.println(session);
					if(session != null) {
						
						UsersVO users = usersService.moveMyPageEdit(user.getEmail());
						System.out.println("내 정보 수정으로 이동 컨트롤러2");
						model.addAttribute("user", users);
						vfn = "users/mypageEdit";
					} else {
						vfn = "cmmm/egovError";
						model.addAttribute("message", "내정보 수정 페이지 조회 실패!");
					}
					return vfn;
				}*/
				
				// 내정보 수정 페이지 이동
				@RequestMapping("moveMyPageEdit.do")
				public String moveMyPageEdit(HttpSession session, Model model) {
					String vfn = null;
					System.out.println("수정페이지로 이동");
			System.out.println(session);
					if(session != null) {
						UsersVO loginUser = (UsersVO)session.getAttribute("loginUser");
						System.out.println(loginUser);
						UsersVO user = usersService.moveMyPageEdit(loginUser.getUser_email());
						model.addAttribute("user", user);
						vfn = "users/mypageEdit";
						System.out.println("수정페이지로 이동2");
					} else {
						vfn = "common/error";
						model.addAttribute("message", "내정보 수정 페이지 조회 실패!");
					}
					return vfn;
				}
				
				
			
				// 내정보 수정
			/*	@RequestMapping(value="updateMyPage.do", method=RequestMethod.POST)
				public String updateMyPage(UsersVO users, Model model, HttpServletRequest request) {
					System.out.println("내 정보 수정 하러 왔다.");
					int result = usersService.updateMyPage(users);
				System.out.println("내 정보 수정 성공이다.");
					String vfn = null;
					
					if(result > 0) {
						// 업데이트 성공하면 세션 가져와 로그아웃 후 재로그인 하게 만들기
						HttpSession session = request.getSession(false);
						if(session != null) {
							session.invalidate();
						}
						vfn = "users/usersLogin";
						
						model.addAttribute("message", "내 정보 수정에 성공하였습니다. 다시 로그인해주세요.");
					}else {
						vfn = "message";
						model.addAttribute("message", "내 정보 수정에 실패하여 메인페이지로 이동합니다.");
					}
							
					
					return vfn;
				}
				*/
				
				// 내정보 수정시 비밀번호 재확인(오브제회원)
				@RequestMapping("reaffirmUserpwd.do")
				public String reaffirmUserpwd(UsersVO users, Model model) {
					UsersVO loginUser2 = usersService.selectUsersLogin(users);
					System.out.println("내 정보 수정시 비밀번호 재확인");
					String vfn = null;
					if(loginUser2 != null) {
						vfn = "user/mypageEdit";
						model.addAttribute("loginUser2", loginUser2);
					}else {
						vfn = "user/reaffirmUserpwd";
						model.addAttribute("message", "입력 정보가 일치하지 않습니다. 다시 입력해주세요");
					}
					return vfn;
						
				}
				
				// 내정보 수정
				@RequestMapping(value="updateMyPage.do", method=RequestMethod.POST)
				public String updateMyPage(UsersVO users, Model model, HttpServletRequest request) {
					int result = usersService.updateMyPage(users);
					System.out.println("정보수정 서비스 통과");
					
					String vfn = null;
					
					if(result > 0) {
						// 업데이트 성공하면 세션 가져와 로그아웃 후 재로그인 하게 만들기
						HttpSession session = request.getSession(false);
						System.out.println("세션:" + session);
						System.out.println("리퀘스트: " + request);
						if(session != null) {
							session.invalidate();
						}
						return "users/usersLogin";
			
					}else {
						vfn = "message";
						model.addAttribute("message", "내 정보 수정에 실패하여 메인페이지로 이동합니다.");
					}
					

					
					return vfn;
				}
				
			
}