<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상표 상세보기</title>
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

	<p style="font-size: 20pt; padding-top:50px; color:#373737; text-align:center;">상표 상세보기</p>
	
	<!-- 회원정보입력섹션 시작! -->
	
	<div class="enrollSection">
	
		
		<table class="enrollTable">
		
			<tr>
				<th></th>
				<td><div class="ui input" style="width:350px;"><img src=${trademark.image_url }></a></div>&emsp;
				</td>
			</tr>
		
			<tr>
				<th>상품분류</th>
				<td><div class="ui input" style="width:350px;">${trademark.prod_cate_code_list }</div>&emsp;
				</td>
			</tr>
					
			<tr>
				<th>출원번호</th>
				<td><div class="ui input" style="width:350px;">${trademark.appl_no }</div>
					<div class="enrolldiv" id="divRegNo"></div>
				</td>
			</tr>
			
			<tr>
				<th>출원공고번호</th>
				<td><div class="ui input" style="width:350px;">${trademark.pub_date }</div>
					
				</td>
			</tr>
			
			<tr>
				<th>출원인</th>
				<td><div class="ui input" style="width:350px;">${trademark.applicant }</div>
				
				</td>
			</tr>
			
			<tr>
				<th>출원일자</th>
				<td><div class="ui input" style="width:350px;">${trademark.appl_date }</div>
					
				</td>
			</tr>
			<tr>
				<th>등록일자</th>
				<td><div class="ui input" style="width:350px;">${trademark.reg_date }</div>
				
				</td>
			</tr>
			<tr>
				<th>출원공고일자</th>
				<td><div class="ui input" style="width:350px;">${trademark.reg_pub_no }</div>
				</td>
			</tr>
			</table>
			
			   <!-- //notice view -->
   <%--      
	<c:url var="noticemdp" value="tmprenext.do">
				<c:param name="tm_seq" value="${ prevnotice.tm_seq }" />
			</c:url>
			<c:url var="noticemdn" value="tmprenext.do">
				<c:param name="tm_seq" value="${ nextnotice.tm_seq }" />
			</c:url>
			<br>
			<table class="prenext">
				<c:if test="${ empty prevnotice }">
					<tr class="prenexttr">
						<th width="170"></th>
						<td>&nbsp;&nbsp;&nbsp;이전 글이 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${ !empty prevnotice }">
					<tr>
						<th width="170">&nbsp;&nbsp;&nbsp;Pre<i class="arrow alternate circle up outline icon"></i></th>
						<td>&nbsp;&nbsp;&nbsp;<a href="${ noticemdp }">${ prevnotice.tm_ko } </a></td>
					</tr>
				</c:if>
				<c:if test="${ empty nextnotice }">
					<tr>
						<th>End</th>
						<td>&nbsp;&nbsp;&nbsp;다음 글이 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${ !empty nextnotice }">
					<tr>
						<th>Next<i class="arrow alternate circle down outline icon"></i></th>
						<td>&nbsp;&nbsp;&nbsp;<a href="${ noticemdn }">${ nextnotice.tm_ko }</a></td> 
					</tr>
				</c:if>
        

		</table>
		
	</div> --%>
	
	
	

	<br><br><br>
	  <div>
		<input type="submit" class="ui black button" value="목록" id="btnsub"  onclick="location.href='javascript:history.back();'"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	
		</div>
		
	
	
</div>


</body>
</html>