package com.solstice.users.service;

import java.io.Serializable;


import org.springframework.stereotype.Component;
@Component
public class UsersVO implements Serializable {
       private static final long serialVersionUID = 10001L;
       
       private int user_seq;
       private String user_email;
       private String user_pw;
       private String user_name;
       private String user_auth;
       private String reg_time;
       private String mod_time;
       private String pw_mod_time;
       
       public UsersVO() {}
       
       

	public UsersVO(int user_seq, String user_email, String user_pw, String user_name, String user_auth, String reg_time,
			String mod_time, String pw_mod_time) {
		super();
		this.user_seq = user_seq;
		this.user_email = user_email;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_auth = user_auth;
		this.reg_time = reg_time;
		this.mod_time = mod_time;
		this.pw_mod_time = pw_mod_time;
	}



	public int getUser_seq() {
		return user_seq;
	}

	public void setUser_seq(int user_seq) {
		this.user_seq = user_seq;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_auth() {
		return user_auth;
	}

	public void setUser_auth(String user_auth) {
		this.user_auth = user_auth;
	}

	public String getReg_time() {
		return reg_time;
	}

	public void setReg_time(String reg_time) {
		this.reg_time = reg_time;
	}

	public String getMod_time() {
		return mod_time;
	}

	public void setMod_time(String mod_time) {
		this.mod_time = mod_time;
	}

	public String getPw_mod_time() {
		return pw_mod_time;
	}

	public void setPw_mod_time(String pw_mod_time) {
		this.pw_mod_time = pw_mod_time;
	}



	@Override
	public String toString() {
		return "UsersVO [user_seq=" + user_seq + ", user_email=" + user_email + ", user_pw=" + user_pw + ", user_name="
				+ user_name + ", user_auth=" + user_auth + ", reg_time=" + reg_time + ", mod_time=" + mod_time
				+ ", pw_mod_time=" + pw_mod_time + "]";
	}




       
	}

