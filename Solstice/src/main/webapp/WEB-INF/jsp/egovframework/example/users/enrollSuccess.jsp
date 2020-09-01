<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>

<!-- 시맨틱유아이 cdn -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">

</head>
<body>

<!-- 회원가입완료 페이지 시작 -->
<div class="wrapEnrollSuccessPage">
	<div align="center">
		<i class="massive teal check circle icon"></i>
		<p style="font-size: 25pt; padding-top:20px; color:#373737; text-align:center;">회원가입이 완료되었습니다.</p>
	    <br><br>
		<button class="ui black button" onclick="location.href='moveLogin.do'" style="width:150px; height:40px; background: #4c4c4c;">로그인</button>
	</div>
</div>
<br><br><br><br><br><br><br><br>

</body>

</html>