<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Solstice</title>

</head>

<body>
 
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <c:if test="${loginUser.user_auth == 'ADMIN' }">
  <input type ="text" value="${loginUser.user_email}">
  </c:if>
    <c:if test="${loginUser.user_auth == 'USER' }">
  <input type ="text" value="${loginUser.user_email}">
  </c:if>
   

      <ul class="nav navbar-nav navbar-right">
       <c:if test="${loginUser.user_auth == 'ADMIN' }">
        <li><a href="adlogout.do">로그아웃</a></li></c:if>
          <c:if test="${loginUser.user_auth == 'USER' }">
        <li><a href="logout.do">로그아웃</a></li></c:if>
        <li><a href="moveMyPageEdit.do">정보관리</a></li>

      </ul>
     
  
    </div><!-- /.navbar-collapse -->



</body>
</html>