package com.solstice.tradename.service;

import java.io.Serializable;

import org.springframework.stereotype.Component;
@Component
public class TradeNameVO  implements Serializable{
	private static final long serialVersionUID = 10005L;
	
	private int brand_seq;
	private String brand_name;
	private String brand_name2;
	private String ceo;
	private String brand_roman1;
	private String brand_roman2;
	private String brand_roman3;
	private String addr;
	private String tel;
	private String biz_cate_code;
	private String biz_cate_name;
	private String biz_no;
	private String reg_no;
    private char biz_date;
	private String naver_map_url;
	private char reg_time;
	private char del_flag;
	
	public TradeNameVO() {}

	public TradeNameVO(int brand_seq, String brand_name, String brand_name2, String ceo, String brand_roman1,
			String brand_roman2, String brand_roman3, String addr, String tel, String biz_cate_code,
			String biz_cate_name, String biz_no, String reg_no, char biz_date, String naver_map_url, char reg_time,
			char del_flag) {
		super();
		this.brand_seq = brand_seq;
		this.brand_name = brand_name;
		this.brand_name2 = brand_name2;
		this.ceo = ceo;
		this.brand_roman1 = brand_roman1;
		this.brand_roman2 = brand_roman2;
		this.brand_roman3 = brand_roman3;
		this.addr = addr;
		this.tel = tel;
		this.biz_cate_code = biz_cate_code;
		this.biz_cate_name = biz_cate_name;
		this.biz_no = biz_no;
		this.reg_no = reg_no;
		this.biz_date = biz_date;
		this.naver_map_url = naver_map_url;
		this.reg_time = reg_time;
		this.del_flag = del_flag;
	}

	public int getBrand_seq() {
		return brand_seq;
	}

	public void setBrand_seq(int brand_seq) {
		this.brand_seq = brand_seq;
	}

	public String getBrand_name() {
		return brand_name;
	}

	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}

	public String getBrand_name2() {
		return brand_name2;
	}

	public void setBrand_name2(String brand_name2) {
		this.brand_name2 = brand_name2;
	}

	public String getCeo() {
		return ceo;
	}

	public void setCeo(String ceo) {
		this.ceo = ceo;
	}

	public String getBrand_roman1() {
		return brand_roman1;
	}

	public void setBrand_roman1(String brand_roman1) {
		this.brand_roman1 = brand_roman1;
	}

	public String getBrand_roman2() {
		return brand_roman2;
	}

	public void setBrand_roman2(String brand_roman2) {
		this.brand_roman2 = brand_roman2;
	}

	public String getBrand_roman3() {
		return brand_roman3;
	}

	public void setBrand_roman3(String brand_roman3) {
		this.brand_roman3 = brand_roman3;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getBiz_cate_code() {
		return biz_cate_code;
	}

	public void setBiz_cate_code(String biz_cate_code) {
		this.biz_cate_code = biz_cate_code;
	}

	public String getBiz_cate_name() {
		return biz_cate_name;
	}

	public void setBiz_cate_name(String biz_cate_name) {
		this.biz_cate_name = biz_cate_name;
	}

	public String getBiz_no() {
		return biz_no;
	}

	public void setBiz_no(String biz_no) {
		this.biz_no = biz_no;
	}

	public String getReg_no() {
		return reg_no;
	}

	public void setReg_no(String reg_no) {
		this.reg_no = reg_no;
	}

	public char getBiz_date() {
		return biz_date;
	}

	public void setBiz_date(char biz_date) {
		this.biz_date = biz_date;
	}

	public String getNaver_map_url() {
		return naver_map_url;
	}

	public void setNaver_map_url(String naver_map_url) {
		this.naver_map_url = naver_map_url;
	}

	public char getReg_time() {
		return reg_time;
	}

	public void setReg_time(char reg_time) {
		this.reg_time = reg_time;
	}

	public char getDel_flag() {
		return del_flag;
	}

	public void setDel_flag(char del_flag) {
		this.del_flag = del_flag;
	}

	@Override
	public String toString() {
		return "TradeNameVO [brand_seq=" + brand_seq + ", brand_name=" + brand_name + ", brand_name2=" + brand_name2
				+ ", ceo=" + ceo + ", brand_roman1=" + brand_roman1 + ", brand_roman2=" + brand_roman2
				+ ", brand_roman3=" + brand_roman3 + ", addr=" + addr + ", tel=" + tel + ", biz_cate_code="
				+ biz_cate_code + ", biz_cate_name=" + biz_cate_name + ", biz_no=" + biz_no + ", reg_no=" + reg_no
				+ ", biz_date=" + biz_date + ", naver_map_url=" + naver_map_url + ", reg_time=" + reg_time
				+ ", del_flag=" + del_flag + "]";
	}
	


}

