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
body{height: auto;}
#loginSection{
	/* position: absolute;
	top: 50%;
	left: 50%; */
	width: 500px;
	/* height: 420px; 
	overflow: hidden;*/
	background-color: #fff;
/* 	margin-left: -200px; */
	text-align: center;
	color: #808080;
	/* line-height: 5px; */
	margin: 0 auto;
	margin-top:8%;
}
#loginSection .input,#loginSection .button{width: 80%;} 
#loginSection .title{
    margin-bottom: 60px;
    width:100%;
}
#loginSection .field{
	margin-bottom: 15px;
}
.warning{
	clear: both;
	margin-bottom: 20px;
}
.warning p{
	color:#CF522A;
	font-size: 24px;
}
.tips{text-align: left; background: #efefef; padding: 15px 20px; opacity: 0.8; letter-spacing: -0.5px; width: 80%; margin: 0 auto;margin-top:40px;  font-size: 12px;}


/* ::placeholder
{
  font-size: 1.3em;
  font-family: 'Nanum Brush Script', cursive;  
} 
 */

</style>
   
</head>
<body>

      <!-- 상단 메뉴 바 -->
      
      <!-- 로그인 폼 CSS -->
     <div id="loginSection">
     <div class="title">
     <span style="font-weight: bold; font-size: 42px; /* background: #005bab; */ letter-spacing: -0.5px; padding:12px 34px; color: #005bab; display: block; margin-bottom: 24px">Solstice</span>
     <span style="font-size: 18px; color: #545454; letter-spacing: -1px; margin-top: 10px;  font-weight: bold;">상표권 침해권리 지원서비스</span>
     <span style="font-size: 18px; border-left: 2px solid #F28496; text-align: left; color: #F28496; padding-left: 12px; margin-left: 12px;font-weight: bold;letter-spacing: -1px;">분석가 시스템</span>
     </div> 
     
     <div class="warning">
     <c:if test="${!empty loginFail }">  
	 <p>로그인 실패!</p>  
	 </c:if>
	 <c:if test="${!empty userFail }">
	 <p>분석가가 아닙니다!</p>
	 </c:if>
     </div>
     
        <form action="userLogin.do" method="post" name="loginForm" id="loginForm">
		<div class="field">
          <div class="ui large left icon input">
            <i class="user icon"></i><input type="text" name="user_email"  placeholder="email" required>
          </div>
        </div>
        <div class="field">
          <div class="ui large left icon input">
            <i class="lock icon"></i><input type="password" name="user_pw" placeholder="password" required>
          </div>
        </div> 
       <h3> IP Address : <%=request.getRemoteAddr()%></h3> <br>
       <button class="ui black button" id="btnsub" onclick="return sendit();" style="height:48px; background: #005bab;">로그인</button>
	   <br><br>     
	   <button class="ui grey button" onclick="return enroll();" style="height:48px; background: #888888;">회원가입</button>
       </form>
        <div class="tips">
        <h5>[도움말]</h5>      
        1) 분석가 회원가입은 관리자에 의해서만 직권으로 가입됩니다.<br>
        2) 비밀번호 변경도 관리자에 의해 직권변경만 가능합니다.
        </div>
        </div>

  </body>


</html>
