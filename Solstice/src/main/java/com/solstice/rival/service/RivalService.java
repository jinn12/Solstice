package com.solstice.rival.service;

import java.util.HashMap;
import java.util.List;

import com.solstice.client.service.ClientVO;

public interface RivalService {

	int rivalCount();

	List<RivalVO> selectRivalList(HashMap<String, Object> map);

	int rivalSearchListCount(HashMap<String, Object> mapp);

	List<RivalVO> selectRivalSearchList(HashMap<String, Object> map);

	RivalVO selectRivaDetail(int rival_seq);

	int deleteRival(int rival_seq);

	int insertRival(RivalVO rival);

	int updateMyRival(RivalVO rival);

	int deleteDetailRival(int rival_seq);

	int rivaltmCount(int rival_seq);

	List<RivalVO> selectRivalForTmList(HashMap<String, Object> map);

	int rivalKipoCount(RivalVO rival);

	RivalVO selectRivalOfTmDetail(RivalVO rivalOfTm1);

/*	RivalVO selectRivalOfTmDetail(RivalVO rivalOfTm1);*/
	



}
