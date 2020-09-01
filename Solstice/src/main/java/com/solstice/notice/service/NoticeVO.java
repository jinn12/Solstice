package com.solstice.notice.service;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class NoticeVO implements Serializable {
	 private static final long serialVersionUID = 10111L;
	    
	    private int rnum;
		private int notice_seq;
		private String notice_title;
		private String notice_contents;
	    private String notice_writer;
	    private String notice_write_time;
		private String notice_modify_time;
		private int notice_read_count;
	    private String notice_ofile;
	    private String notice_rfile;
	    private String user_email;
	 public NoticeVO() {}
	
	 public NoticeVO(int rnum, int notice_seq, String notice_title, String notice_contents, String notice_writer,
			String notice_write_time, String notice_modify_time, int notice_read_count, String notice_ofile,
			String notice_rfile, String user_email) {
		super();
		this.rnum = rnum;
		this.notice_seq = notice_seq;
		this.notice_title = notice_title;
		this.notice_contents = notice_contents;
		this.notice_writer = notice_writer;
		this.notice_write_time = notice_write_time;
		this.notice_modify_time = notice_modify_time;
		this.notice_read_count = notice_read_count;
		this.notice_ofile = notice_ofile;
		this.notice_rfile = notice_rfile;
		this.user_email = user_email;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public int getNotice_seq() {
		return notice_seq;
	}

	public void setNotice_seq(int notice_seq) {
		this.notice_seq = notice_seq;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_contents() {
		return notice_contents;
	}

	public void setNotice_contents(String notice_contents) {
		this.notice_contents = notice_contents;
	}

	public String getNotice_writer() {
		return notice_writer;
	}

	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}

	public String getNotice_write_time() {
		return notice_write_time;
	}

	public void setNotice_write_time(String notice_write_time) {
		this.notice_write_time = notice_write_time;
	}

	public String getNotice_modify_time() {
		return notice_modify_time;
	}

	public void setNotice_modify_time(String notice_modify_time) {
		this.notice_modify_time = notice_modify_time;
	}

	public int getNotice_read_count() {
		return notice_read_count;
	}

	public void setNotice_read_count(int notice_read_count) {
		this.notice_read_count = notice_read_count;
	}

	public String getNotice_ofile() {
		return notice_ofile;
	}

	public void setNotice_ofile(String notice_ofile) {
		this.notice_ofile = notice_ofile;
	}

	public String getNotice_rfile() {
		return notice_rfile;
	}

	public void setNotice_rfile(String notice_rfile) {
		this.notice_rfile = notice_rfile;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	@Override
	public String toString() {
		return "NoticeVO [rnum=" + rnum + ", notice_seq=" + notice_seq + ", notice_title=" + notice_title
				+ ", notice_contents=" + notice_contents + ", notice_writer=" + notice_writer + ", notice_write_time="
				+ notice_write_time + ", notice_modify_time=" + notice_modify_time + ", notice_read_count="
				+ notice_read_count + ", notice_ofile=" + notice_ofile + ", notice_rfile=" + notice_rfile
				+ ", user_email=" + user_email + "]";
	}
	
	 
}
