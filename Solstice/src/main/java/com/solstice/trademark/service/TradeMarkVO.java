package com.solstice.trademark.service;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class TradeMarkVO implements Serializable{
	 private static final long serialVersionUID = 10013L;
	 
	 private int tm_seq;
	 private int rnum;
	 private String appl_no;
	 private char appl_date;
	private String applicant;
	 private String reg_no;
	 private char reg_date;
	 private String prod_cate_code_list;
	 private String pub_no;
	 private char pub_date;
	 private String reg_pub_no;
	 private char reg_pub_date;
	 private String org_appl_no;
	 private String org_appl_date;
	 private String prior_no;
	 private char prior_date;
	 private String rel_appl_no;
	 private String common_status;
	 private String legal_status;
	 private String exam_status;
	 private char exam_date;
	 private String retro_category;
	 private char retro_date;
	 private String tm_ko;
	 private String tm_roman1;
	 private String image_url;
	 private char reg_time;
	 private char del_flag;
	 private String appl_url;
	 private String reg_url;
	 private String tm_roman2;
	 private String tm_en;
	 private String tm_roman3;
	 private String tm_roman4;
	 private String tm_roman5;
	 private String prod_cate_version;
	 private int db_reg_year;
	 private int db_reg_month;
	 private int db_reg_date;
	 private String kipo_no;
	 
	 public TradeMarkVO() {}
	 
	 
	 
	 

	public TradeMarkVO(int tm_seq, int rnum, String appl_no, char appl_date, String applicant, String reg_no, char reg_date,
			String prod_cate_code_list, String pub_no, char pub_date, String reg_pub_no, char reg_pub_date,
			String org_appl_no, String org_appl_date, String prior_no, char prior_date, String rel_appl_no,
			String common_status, String legal_status, String exam_status, char exam_date, String retro_category,
			char retro_date, String tm_ko, String tm_roman1, String image_url, char reg_time, char del_flag,
			String appl_url, String reg_url, String tm_roman2, String tm_en, String tm_roman3, String tm_roman4,
			String tm_roman5, String prod_cate_version, int db_reg_year, int db_reg_month, int db_reg_date,
			String kipo_no) {
		super();
		this.tm_seq = tm_seq;
		this.rnum = rnum;
		this.appl_no = appl_no;
		this.appl_date = appl_date;
		this.applicant = applicant;
		this.reg_no = reg_no;
		this.reg_date = reg_date;
		this.prod_cate_code_list = prod_cate_code_list;
		this.pub_no = pub_no;
		this.pub_date = pub_date;
		this.reg_pub_no = reg_pub_no;
		this.reg_pub_date = reg_pub_date;
		this.org_appl_no = org_appl_no;
		this.org_appl_date = org_appl_date;
		this.prior_no = prior_no;
		this.prior_date = prior_date;
		this.rel_appl_no = rel_appl_no;
		this.common_status = common_status;
		this.legal_status = legal_status;
		this.exam_status = exam_status;
		this.exam_date = exam_date;
		this.retro_category = retro_category;
		this.retro_date = retro_date;
		this.tm_ko = tm_ko;
		this.tm_roman1 = tm_roman1;
		this.image_url = image_url;
		this.reg_time = reg_time;
		this.del_flag = del_flag;
		this.appl_url = appl_url;
		this.reg_url = reg_url;
		this.tm_roman2 = tm_roman2;
		this.tm_en = tm_en;
		this.tm_roman3 = tm_roman3;
		this.tm_roman4 = tm_roman4;
		this.tm_roman5 = tm_roman5;
		this.prod_cate_version = prod_cate_version;
		this.db_reg_year = db_reg_year;
		this.db_reg_month = db_reg_month;
		this.db_reg_date = db_reg_date;
		this.kipo_no = kipo_no;
	}


     


	public int getTm_seq() {
		return tm_seq;
	}





	public void setTm_seq(int tm_seq) {
		this.tm_seq = tm_seq;
	}
	
	public int getRnum() {
		return rnum;
	}





	public void setRnum(int rnum) {
		this.rnum = rnum;
	}





	public String getAppl_no() {
		return appl_no;
	}





	public void setAppl_no(String appl_no) {
		this.appl_no = appl_no;
	}





	public char getAppl_date() {
		return appl_date;
	}





	public void setAppl_date(char appl_date) {
		this.appl_date = appl_date;
	}





	public String getApplicant() {
		return applicant;
	}





	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}





	public String getReg_no() {
		return reg_no;
	}





	public void setReg_no(String reg_no) {
		this.reg_no = reg_no;
	}





	public char getReg_date() {
		return reg_date;
	}





	public void setReg_date(char reg_date) {
		this.reg_date = reg_date;
	}





	public String getProd_cate_code_list() {
		return prod_cate_code_list;
	}





	public void setProd_cate_code_list(String prod_cate_code_list) {
		this.prod_cate_code_list = prod_cate_code_list;
	}





	public String getPub_no() {
		return pub_no;
	}





	public void setPub_no(String pub_no) {
		this.pub_no = pub_no;
	}





	public char getPub_date() {
		return pub_date;
	}





	public void setPub_date(char pub_date) {
		this.pub_date = pub_date;
	}





	public String getReg_pub_no() {
		return reg_pub_no;
	}





	public void setReg_pub_no(String reg_pub_no) {
		this.reg_pub_no = reg_pub_no;
	}





	public char getReg_pub_date() {
		return reg_pub_date;
	}





	public void setReg_pub_date(char reg_pub_date) {
		this.reg_pub_date = reg_pub_date;
	}





	public String getOrg_appl_no() {
		return org_appl_no;
	}





	public void setOrg_appl_no(String org_appl_no) {
		this.org_appl_no = org_appl_no;
	}





	public String getOrg_appl_date() {
		return org_appl_date;
	}





	public void setOrg_appl_date(String org_appl_date) {
		this.org_appl_date = org_appl_date;
	}





	public String getPrior_no() {
		return prior_no;
	}





	public void setPrior_no(String prior_no) {
		this.prior_no = prior_no;
	}





	public char getPrior_date() {
		return prior_date;
	}





	public void setPrior_date(char prior_date) {
		this.prior_date = prior_date;
	}





	public String getRel_appl_no() {
		return rel_appl_no;
	}





	public void setRel_appl_no(String rel_appl_no) {
		this.rel_appl_no = rel_appl_no;
	}





	public String getCommon_status() {
		return common_status;
	}





	public void setCommon_status(String common_status) {
		this.common_status = common_status;
	}





	public String getLegal_status() {
		return legal_status;
	}





	public void setLegal_status(String legal_status) {
		this.legal_status = legal_status;
	}





	public String getExam_status() {
		return exam_status;
	}





	public void setExam_status(String exam_status) {
		this.exam_status = exam_status;
	}





	public char getExam_date() {
		return exam_date;
	}





	public void setExam_date(char exam_date) {
		this.exam_date = exam_date;
	}





	public String getRetro_category() {
		return retro_category;
	}





	public void setRetro_category(String retro_category) {
		this.retro_category = retro_category;
	}





	public char getRetro_date() {
		return retro_date;
	}





	public void setRetro_date(char retro_date) {
		this.retro_date = retro_date;
	}





	public String getTm_ko() {
		return tm_ko;
	}





	public void setTm_ko(String tm_ko) {
		this.tm_ko = tm_ko;
	}





	public String getTm_roman1() {
		return tm_roman1;
	}





	public void setTm_roman1(String tm_roman1) {
		this.tm_roman1 = tm_roman1;
	}





	public String getImage_url() {
		return image_url;
	}





	public void setImage_url(String image_url) {
		this.image_url = image_url;
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





	public String getAppl_url() {
		return appl_url;
	}





	public void setAppl_url(String appl_url) {
		this.appl_url = appl_url;
	}





	public String getReg_url() {
		return reg_url;
	}





	public void setReg_url(String reg_url) {
		this.reg_url = reg_url;
	}





	public String getTm_roman2() {
		return tm_roman2;
	}





	public void setTm_roman2(String tm_roman2) {
		this.tm_roman2 = tm_roman2;
	}





	public String getTm_en() {
		return tm_en;
	}





	public void setTm_en(String tm_en) {
		this.tm_en = tm_en;
	}





	public String getTm_roman3() {
		return tm_roman3;
	}





	public void setTm_roman3(String tm_roman3) {
		this.tm_roman3 = tm_roman3;
	}





	public String getTm_roman4() {
		return tm_roman4;
	}





	public void setTm_roman4(String tm_roman4) {
		this.tm_roman4 = tm_roman4;
	}





	public String getTm_roman5() {
		return tm_roman5;
	}





	public void setTm_roman5(String tm_roman5) {
		this.tm_roman5 = tm_roman5;
	}





	public String getProd_cate_version() {
		return prod_cate_version;
	}





	public void setProd_cate_version(String prod_cate_version) {
		this.prod_cate_version = prod_cate_version;
	}





	public int getDb_reg_year() {
		return db_reg_year;
	}





	public void setDb_reg_year(int db_reg_year) {
		this.db_reg_year = db_reg_year;
	}





	public int getDb_reg_month() {
		return db_reg_month;
	}





	public void setDb_reg_month(int db_reg_month) {
		this.db_reg_month = db_reg_month;
	}





	public int getDb_reg_date() {
		return db_reg_date;
	}





	public void setDb_reg_date(int db_reg_date) {
		this.db_reg_date = db_reg_date;
	}





	public String getKipo_no() {
		return kipo_no;
	}





	public void setKipo_no(String kipo_no) {
		this.kipo_no = kipo_no;
	}





	@Override
	public String toString() {
		return "TradeMarkVO [tm_seq=" + tm_seq + ", rnum=" + rnum + ", appl_no=" + appl_no + ", appl_date=" + appl_date + ", applicant="
				+ applicant + ", reg_no=" + reg_no + ", reg_date=" + reg_date + ", prod_cate_code_list="
				+ prod_cate_code_list + ", pub_no=" + pub_no + ", pub_date=" + pub_date + ", reg_pub_no=" + reg_pub_no
				+ ", reg_pub_date=" + reg_pub_date + ", org_appl_no=" + org_appl_no + ", org_appl_date=" + org_appl_date
				+ ", prior_no=" + prior_no + ", prior_date=" + prior_date + ", rel_appl_no=" + rel_appl_no
				+ ", common_status=" + common_status + ", legal_status=" + legal_status + ", exam_status=" + exam_status
				+ ", exam_date=" + exam_date + ", retro_category=" + retro_category + ", retro_date=" + retro_date
				+ ", tm_ko=" + tm_ko + ", tm_roman1=" + tm_roman1 + ", image_url=" + image_url + ", reg_time="
				+ reg_time + ", del_flag=" + del_flag + ", appl_url=" + appl_url + ", reg_url=" + reg_url
				+ ", tm_roman2=" + tm_roman2 + ", tm_en=" + tm_en + ", tm_roman3=" + tm_roman3 + ", tm_roman4="
				+ tm_roman4 + ", tm_roman5=" + tm_roman5 + ", prod_cate_version=" + prod_cate_version + ", db_reg_year="
				+ db_reg_year + ", db_reg_month=" + db_reg_month + ", db_reg_date=" + db_reg_date + ", kipo_no="
				+ kipo_no + "]";
	}
	 
	 

}
