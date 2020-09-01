package com.solstice.tradename.service;

import java.util.HashMap;
import java.util.List;

public interface TradeNameService {

	int tradenameSearchListCount(HashMap<String, Object> mapp);

	List<TradeNameVO> selectTnSearchList(HashMap<String, Object> map);

	TradeNameVO selectTnDetail(int brand_seq);

}
