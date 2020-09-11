package com.solstice.users.service;


import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.solstice.users.service.UsersService;
import com.solstice.users.service.UsersVO;

@Service("usersService")
public class UsersServiceImpl implements UsersService{
	
	@Autowired
	private SqlSessionTemplate mybatisSession;


	@Override
	public int selectCheckEmail(String user_email) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectCheckEmail",user_email);
	
	}

	@Override
	public int insertUsers(UsersVO users) {
		// TODO Auto-generated method stub
		return mybatisSession.insert("insertUsers",users);
		
	}
	@Override
	public UsersVO moveMyPageEdit(String email) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("moveMyPageEdit",email);
	
	}


	@Override
	public int updateMyPage(UsersVO users) {
		// TODO Auto-generated method stub
		return mybatisSession.update("updateMyPage",users);
	
	}



	@Override
	public UsersVO selectUsersLogin(UsersVO users) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectUsersLogin",users);

	}

	
}
