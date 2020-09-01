<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객상세보기</title>
</head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
 <script type="text/javascript">


 </script>
<style>

.help{
font-size:15px;
border-top: 1px solid grey;
margin-top: 20px;

}
.wrapEnrollPage{
	background-color: #fff;
	margin-left: 25%;
	margin-right: 25%;
	overflow:hidden;
	min-height: 100%;
	margin-bottom: 200px;
}

.enrollSection{
	align:center;
	background: #f6f6f6;
	width: 100%;
	height: 1000px;
	margin-top: 40px;
}


.enrollTable{

	width: 90%;
	height: 90%;
	margin-left: 12%;
	padding-top: 20px;
}

.enrollTable tr{

	line-height: 58px;
}

.enrollTable th{
	 width:15%;
	 text-align: left;
}

.enrollTable td{
	width:85%;
	font-size: 10pt;
}


.enrolldiv{
	line-height: 3px;
	color: red;
	font-size: 9pt;
	text-indent: 5pt;
	margin-top: 10px;
}

.termsSection{

	align:center;
	background: #f6f6f6;
	width: 100%;
	height: 170px;
	margin-top: 15px;
	text-align: left;
}

.termsCheck{
	margin-top: -20px;
	padding-left: 50px;
	line-height: 30px;
}

.termsCheckLabel{
	color:#aaa;
	font-size: 9pt;
	vertical-align: 2px;
}


/* 회원가입 완료 */

.wrapEnrollSuccessPage{
	background-color: #fff;
	margin-left: 25%;
	margin-right: 25%;
	margin-top:140px; /* 상단바 높이만큼 수정 */
	overflow:hidden;
	min-height: 100%;
}

</style>
<body>
<!-- 회원가입 페이지 시작 -->
<div class="wrapEnrollPage">

	<p style="font-size: 20pt; padding-top:50px; color:#373737; text-align:center;">고객 상세보기</p>

	<tr>
			
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
			</tr>
	<div class="enrollSection">
	
		
		<table class="enrollTable">
		
			<tr>
				<th>사업자 등록번호</th>
				<td><div class="ui input" style="width:350px;">${client.com_biz_no }</div>&emsp;
				</td>
			</tr>
			
			
			<tr>
				<th>법인 등록번호</th>
				<td><div class="ui input" style="width:350px;">${client.com_reg_no }</div>
					<div class="enrolldiv" id="divRegNo"></div>
				</td>
			</tr>
			
			<tr>
				<th>회사명</th>
				<td><div class="ui input" style="width:350px;">${client.com_company_name }</div>
					
				</td>
			</tr>
			
			<tr>
				<th>회사명2</th>
				<td><div class="ui input" style="width:350px;">${client.com_company_name2 }</div>
				
				</td>
			</tr>
			
			<tr>
				<th>대표자명</th>
				<td><div class="ui input" style="width:350px;">${client.com_ceo }</div>
					
				</td>
			</tr>
			<tr>
				<th>담당자1 이름</th>
				<td><div class="ui input" style="width:350px;">${client.staff1_name }</div>
				
				</td>
			</tr>
			<tr>
				<th>담당자1 연락처</th>
				<td><div class="ui input" style="width:350px;">${client.staff1_tel }</div>
				</td>
			</tr>
			<tr>
				<th>담당자1 이메일</th>
				<td><div class="ui input" style="width:350px;">${client.staff1_email }</div>
				
				</td>
			</tr>
			<tr>
				<th>담당자2 이름</th>
				<td><div class="ui input" style="width:350px;">${client.staff2_name }</div>
				
				</td>
			</tr>
			<tr>
				<th>담당자2 연락처</th>
				<td><div class="ui input" style="width:350px;">${client.staff2_tel }</div>
					
				</td>
			</tr>
			<tr>
				<th>담당자2 이메일</th>
				<td><div class="ui input" style="width:350px;">${client.staff2_email }</div>
				
				</td>
			</tr>
				<tr>
				<th>특허고객번호 목록</th>
				<td><div class="ui input" style="width:350px;">${client.kipo_no_list }</div>
				</td>
			</tr>
		</table>
		
	</div>
	
	
	

	<br><br><br>
	  <div>
		<input type="submit" class="ui black button" value="목록" id="btnsub"  onclick="location.href='clientList.do'"> 
		&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	 	<input type="submit" class="ui button" value="수정하기" onclick="location.href='MoveUpateClient.do?com_seq=${client.com_seq }'">
		<input type="submit" class="ui button"  value="삭제하기" onclick="location.href='deleteDetailClient.do?com_seq=${client.com_seq }'"> 
		
		</div>
</div>
</body>
<div class = "help">
<p><p>
[도움말]<p>
[1] 회사명의 Romanize는 시스템이 분석을 위해 강제로 변환한 정보로 분석 알고리즘이 활용합니다.<p>
</div>
</html>