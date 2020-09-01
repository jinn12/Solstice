<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
 <script type="text/javascript">
 $(function(){
	 
	// 내정보수정 유효성 체크
		var emTF = "T";
		var pwEq = "T";
		var pwTF = "T";
	 
	 	
	 	

 
		// 이메일 중복체크
		 $("#checkEmail").click(function(){
			var email1 = '<c:out value="${sessionScope.loginUser.user_email}"/>';
	 		var email2 = $("#user_email").val();
		if(email1 != email2) {
			 $.ajax({
		         url:"checkEmail.do",
		         type:"post",
		        data:{user_email:$("#user_email").val()},
		        success: function(result){
		             if(result == "ok"){
		                var emReg = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		                if(!emReg.test($("#user_email").val())){
		                   $("#divEmail").html("이메일 형식에 맞지않습니다. 다시 입력해 주세요.");
		                  emTF = "F";
		                }else{
		                   $("#divEmail").html("<span style='color:#48d239;'>사용 가능한 이메일 입니다.</span>");
		                  emTF = "T";
		                }
		             }
		             else{
		                $("#divEmail").html("이미 사용중인 이메일 입니다. 다른 이메일을 입력해주세요.");
		               emTF = "F";
		             }
		          },
		          error: function(request, status, errorData){
						console.log("error code : " + request.status + "\nMessage : " + request.responseText + "\nError : " + errorData);
					}
		       });    
		} else {
			$("#divEmail").html("<span style='color:#48d239;'>현재 이메일 입니다.</span>");
			emTF = "T";
	}
		 });
		
	
		 // 비밀번호 유효성 체크
		   $("#user_pw").keyup(function(){
			      var pwdReg = /^(?=.*[a-z])(?=.*\d)(?=.*[$@$!%*#?&])[a-zA-Z\d$@$!%*#?&]{8,20}$/;    //비밀번호 유효성 - 영어/숫자/특수문자
			      if(!pwdReg.test($("#user_pw").val())){
			         $("#divpwd").html("영문/숫자/특수문자 각 1개씩 포함 8~20자로 입력해야 합니다.");
			         pwTF = "F";
			      }
			      else{
			         $("#divpwd").html("<span style='color:#48d239;'>사용 가능한 암호입니다.</span>");
			         pwTF = "T";
			      }
			      
			      if($("#user_pw").val() != $("#user_pw2").val()){
				         $("#divpwd2").html("암호가 일치하지 않습니다.");
				         pwEq = "F";
				  }else{
				         $("#divpwd2").html("<span style='color:#48d239;'>암호가 일치합니다.</span>");
				         pwEq = "T";
				  }
			      
			      
			     
			   });
			   
	 	// 비밀번호 일치 확인
		   $("#user_pw2").keyup(function(){
		      if($("#user_pw").val() != $("#user_pw2").val()){
		         $("#divpwd2").html("암호가 일치하지 않습니다.");
		         pwEq = "F";
		      }
		      else{
		         $("#divpwd2").html("<span style='color:#48d239;'>암호가 일치합니다.</span>");
		         pwEq = "T";
		      }
		      return false;
		   });
	 	
				// 수정하기 버튼 눌렀을 때
		 		 $("#btnsub").click(function(){
		 		      if(pwTF=="T" && pwEq=="T" && nnTF=="T" && emTF=="T" ){
		 		    	 return true;
		 		      }else{
		 		         alert("입력한 내용을 다시 확인해주세요.");
		 		         return false
		 		      }
		 		   
		 		 	
		 		   });
		 		
		 		// 수정하기 버튼 눌렀을 때
		 		 $("#btnsub2").click(function(){
		 		      if(nnTF=="T"){
		 		    	 return true;
		 		      }else{
		 		         alert("입력한 내용을 다시 확인해주세요.");
		 		         return false
		 		      }
		 		   });
			 	
		 }); // document Ready...
	
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
	height: 250px;
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

	<p style="font-size: 20pt; padding-top:50px; color:#373737; text-align:center;">정보수정</p>
	
	<!-- 회원정보입력섹션 시작! -->
	
	<div class="enrollSection">
	<form action="updateMyPage.do" method="post">
		
		<table class="enrollTable">
		
		<tr>
				<th>이메일</th>
				<td><div class="ui input" style="width:350px;"><input type="email" id="user_email" name="user_email" placeholder="예: solsitce@solstice.com" required></div>&emsp;
									<input type="button" class="mainBtn" value="중복확인" id="checkEmail"/>
									<div class="enrolldiv" id="divEmail"></div>
				</td>
			</tr>

			<tr>
				<th>비밀번호</th>
				<td><div class="ui input" style="width:350px;"><input type="password" id="user_pw" name="user_pw" value="${loginUser2.user_pw}" placeholder="영문/숫자/특수문자 각 1개 이상 포함하여 8-20자" required></div>
					<div class="enrolldiv" id="divpwd"></div>
				</td>
			</tr>
			
			<tr>
				<th>비밀번호 확인</th>
				<td><div class="ui input" style="width:350px;"><input type="password" id="user_pw2" value="${loginUser2.user_pw}" placeholder="작성한 비밀번호와 동일하게 입력해주세요." required></div>
					<div class="enrolldiv" id="divpwd2"></div>
				</td>
			</tr>

		</table>
		
	</div>
	
	<!-- 회원정보입력섹션 끝! -->
	
	<!-- 약관동의섹션 -->
	<!-- 회원정보입력섹션 끝! -->
	<p style="text-decoration: underline; color:#aaa;padding-top:15px; font-size: 10pt;" onclick="location.href='moveQuitPage.do'">탈퇴하기</p>
		<br><br>
		<div align="center">
	
			<input type="submit" class="mainBtn" value="수정하기" id="btnsub"> &nbsp;
		
			<input type="reset" class="mainBtn1" value="다시작성"> &nbsp;
		</div>
	</form>
</div>

<!-- 회원가입 페이지 끝 -->
</body>
</html>