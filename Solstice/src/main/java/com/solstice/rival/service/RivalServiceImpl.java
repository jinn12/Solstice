package com.solstice.rival.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.solstice.client.service.ClientVO;

@Service("rivalService")
public class RivalServiceImpl implements RivalService {
	
	@Autowired
	private SqlSessionTemplate mybatisSession;

	@Override
	public int rivalCount() {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("rivalCount");
	}

	@Override
	public List<RivalVO> selectRivalList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectRivalList", map);
	}

	@Override
	public int rivalSearchListCount(HashMap<String, Object> mapp) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("rivalSearchListCount", mapp);
	}

	@Override
	public List<RivalVO> selectRivalSearchList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectRivalSearchList", map);
	}

	@Override
	public RivalVO selectRivaDetail(int rival_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectRivaDetail",rival_seq);
	}
  //경쟁사 목록에서 경쟁사 삭제하기
	@Override
	public int deleteRival(int rival_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.delete("deleteRival", rival_seq);
	}

	@Override
	public int insertRival(RivalVO rival) {
		// TODO Auto-generated method stub
		return mybatisSession.insert("insertRival",rival);
	}

	@Override
	public int updateMyRival(RivalVO rival) {
		// TODO Auto-generated method stub
		return mybatisSession.update("updateMyRival",rival);
	}

	@Override
	public int deleteDetailRival(int rival_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.delete("deleteDetailRival",rival_seq);
	}

	@Override
	public int rivaltmCount(int rival_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("rivaltmCount",rival_seq);
	}

	@Override
	public List<RivalVO> selectRivalForTmList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectRivalForTmList", map);
	}

	@Override
	public int rivalKipoCount(RivalVO rival) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("rivalKipoCount",rival);
	}

	@Override
	public RivalVO selectRivalOfTmDetail(RivalVO rivalOfTm1) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectRivalOfTmDetail",rivalOfTm1);
	}

	/*@Override
	public RivalVO selectRivalOfTmDetail(RivalVO rivalOfTm1) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectRivalOfTmDetail",rivalOfTm1);
	}
*/

	

}
