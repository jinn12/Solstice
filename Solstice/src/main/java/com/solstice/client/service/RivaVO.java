package com.solstice.client.service;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class RivaVO implements Serializable{
	 private static final long serialVersionUID = 10098L;
	 
	    private int com_seq;
	 private int rival_seq;
	 private String rival_company_name;	
	 private String rival_biz_no;
	 private String rival_ceo;
	 private String rival_kipo_no_list;
	 private String reg_time;
	 private String mod_time;
	 private String rival_reg_time;
	 private String rival_mod_time;
	 private String rival_reg_no;
	 private String rival_company_name2;
	 private String demander_keyword;
	 private String claimee_keyword;
	 
	 public RivaVO() {}

	public RivaVO(int com_seq, int rival_seq, String rival_company_name, String rival_biz_no, String rival_ceo,
			String rival_kipo_no_list, String reg_time, String mod_time, String rival_reg_time, String rival_mod_time,
			String rival_reg_no, String rival_company_name2, String demander_keyword, String claimee_keyword) {
		super();
		this.com_seq = com_seq;
		this.rival_seq = rival_seq;
		this.rival_company_name = rival_company_name;
		this.rival_biz_no = rival_biz_no;
		this.rival_ceo = rival_ceo;
		this.rival_kipo_no_list = rival_kipo_no_list;
		this.reg_time = reg_time;
		this.mod_time = mod_time;
		this.rival_reg_time = rival_reg_time;
		this.rival_mod_time = rival_mod_time;
		this.rival_reg_no = rival_reg_no;
		this.rival_company_name2 = rival_company_name2;
		this.demander_keyword = demander_keyword;
		this.claimee_keyword = claimee_keyword;
	}

	public int getCom_seq() {
		return com_seq;
	}

	public void setCom_seq(int com_seq) {
		this.com_seq = com_seq;
	}

	public int getRival_seq() {
		return rival_seq;
	}

	public void setRival_seq(int rival_seq) {
		this.rival_seq = rival_seq;
	}

	public String getRival_company_name() {
		return rival_company_name;
	}

	public void setRival_company_name(String rival_company_name) {
		this.rival_company_name = rival_company_name;
	}

	public String getRival_biz_no() {
		return rival_biz_no;
	}

	public void setRival_biz_no(String rival_biz_no) {
		this.rival_biz_no = rival_biz_no;
	}

	public String getRival_ceo() {
		return rival_ceo;
	}

	public void setRival_ceo(String rival_ceo) {
		this.rival_ceo = rival_ceo;
	}

	public String getRival_kipo_no_list() {
		return rival_kipo_no_list;
	}

	public void setRival_kipo_no_list(String rival_kipo_no_list) {
		this.rival_kipo_no_list = rival_kipo_no_list;
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

	public String getRival_reg_time() {
		return rival_reg_time;
	}

	public void setRival_reg_time(String rival_reg_time) {
		this.rival_reg_time = rival_reg_time;
	}

	public String getRival_mod_time() {
		return rival_mod_time;
	}

	public void setRival_mod_time(String rival_mod_time) {
		this.rival_mod_time = rival_mod_time;
	}

	public String getRival_reg_no() {
		return rival_reg_no;
	}

	public void setRival_reg_no(String rival_reg_no) {
		this.rival_reg_no = rival_reg_no;
	}

	public String getRival_company_name2() {
		return rival_company_name2;
	}

	public void setRival_company_name2(String rival_company_name2) {
		this.rival_company_name2 = rival_company_name2;
	}

	public String getDemander_keyword() {
		return demander_keyword;
	}

	public void setDemander_keyword(String demander_keyword) {
		this.demander_keyword = demander_keyword;
	}

	public String getClaimee_keyword() {
		return claimee_keyword;
	}

	public void setClaimee_keyword(String claimee_keyword) {
		this.claimee_keyword = claimee_keyword;
	}

	@Override
	public String toString() {
		return "RivaVO [com_seq=" + com_seq + ", rival_seq=" + rival_seq + ", rival_company_name=" + rival_company_name
				+ ", rival_biz_no=" + rival_biz_no + ", rival_ceo=" + rival_ceo + ", rival_kipo_no_list="
				+ rival_kipo_no_list + ", reg_time=" + reg_time + ", mod_time=" + mod_time + ", rival_reg_time="
				+ rival_reg_time + ", rival_mod_time=" + rival_mod_time + ", rival_reg_no=" + rival_reg_no
				+ ", rival_company_name2=" + rival_company_name2 + ", demander_keyword=" + demander_keyword
				+ ", claimee_keyword=" + claimee_keyword + "]";
	}

	
	
}
