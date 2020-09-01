package com.solstice.notice.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("noitceService")
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Override
	public int noticeCount() {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("noticeCount");
	}


	@Override
	public List<NoticeVO> selectNoticeList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectNoticeList", map);
	}

	@Override
	public int insertNotice(NoticeVO notice) {
		// TODO Auto-generated method stub
		return mybatisSession.insert("insertNotice", notice);
	}

	@Override
	public int noticeSearchListCount(HashMap<String, Object> mapp) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("noticeSearchListCount", mapp);
	}

	@Override
	public List<NoticeVO> selectNoticeSearchList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectNoticeSearchList", map);
	}


	@Override
	public NoticeVO selectNoticeDetail(int notice_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectNoticeDetail", notice_seq);
	}


	@Override
	public NoticeVO selectNextPrevNotice(int notice_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectNextPrevNotice", notice_seq);
	}


	@Override
	public void noticeReadCount(int notice_seq) {
		 mybatisSession.update("noticeReadCount", notice_seq);
		
	}


	@Override
	public int updateMyNotice(NoticeVO notice) {
		// TODO Auto-generated method stub
		return mybatisSession.update("updateMyNotice", notice);
	}


	@Override
	public int deleteDetailNotice(int notice_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.delete("deleteDetailNotice", notice_seq);
	}


}
