<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경쟁사 상세보기</title>
</head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
 <script type="text/javascript">


 </script>
<style>

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

	<p style="font-size: 20pt; padding-top:50px; color:#373737; text-align:center;">경쟁사 상세보기</p>
	
			<tr>
			
				<th>상표:</th>
				<td><div class="ui input" style="width:350px;" 
				onclick="location.href='rivalOfTradeMark.do?rival_seq=${rival.rival_seq}&rival_company_name=${rival.rival_company_name}'"
				>${tmCount}건</div>
				</td>
			</tr>
	<!-- 회원정보입력섹션 시작! -->
	
	<div class="enrollSection">
	
		
		<table class="enrollTable">
			<tr>
				<th>사업자 등록번호</th>
				<td><div class="ui input" style="width:350px;">${rival.rival_biz_no }</div>&emsp;
				</td>
			</tr>
			
			
			<tr>
				<th>기업명</th>
				<td><div class="ui input" style="width:350px;">${rival.rival_company_name }</div>
					<div class="enrolldiv" id="divRegNo"></div>
				</td>
			</tr>
			
			<tr>
				<th>대표이사</th>
				<td><div class="ui input" style="width:350px;">${rival.rival_ceo }</div>
					
				</td>
			</tr>
			
			<tr>
				<th>특허고객번호 목록</th>
				<td><div class="ui input" style="width:350px;">${rival.rival_kipo_no_list }</div>
				
				</td>
			</tr>
			
			<tr>
				<th>심판 청구인 키워드</th>
				<td><div class="ui input" style="width:350px;">${rival.demander_keyword }</div>
					
				</td>
			</tr>
			<tr>
				<th>심판 피청구인 키워드</th>
				<td><div class="ui input" style="width:350px;">${rival.claimee_keyword}</div>
				
				</td>
			</tr>
			<tr>
				<th>등록 일시</th>
				<td><div class="ui input" style="width:350px;">${rival.reg_time}</div>
				
				</td>
			</tr>
			<tr>
				<th>수정 일시</th>
				<td><div class="ui input" style="width:350px;">${rival.mod_time}</div>
				
				</td>
			</tr>
			
		</table>
		
	</div>
	
	
	

	<br><br><br>
	  <div>
		<input type="submit" class="ui black button" value="목록" id="btnsub"  onclick="location.href='javascript:history.back();'"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

		<input type="submit" class="ui button" value="수정하기" onclick="location.href='MoveUpateRival.do?rival_seq=${rival.rival_seq }'">
		<input type="submit" class="ui button"  value="삭제하기" onclick="location.href='deleteDetailRival.do?rival_seq=${rival.rival_seq }'"> 
		
		</div>
		
	
	
</div>


</body>
</html>