<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경쟁사 상세보기</title>
</head>
<body>
<div class="title_area">
<span>고객정보관리</span><i class="fas fa-caret-right"></i><span>경쟁사 관리</span>
</div>
<div class="tab_area">
<ul>
	<li class="active"><a>기본정보</a></li>
	<%-- <li><a onclick="location.href='clientForRiva.do?com_seq=${client.com_seq}'">경쟁사(${rivaCount})</a></li> --%>
	<li><a onclick="location.href='rivalOfTradeMark.do?rival_seq=${rival.rival_seq}&rival_company_name=${rival.rival_company_name}'">상표(${tmCount})</a></li>
</ul>
</div>
<div class="table_area">

		<table class="table table_detail">
			<colgroup>
				<col width="10%"/>
				<col width="40%"/>
				<col width="10%"/>
				<col width="40%"/>
			</colgroup>
			<tr>
				<th>사업자 등록번호</th>
				<td>${rival.rival_biz_no }</td>
				<th>기업명</th>
				<td>${rival.rival_company_name }</td>
			</tr>
			<tr>
				<th>대표이사</th>
				<td>${rival.rival_ceo }</td>
				<th>특허고객번호 목록</th>
				<td>${rival.rival_kipo_no_list }</td>
			</tr>
			<tr>
				<th>심판 청구인 키워드</th>
				<td colspan="3">${rival.demander_keyword }</td>
			</tr>
			<tr>
				<th>심판 피청구인 키워드</th>
				<td colspan="3">${rival.claimee_keyword}</td>
			</tr>
			<tr>
				<th>등록 일시</th>
				<td>${rival.reg_time}</td>
				<th>수정 일시</th>
				<td>${rival.mod_time}</td>
			</tr>
		</table>
		
	</div>
	
<div class="btn_group">
<button class="btn" type="submit" onclick="location.href='rivalList.do'">
<i class="fal fa-list-alt"></i> 목록
</button>
<button class="btn btn-submit" type="submit" onclick="location.href='MoveUpateRival.do?rival_seq=${rival.rival_seq }'">
<i class="edit outline icon"></i>수정
</button>
<button class="btn btn-del" type="submit" onclick="location.href='deleteDetailRival.do?rival_seq=${rival.rival_seq }'">
<i class="far fa-trash-alt"></i> 삭제
</button>
</div>
	

	<%--
	  <div>
		<input type="submit" class="ui black button" value="목록" id="btnsub"  onclick="location.href='javascript:history.back();'"> 
		<input type="submit" class="ui button" value="수정하기" onclick="location.href='MoveUpateRival.do?rival_seq=${rival.rival_seq }'">
		<input type="submit" class="ui button"  value="삭제하기" onclick="location.href='deleteDetailRival.do?rival_seq=${rival.rival_seq }'"> 
	 </div> --%>
		
	
	


</body>
</html>