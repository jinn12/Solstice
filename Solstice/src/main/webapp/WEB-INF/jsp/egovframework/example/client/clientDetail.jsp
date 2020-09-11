<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객상세보기</title>
</head>
<body>
<div class="title_area">
<span>고객정보관리</span><i class="fas fa-caret-right"></i><span>고객관리</span>
</div>
<div class="tab_area">
<ul>
	<li class="active"><a>기본정보</a></li>
	<li><a onclick="location.href='clientForRiva.do?com_seq=${client.com_seq}'">경쟁사(${rivaCount})</a></li>
	<li><a onclick="location.href='clientOfTradeMark.do?com_seq=${client.com_seq}&com_company_name=${client.com_company_name}'">상표(${tmCount})</a></li>
</ul>
</div>
<div class="table_area">
<table class="table table_detail">
			<%-- <tr>
				<th>경쟁사:</th>
				<td><div class="ui input" style="width:350px;" 
				onclick="location.href='clientForRiva.do?com_seq=${client.com_seq}'"
				>${rivaCount} 건</div>
				</td>
			</tr>
			<tr>
			
				<th>상표:</th>
				<td><div class="ui input" style="width:350px;" 
				onclick="location.href='clientOfTradeMark.do?com_seq=${client.com_seq}&com_company_name=${client.com_company_name}'"
				>${tmCount} 건</div>
				</td>
			</tr> --%>
			<colgroup>
				<col width="12%"/>
				<col width="38%"/> 
				<col width="12%"/>
				<col width="38%"/>
			</colgroup>
			<tr>
				<th>사업자 등록번호</th>
				<td>${client.com_biz_no }
				</td>
			
				<th>법인 등록번호</th>
				<td>${client.com_reg_no }
					<div class="enrolldiv" id="divRegNo"></div>
				</td>
			</tr>
			<tr>
				<th>회사명</th>
				<td colspan="3">${client.com_company_name }</td>
			</tr>
			<tr>
				<th>회사명2</th>
				<td colspan="3">${client.com_company_name2 }</td>
			</tr>
			
			<tr>
				<th>대표자명</th>
				<td colspan="3">${client.com_ceo }</td>
			</tr>
			<tr>
				<th>담당자1 이름</th>
				<td>${client.staff1_name }</td>
				<th>담당자2 이름</th>
				<td>${client.staff2_name }</td>
			</tr>
			<tr>
				<th>담당자1 연락처</th>
				<td>${client.staff1_tel }</td>
				<th>담당자2 연락처</th>
				<td>${client.staff2_tel }</td>
			</tr>
			<tr>
				<th>담당자1 이메일</th>
				<td>${client.staff1_email }</td>
				<th>담당자2 이메일</th>
				<td>${client.staff2_email }</td>
			</tr>
			<tr>
				<th>특허고객번호 목록</th>
				<td colspan="3">${client.kipo_no_list }</td>
			</tr>
		</table>
		</div>

<div class="btn_group">
<button class="btn" type="submit" onclick="location.href='clientList.do'">
<i class="fal fa-list-alt"></i> 목록
</button>
<button class="btn btn-submit" type="submit" onclick="location.href='MoveUpateClient.do?com_seq=${client.com_seq }'">
<i class="edit outline icon"></i>수정
</button>
<button class="btn btn-del" type="submit" onclick="location.href='deleteDetailClient.do?com_seq=${client.com_seq }'">
<i class="far fa-trash-alt"></i> 삭제
</button>
</div>
	  <%-- <div>
		<input type="submit" class="ui black button" value="목록" id="btnsub"  onclick="location.href='clientList.do'"> 
	 	<input type="submit" class="ui button" value="수정하기" onclick="location.href='MoveUpateClient.do?com_seq=${client.com_seq }'">
		<input type="submit" class="ui button"  value="삭제하기" onclick="location.href='deleteDetailClient.do?com_seq=${client.com_seq }'"> 
		
		</div> --%>
		
		
<div class="tip_area">
<h6><i class="fas fa-info-circle"></i>&nbsp;도움말</h6>
[1] 회사명의 Romanize는 시스템이 분석을 위해 강제로 변환한 정보로 분석 알고리즘이 활용합니다.<br>
</div>
</body>
</html>