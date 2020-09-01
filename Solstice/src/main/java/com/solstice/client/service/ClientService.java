package com.solstice.client.service;

import java.util.HashMap;
import java.util.List;

import com.solstice.rival.service.RivalVO;

public interface ClientService {

 /* int selectCheckBizNo(String com_biz_no);*/

int selectCheckBizNoo(String com_biz_no);

int inserClient(ClientVO client);

int listCount();

List<ClientVO> selectClientList(HashMap<String, Object> map);

int deleteClient(int com_seq);

int clientSearchListCount(HashMap<String, Object> mapp);

List<ClientVO> selectClientSearchList(HashMap<String, Object> map);

ClientVO selectClientDetail(int com_seq);

int deleteDetailClient(int com_seq);

ClientVO moveUpdateClient(int com_seq);

int updateMyClient(ClientVO client);

int rivaCount(int com_seq); //해당 고객의 라이벌 카운트

List<ClientVO> selectClientForRivaList(HashMap<String, Object> map); //해당 고객의 라이벌 리스트

ClientVO selectclientForRivaDetail(int rival_seq); //고객관리에서 경쟁사 상세보기

int deleteClientOfRiva(int rival_seq);

int insertRivaOfClient(ClientVO riva);

ClientVO selectClientForRiva(int com_seq);

List<ClientVO> selectClientForRivaList1(int com_seq);

int tmCount(int com_seq);

List<ClientVO> selectClientForTmList(HashMap<String, Object> map);

/*ClientVO selectClientOfTmDetail(int tm_seq);*/

int clientKipoCount(ClientVO client);

ClientVO selectClientOfTmDetail(ClientVO clientOfTm1);

List<ClientVO> selectClientForRivaList1();  //해당 고객의 라이벌 리스트로 이동만

void deleteDetailClientOfRival(ClientVO client);








		
	
}
