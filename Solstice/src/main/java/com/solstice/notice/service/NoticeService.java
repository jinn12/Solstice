package com.solstice.notice.service;

import java.util.HashMap;
import java.util.List;

public interface NoticeService {

	int noticeCount();

	List<NoticeVO> selectNoticeList(HashMap<String, Object> map);

	int insertNotice(NoticeVO notice);

	int noticeSearchListCount(HashMap<String, Object> mapp);

	List<NoticeVO> selectNoticeSearchList(HashMap<String, Object> map);

	NoticeVO selectNoticeDetail(int notice_seq);

	NoticeVO selectNextPrevNotice(int notice_seq);

	void noticeReadCount(int notice_seq);

	int updateMyNotice(NoticeVO notice);

	int deleteDetailNotice(int notice_seq);




}
