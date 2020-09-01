package com.solstice.client.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("clientService")
public class ClientSerivceImpl implements ClientService{
	
	@Autowired
	private SqlSessionTemplate mybatisSession;

	/*@Override
	public int selectCheckBizNo(String com_biz_no) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectCheckBizNo", com_biz_no);
	}
*/
	@Override
	public int selectCheckBizNoo(String com_biz_no) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectCheckBizNoo", com_biz_no);
	}

	@Override
	public int inserClient(ClientVO client) {
		// TODO Auto-generated method stub
		return mybatisSession.insert("inserClient",client);
	}

	@Override
	public int listCount() {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("listCount");
	}

	@Override
	public List<ClientVO> selectClientList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectClientList", map);
	}

	@Override
	public int deleteClient(int com_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.delete("deleteClient", com_seq);
	}

	@Override
	public int clientSearchListCount(HashMap<String, Object> mapp) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("clientSearchListCount", mapp);
	}

	@Override
	public List<ClientVO> selectClientSearchList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectClientSearchList", map);
	}

	@Override
	public ClientVO selectClientDetail(int com_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectClientDetail", com_seq);
	}

	@Override
	public int deleteDetailClient(int com_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.delete("deleteDetailClient", com_seq);
	}




	@Override
	public ClientVO moveUpdateClient(int com_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("moveUpdateClient", com_seq);
	}

	@Override
	public int updateMyClient(ClientVO client) {
		// TODO Auto-generated method stub
		return mybatisSession.update("updateMyClient", client);
	}

	@Override
	public int rivaCount(int com_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("rivaCount", com_seq);
	}

	@Override
	public List<ClientVO> selectClientForRivaList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectClientForRivaList", map);
	}

	@Override
	public ClientVO selectclientForRivaDetail(int rival_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectclientForRivaDetail", rival_seq);
	}

	@Override
	public int deleteClientOfRiva(int rival_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.delete("deleteClientOfRiva", rival_seq);
	}
	
	@Override //고객의 경쟁사 한개만 조회
	public ClientVO selectClientForRiva(int com_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectClientForRiva", com_seq);
	}


	@Override
	public List<ClientVO> selectClientForRivaList1(int com_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectClientForRivaList1", com_seq);
	}

	@Override
	public int insertRivaOfClient(ClientVO riva) {
		// TODO Auto-generated method stub
		return mybatisSession.insert("insertRivaOfClient", riva);
	}

	@Override
	public int tmCount(int com_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("tmCount", com_seq);
	}

	@Override
	public List<ClientVO> selectClientForTmList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectClientForTmList", map);
	}

	/*@Override
	public ClientVO selectClientOfTmDetail(int tm_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectClientOfTmDetail", tm_seq);
	}*/

	@Override
	public int clientKipoCount(ClientVO client) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("clientKipoCount", client);
	}

	@Override
	public ClientVO selectClientOfTmDetail(ClientVO clientOfTm1) {
		// TODO Auto-generated method stub
		return mybatisSession.selectOne("selectClientOfTmDetail", clientOfTm1);
	}

	@Override
	public List<ClientVO> selectClientForRivaList1() {
		// TODO Auto-generated method stub
		return mybatisSession.selectList("selectClientForRivaList1");
	}

	@Override
	public void deleteDetailClientOfRival(ClientVO client) {
		// TODO Auto-generated method stub
		mybatisSession.delete("deleteDetailClientOfRival", client);
		 
	}



/*	@Override
	public int deleteDetailClientOfRival(int rival_seq) {
		// TODO Auto-generated method stub
		return mybatisSession.delete("deleteDetailClientOfRival", rival_seq);
	}*/


	
}
