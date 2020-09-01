<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
 <script type="text/javascript">

   //var message = "${message}";
// if(message != null && message != ""){
	// alert(message);
// }
		function sendit() {
		    var frm = document.loginForm;
		    if (!frm.user_email.value) { //아이디를 입력하지 않으면.
		        alert("아이디를 입력해주세요.");
		        frm.email.focus();
		        return false;
		    }
		    if (!frm.user_pw.value) { //패스워드를 입력하지 않으면.
		        alert("패스워드를 입력 해주세요.");
		        frm.pw.focus();
		        return false;
		    }
		
		 
		    document.loginForm.submit(); //유효성 검사가 통과되면 서버로 전송.
		
		    return false;
		}
		function enroll(){
			location.href='moveEnrollPage.do';
			return false;
		}
		
		</script>
<style>

#loginSection{
	position: absolute;
	top: 50%;
	left: 50%;
	width: 400px;
	height: 420px;
	overflow: hidden;
	background-color: #fff;
	margin-top: -200px;
	margin-left: -200px;
	text-align: center;
	color: #808080;
	line-height: 5px;
}


}
::placeholder
{
  font-size: 1.3em;
  font-family: 'Nanum Brush Script', cursive;
}


</style>

</head>
<body>

      <!-- 상단 메뉴 바 -->
     
      <!-- 로그인 폼 CSS -->
     <div id="loginSection">
      
        <c:if test="${!empty loginFail }">
<p style="font-size: 20pt; padding-top:20px; color:#373737;">로그인 실패!</p>

</c:if>
<c:if test="${!empty userFail }">
<p style="font-size: 20pt; padding-top:20px; color:#373737;">분석가가 아닙니다!</p>

</c:if>
        <form action="userLogin.do" method="post" name="loginForm" id="loginForm">
	<div class="field">
          <div class="ui large left icon input" style="width:300px;">
            <i class="user icon"></i><input type="text" name="user_email"  placeholder="email@email" required>
          </div>
        </div>
        <br> <br><br>
        <div class="field">
          <div class="ui large left icon input" style="width:300px;">
            <i class="lock icon"></i><input type="password" name="user_pw" placeholder="PASSWORD" required>
          </div>
        </div>
        <br>
         
              <h3> IP Address : <%=request.getRemoteAddr()%></h3> 
                <br>
       <button class="ui black button" id="btnsub" onclick="return sendit();" style="width:300px; height:40px; background: #4c4c4c;">로그인</button>
	<br><br>
		<button class="ui grey button" onclick="return enroll();" style="width:300px;height:40px; background: #aaa;">회원가입</button>
	<br><br><br>

          </form>
         <div class="head" style="margin-top: 80px;" >
         [도움말]
        <div class="ex1" style="margin-top: 20px;">
        1) 분석가 회원가입은 관리자에 의해서만 직권으로 가입됩니다.
        </div>
        <div class="ex2" style="margin-top: 20px;">
        2)비밀번호 변경도 관리자에 의해 직권변경만 가능합니다.
        </div>
         </div>
        </div>
        


  </body>


</html>
