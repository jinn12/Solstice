package com.solstice.tradename.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("tradnameService")
public class TradeNameServiceImpl implements TradeNameService {
	@Autowired
	private SqlSessionTemplate mybatisSession;

	@Override
	public int tradenameSearchListCount(HashMap<String, Object> mapp) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("tradenameSearchListCount", mapp);
	}

	@Override
	public List<TradeNameVO> selectTnSearchList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectTnSearchList", map);
	}

	@Override
	public TradeNameVO selectTnDetail(int brand_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectTnDetail", brand_seq);
	}

}
