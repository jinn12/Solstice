package com.solstice.admin.web;

/*import java.util.List;*/
import java.util.Map;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solstice.admin.service.AdminService;
import com.solstice.admin.service.AdminVO;


@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	public AdminController() {};
	 
	/*@SuppressWarnings("rawtypes")
	@RequestMapping(value ="adminList.do")
	public String adminList(ModelMap model) throws Exception{
		
		System.out.println("adminController 입성1");
		
		List<Map> selectAdminList = adminService.selectAdminList();
		System.out.println("리스트" + selectAdminList);
		model.addAttribute ("selectAdminList", selectAdminList);
		
		return "admin/adminList.tiles";
		
		
		
	}*/
	// 로그인 페이지 이동
	@RequestMapping("moveAdLogin.do")
	public String moveLoginPagee(ModelMap model) {
		System.out.println("로그인 페이지 입성");
		return "admin/login";
	}
	
	// 관리자 로그인
		@RequestMapping(value="adlogin.do", method= {RequestMethod.POST, RequestMethod.GET})
		public String selectAdminLogin(AdminVO admin, HttpServletRequest req,ModelMap model) {
			HttpSession session = req.getSession();
			
			System.out.println("관리자 로그인 컨트롤러 입성");
				
			AdminVO loginUser = adminService.selectAdminLogin(admin);
			
			System.out.println(loginUser);
			
				String vfn = "notice/noticeList.tiles";
				
				if(loginUser != null) {
					session.setAttribute("loginUser",loginUser);
					vfn= "redirect:/noticeList.do";
					
					
				}else {
					vfn = "admin/login";
					model.addAttribute("loginFail", "로그인 실패!");
					model.addAttribute("message", "가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.");
					
				}
				
				
				return vfn;
			}	
		
		// 회원 로그아웃
		@RequestMapping("adlogout.do")	
		public String usersLogout(HttpServletRequest request) {
			HttpSession session = request.getSession(false);
			if(session != null) {
				session.invalidate();
			}
			return "admin/login";
		}
	

}
