package com.solstice.trademark.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("trademarkService")
public class TradeMarkServiceImpl implements TradeMarkService{
	@Autowired
	private SqlSessionTemplate mybatisSession;

	@Override
	public int trademarkSearchListCount(HashMap<String, Object> mapp) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("trademarkSearchListCount", mapp);
	}

	@Override
	public List<TradeMarkVO> selectTmSearchList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectTmSearchList", map);
	}

	@Override
	public int listCount() {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("listCount");
	}

	@Override
	public List<TradeMarkVO> selectTmListPage(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectTmListPage", map);
	}

	@Override
	public TradeMarkVO selectTmDetail(int tm_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectTmDetail", tm_seq);
	}

	@Override
	public TradeMarkVO selectNextPrevTm(int tm_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectNextPrevTm", tm_seq);
	}
	


}
