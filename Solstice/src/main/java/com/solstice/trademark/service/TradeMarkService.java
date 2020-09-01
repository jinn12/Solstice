package com.solstice.trademark.service;

import java.util.HashMap;
import java.util.List;

import com.solstice.client.service.ClientVO;

public interface TradeMarkService {

	int trademarkSearchListCount(HashMap<String, Object> mapp);

	List<TradeMarkVO> selectTmSearchList(HashMap<String, Object> map);

	int listCount();

	List<TradeMarkVO> selectTmListPage(HashMap<String, Object> map);

	TradeMarkVO selectTmDetail(int tm_seq);

	TradeMarkVO selectNextPrevTm(int tm_seq);

	

}
