<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <title>Insert title here</title> -->
</head>
<style>
.userinfo{border: none;color: #686868; padding-left: 8px;background: none;}
.userinfo:focus{border: none;}
.topR{position: absolute; right: 40px; top: 0;}
</style>
<body>
<header id="top">
<a href="loginMain.do" id="title">
<span style="font-weight: bold; font-size: 26px; color: #005bab; letter-spacing: -0.5px;">Solstice</span>
</a>
<span style="font-size: 16px; color: #686868; letter-spacing: -1px; padding-left: 12px;">상표권 침해권리 지원서비스</span>
<c:if test="${loginUser.user_auth == 'USER' }">
<span style="font-size: 16px; border-left: 1px solid #F28496; text-align: left; color: #F28496; padding-left: 12px; margin-left: 12px;/* font-weight: bold; */letter-spacing: -1px;">분석가 시스템</span>
</c:if>
<c:if test="${loginUser.user_auth == 'ADMIN' }">
<span style="font-size: 16px; border-left: 1px solid #568DA6; text-align: left; color: #568DA6; padding-left: 12px; margin-left: 12px;/* font-weight: bold; */letter-spacing: -1px;">관리자 시스템</span>
</c:if>
<div class="topR">
  <c:if test="${loginUser.user_auth == 'ADMIN' }">
  <img alt="사용자로그아웃" src="images/user.gif"><input readonly class="userinfo" type ="text" value="${loginUser.user_email}">
  </c:if>
  <c:if test="${loginUser.user_auth == 'USER' }">
  <img alt="사용자로그아웃" src="images/user.gif"><input readonly class="userinfo" type ="text" value="${loginUser.user_email}">
  </c:if>
  
  <c:if test="${loginUser.user_auth == 'ADMIN' }">
  <a href="adlogout.do" id="user_btn"><img alt="관리자로그아웃" src="images/logout.gif"></a>
  </c:if>
  <c:if test="${loginUser.user_auth == 'USER' }">
  <a href="logout.do" id="user_btn"><img alt="사용자로그아웃" src="images/logout.gif"></a>
  </c:if>&nbsp;&nbsp;
  <a href="moveMyPageEdit.do" id="set_btn"><img alt="정보관리" src="images/setting.gif"></a>
</div>
</header>

<!-- <div id="Name"  style= "font-size:30px; margin-top:10px; width:700px;height:80px;" >
<a href="loginMain.do">Solstice 상표권 침해권리 지원서비스</a>
</div> -->
</body>
</html>