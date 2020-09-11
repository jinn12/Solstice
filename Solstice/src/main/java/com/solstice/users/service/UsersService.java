package com.solstice.users.service;

import java.util.HashMap;

public interface UsersService {

	
UsersVO selectUsersLogin(UsersVO users);

int selectCheckEmail(String user_email);

int insertUsers(UsersVO users);

UsersVO moveMyPageEdit(String email);

int updateMyPage(UsersVO users);









}
