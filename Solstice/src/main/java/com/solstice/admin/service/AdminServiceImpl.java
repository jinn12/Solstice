package com.solstice.admin.service;

/*import java.util.List;*/
/*import java.util.Map;*/

/*import javax.annotation.Resource;*/


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.solstice.admin.service.AdminService;
import com.solstice.admin.service.AdminVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	@Autowired
	private SqlSessionTemplate mybatisSession;


	@Override
	public AdminVO selectAdminLogin(AdminVO admin) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectAdminLogin",admin);
	}

}
