package com.solstice.client.service;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class ClientVO implements Serializable{
	 private static final long serialVersionUID = 10011L;
	
	private int com_seq;
	private String com_biz_no;
	private String com_company_name;
	private String com_addr;
	private String kipo_no_list;
	 private String com_reg_no;	
	 private String staff1_name;
	 private String staff1_dept;
	private String staff1_tel;	
	private  String staff1_email;
	 private String reg_time;
	 private String mod_time;
	 private String staff2_name;
	 private String staff2_dept;
	 private String staff2_tel;
	 private String staff2_email;
	 private String com_ceo;
	 private String com_company_name2;
	 private String com_name_roman1;
	 private String com_name_roman2;
	 private String com_name_roman3;
	 private int rival_seq;
	 private String rival_company_name;
	 private String rival_company_name2;
	 private String rival_biz_no;
	 private String rival_reg_no;
	 private String rival_ceo;
	 private String rival_kipo_no_list;
	 private String demander_keyword;
	 private String claimee_keyword;
	 private String rival_reg_time;
	 private String rival_mod_time;
	 private int  prod_cate_seq;
	 private String prod_cate_code;
	 private String prod_cate_contents;
	 private String prod_cate_version;
    private String prod_cate_detail;
    private int tm_seq;
    private String appl_no;
    private char appl_date;
    private String applicant;
    private String reg_no;
    private char reg_dat;
    private String prod_cate_code_list;
    private String pub_no;
    private char pub_date;
    private String reg_pub_no;
    private char reg_pub_date;
    private String org_appl_no;
    private char org_appl_date;
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
    private char del_flag;
    private String appl_url;
    private String reg_url;
    private String tm_roman2;
    private String tm_en;
    private String tm_roman3;
    private String tm_roman4;
    private String tm_roman5;
    private String kipo_no;
    private char com_del_flag;
   
		
	 public ClientVO () {}


	public ClientVO(int com_seq, String com_biz_no, String com_company_name, String com_addr, String kipo_no_list,
			String com_reg_no, String staff1_name, String staff1_dept, String staff1_tel, String staff1_email,
			String reg_time, String mod_time, String staff2_name, String staff2_dept, String staff2_tel,
			String staff2_email, String com_ceo, String com_company_name2, String com_name_roman1,
			String com_name_roman2, String com_name_roman3, int rival_seq, String rival_company_name,
			String rival_company_name2, String rival_biz_no, String rival_reg_no, String rival_ceo,
			String rival_kipo_no_list, String demander_keyword, String claimee_keyword, String rival_reg_time,
			String rival_mod_time, int prod_cate_seq, String prod_cate_code, String prod_cate_contents,
			String prod_cate_version, String prod_cate_detail, int tm_seq, String appl_no, char appl_date,
			String applicant, String reg_no, char reg_dat, String prod_cate_code_list, String pub_no, char pub_date,
			String reg_pub_no, char reg_pub_date, String org_appl_no, char org_appl_date, String prior_no,
			char prior_date, String rel_appl_no, String common_status, String legal_status, String exam_status,
			char exam_date, String retro_category, char retro_date, String tm_ko, String tm_roman1, String image_url,
			char del_flag, String appl_url, String reg_url, String tm_roman2, String tm_en, String tm_roman3,
			String tm_roman4, String tm_roman5, String kipo_no, char com_del_flag) {
		super();
		this.com_seq = com_seq;
		this.com_biz_no = com_biz_no;
		this.com_company_name = com_company_name;
		this.com_addr = com_addr;
		this.kipo_no_list = kipo_no_list;
		this.com_reg_no = com_reg_no;
		this.staff1_name = staff1_name;
		this.staff1_dept = staff1_dept;
		this.staff1_tel = staff1_tel;
		this.staff1_email = staff1_email;
		this.reg_time = reg_time;
		this.mod_time = mod_time;
		this.staff2_name = staff2_name;
		this.staff2_dept = staff2_dept;
		this.staff2_tel = staff2_tel;
		this.staff2_email = staff2_email;
		this.com_ceo = com_ceo;
		this.com_company_name2 = com_company_name2;
		this.com_name_roman1 = com_name_roman1;
		this.com_name_roman2 = com_name_roman2;
		this.com_name_roman3 = com_name_roman3;
		this.rival_seq = rival_seq;
		this.rival_company_name = rival_company_name;
		this.rival_company_name2 = rival_company_name2;
		this.rival_biz_no = rival_biz_no;
		this.rival_reg_no = rival_reg_no;
		this.rival_ceo = rival_ceo;
		this.rival_kipo_no_list = rival_kipo_no_list;
		this.demander_keyword = demander_keyword;
		this.claimee_keyword = claimee_keyword;
		this.rival_reg_time = rival_reg_time;
		this.rival_mod_time = rival_mod_time;
		this.prod_cate_seq = prod_cate_seq;
		this.prod_cate_code = prod_cate_code;
		this.prod_cate_contents = prod_cate_contents;
		this.prod_cate_version = prod_cate_version;
		this.prod_cate_detail = prod_cate_detail;
		this.tm_seq = tm_seq;
		this.appl_no = appl_no;
		this.appl_date = appl_date;
		this.applicant = applicant;
		this.reg_no = reg_no;
		this.reg_dat = reg_dat;
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
		this.del_flag = del_flag;
		this.appl_url = appl_url;
		this.reg_url = reg_url;
		this.tm_roman2 = tm_roman2;
		this.tm_en = tm_en;
		this.tm_roman3 = tm_roman3;
		this.tm_roman4 = tm_roman4;
		this.tm_roman5 = tm_roman5;
		this.kipo_no = kipo_no;
		this.com_del_flag = com_del_flag;
	}


	public int getCom_seq() {
		return com_seq;
	}


	public void setCom_seq(int com_seq) {
		this.com_seq = com_seq;
	}


	public String getCom_biz_no() {
		return com_biz_no;
	}


	public void setCom_biz_no(String com_biz_no) {
		this.com_biz_no = com_biz_no;
	}


	public String getCom_company_name() {
		return com_company_name;
	}


	public void setCom_company_name(String com_company_name) {
		this.com_company_name = com_company_name;
	}


	public String getCom_addr() {
		return com_addr;
	}


	public void setCom_addr(String com_addr) {
		this.com_addr = com_addr;
	}


	public String getKipo_no_list() {
		return kipo_no_list;
	}


	public void setKipo_no_list(String kipo_no_list) {
		this.kipo_no_list = kipo_no_list;
	}


	public String getCom_reg_no() {
		return com_reg_no;
	}


	public void setCom_reg_no(String com_reg_no) {
		this.com_reg_no = com_reg_no;
	}


	public String getStaff1_name() {
		return staff1_name;
	}


	public void setStaff1_name(String staff1_name) {
		this.staff1_name = staff1_name;
	}


	public String getStaff1_dept() {
		return staff1_dept;
	}


	public void setStaff1_dept(String staff1_dept) {
		this.staff1_dept = staff1_dept;
	}


	public String getStaff1_tel() {
		return staff1_tel;
	}


	public void setStaff1_tel(String staff1_tel) {
		this.staff1_tel = staff1_tel;
	}


	public String getStaff1_email() {
		return staff1_email;
	}


	public void setStaff1_email(String staff1_email) {
		this.staff1_email = staff1_email;
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


	public String getStaff2_name() {
		return staff2_name;
	}


	public void setStaff2_name(String staff2_name) {
		this.staff2_name = staff2_name;
	}


	public String getStaff2_dept() {
		return staff2_dept;
	}


	public void setStaff2_dept(String staff2_dept) {
		this.staff2_dept = staff2_dept;
	}


	public String getStaff2_tel() {
		return staff2_tel;
	}


	public void setStaff2_tel(String staff2_tel) {
		this.staff2_tel = staff2_tel;
	}


	public String getStaff2_email() {
		return staff2_email;
	}


	public void setStaff2_email(String staff2_email) {
		this.staff2_email = staff2_email;
	}


	public String getCom_ceo() {
		return com_ceo;
	}


	public void setCom_ceo(String com_ceo) {
		this.com_ceo = com_ceo;
	}


	public String getCom_company_name2() {
		return com_company_name2;
	}


	public void setCom_company_name2(String com_company_name2) {
		this.com_company_name2 = com_company_name2;
	}


	public String getCom_name_roman1() {
		return com_name_roman1;
	}


	public void setCom_name_roman1(String com_name_roman1) {
		this.com_name_roman1 = com_name_roman1;
	}


	public String getCom_name_roman2() {
		return com_name_roman2;
	}


	public void setCom_name_roman2(String com_name_roman2) {
		this.com_name_roman2 = com_name_roman2;
	}


	public String getCom_name_roman3() {
		return com_name_roman3;
	}


	public void setCom_name_roman3(String com_name_roman3) {
		this.com_name_roman3 = com_name_roman3;
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


	public String getRival_company_name2() {
		return rival_company_name2;
	}


	public void setRival_company_name2(String rival_company_name2) {
		this.rival_company_name2 = rival_company_name2;
	}


	public String getRival_biz_no() {
		return rival_biz_no;
	}


	public void setRival_biz_no(String rival_biz_no) {
		this.rival_biz_no = rival_biz_no;
	}


	public String getRival_reg_no() {
		return rival_reg_no;
	}


	public void setRival_reg_no(String rival_reg_no) {
		this.rival_reg_no = rival_reg_no;
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


	public int getProd_cate_seq() {
		return prod_cate_seq;
	}


	public void setProd_cate_seq(int prod_cate_seq) {
		this.prod_cate_seq = prod_cate_seq;
	}


	public String getProd_cate_code() {
		return prod_cate_code;
	}


	public void setProd_cate_code(String prod_cate_code) {
		this.prod_cate_code = prod_cate_code;
	}


	public String getProd_cate_contents() {
		return prod_cate_contents;
	}


	public void setProd_cate_contents(String prod_cate_contents) {
		this.prod_cate_contents = prod_cate_contents;
	}


	public String getProd_cate_version() {
		return prod_cate_version;
	}


	public void setProd_cate_version(String prod_cate_version) {
		this.prod_cate_version = prod_cate_version;
	}


	public String getProd_cate_detail() {
		return prod_cate_detail;
	}


	public void setProd_cate_detail(String prod_cate_detail) {
		this.prod_cate_detail = prod_cate_detail;
	}


	public int getTm_seq() {
		return tm_seq;
	}


	public void setTm_seq(int tm_seq) {
		this.tm_seq = tm_seq;
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


	public char getReg_dat() {
		return reg_dat;
	}


	public void setReg_dat(char reg_dat) {
		this.reg_dat = reg_dat;
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


	public char getOrg_appl_date() {
		return org_appl_date;
	}


	public void setOrg_appl_date(char org_appl_date) {
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


	public String getKipo_no() {
		return kipo_no;
	}


	public void setKipo_no(String kipo_no) {
		this.kipo_no = kipo_no;
	}


	public char getCom_del_flag() {
		return com_del_flag;
	}


	public void setCom_del_flag(char com_del_flag) {
		this.com_del_flag = com_del_flag;
	}


	@Override
	public String toString() {
		return "ClientVO [com_seq=" + com_seq + ", com_biz_no=" + com_biz_no + ", com_company_name=" + com_company_name
				+ ", com_addr=" + com_addr + ", kipo_no_list=" + kipo_no_list + ", com_reg_no=" + com_reg_no
				+ ", staff1_name=" + staff1_name + ", staff1_dept=" + staff1_dept + ", staff1_tel=" + staff1_tel
				+ ", staff1_email=" + staff1_email + ", reg_time=" + reg_time + ", mod_time=" + mod_time
				+ ", staff2_name=" + staff2_name + ", staff2_dept=" + staff2_dept + ", staff2_tel=" + staff2_tel
				+ ", staff2_email=" + staff2_email + ", com_ceo=" + com_ceo + ", com_company_name2=" + com_company_name2
				+ ", com_name_roman1=" + com_name_roman1 + ", com_name_roman2=" + com_name_roman2 + ", com_name_roman3="
				+ com_name_roman3 + ", rival_seq=" + rival_seq + ", rival_company_name=" + rival_company_name
				+ ", rival_company_name2=" + rival_company_name2 + ", rival_biz_no=" + rival_biz_no + ", rival_reg_no="
				+ rival_reg_no + ", rival_ceo=" + rival_ceo + ", rival_kipo_no_list=" + rival_kipo_no_list
				+ ", demander_keyword=" + demander_keyword + ", claimee_keyword=" + claimee_keyword
				+ ", rival_reg_time=" + rival_reg_time + ", rival_mod_time=" + rival_mod_time + ", prod_cate_seq="
				+ prod_cate_seq + ", prod_cate_code=" + prod_cate_code + ", prod_cate_contents=" + prod_cate_contents
				+ ", prod_cate_version=" + prod_cate_version + ", prod_cate_detail=" + prod_cate_detail + ", tm_seq="
				+ tm_seq + ", appl_no=" + appl_no + ", appl_date=" + appl_date + ", applicant=" + applicant
				+ ", reg_no=" + reg_no + ", reg_dat=" + reg_dat + ", prod_cate_code_list=" + prod_cate_code_list
				+ ", pub_no=" + pub_no + ", pub_date=" + pub_date + ", reg_pub_no=" + reg_pub_no + ", reg_pub_date="
				+ reg_pub_date + ", org_appl_no=" + org_appl_no + ", org_appl_date=" + org_appl_date + ", prior_no="
				+ prior_no + ", prior_date=" + prior_date + ", rel_appl_no=" + rel_appl_no + ", common_status="
				+ common_status + ", legal_status=" + legal_status + ", exam_status=" + exam_status + ", exam_date="
				+ exam_date + ", retro_category=" + retro_category + ", retro_date=" + retro_date + ", tm_ko=" + tm_ko
				+ ", tm_roman1=" + tm_roman1 + ", image_url=" + image_url + ", del_flag=" + del_flag + ", appl_url="
				+ appl_url + ", reg_url=" + reg_url + ", tm_roman2=" + tm_roman2 + ", tm_en=" + tm_en + ", tm_roman3="
				+ tm_roman3 + ", tm_roman4=" + tm_roman4 + ", tm_roman5=" + tm_roman5 + ", kipo_no=" + kipo_no
				+ ", com_del_flag=" + com_del_flag + "]";
	}


	
	
	
}
