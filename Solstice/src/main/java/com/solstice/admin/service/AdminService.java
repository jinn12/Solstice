package com.solstice.admin.service;
/*
import java.util.List;
import java.util.Map;*/

public interface AdminService {
	
	/*
	@SuppressWarnings("rawtypes")
	List<Map> selectAdminList() throws Exception;
*/
	AdminVO selectAdminLogin(AdminVO admin); 
	

}
