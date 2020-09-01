<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객정보수정</title>
</head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
 <script type="text/javascript">
 /* $(function(){
	 
		// 회원가입 유효성 체크
		var bzTF = "F";
		var pwEq = "F";
		var pwTF = "F";
	 
	 	
	 		// 사업자 등록번호
 		 $("#checkBizNo").click(function(){
 			 $.ajax({
 		         url:"checkBizNo.do",
 		         type:"post",
 		         data:{com_biz_no:$("#com_biz_no").val()},
 		         success: function(result){
 		             if(result == "ok"){
 		                var bzNum = /^[0-9]{10}$/;
 		                if(!bzNum.test($("#com_biz_no").val())){
 		                   $("#divBizNo").html("10자리 숫자만 가능합니다.");
 		                  bzTF = "F";
 		                }else{
 		                   $("#divBizNo").html("<span style='color:#48d239;'>사용 사업자 등록번호 입니다.</span>");
 		                  bzTF = "T";
 		                }
 		             }
 		             else{
 		                $("#divBizNo").html("이미 등록된 사업자 등록번호 입니다. 다시 확인해 주세요.");
 		               bzTF = "F";
 		             }
 		          },
 		          error: function(request, status, errorData){
 						console.log("error code : " + request.status + "\nMessage : " + request.responseText + "\nError : " + errorData);
 					}
 		       });   
 		       return false;
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
 	 	
		// 숫자만 입력
	 		$("#user_number").keyup(function(){
			      var pwdReg = /^[0-9]{13}$/;    //숫자만 입력
			   
			      if(!pwdReg.test($("#user_number").val())){
			         $("#divusernumber").html("숫자만 13자리 입력가능합니다.");
			         unTF = "F";
			       
			      }
			      else{
			         $("#divusernumber").html("<span style='color:#48d239;'>사용 가능합니다.</span>");
			         unTF = "T";
			      }
			      
			      			     
			   });
	 	
	 	
	 	// 가입하기 버튼 눌렀을 때
	 		 $("#btnsub").click(function(){
	 		      if( pwTF=="T" && pwEq=="T" && unTF=="T" && emTF=="T")
	 		         return true;
	 		      else{
	 		         alert("입력한 내용을 다시 확인해주세요.");
	 		         return false;
	 		      }
	 		   });
		

		
	}); // document.ready... */


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

	<p style="font-size: 20pt; padding-top:50px; color:#373737; text-align:center;">경쟁사 정보 수정</p>
	
	<!-- 회원정보입력섹션 시작! -->
	
	<div class="enrollSection">
	<form action="updateClientOfRiva.do" method="post">
		<input type="hidden" name="rival_seq" value="${rival.rival_seq }">
             <input type="hidden" name="com_seq" value="${rival.com_seq }"> 
		
			<tr>
				<th>경쟁사 회사명</th>
				<td><div class="ui input" style="width:350px;"><input type="text" id="rival_company_name" name="rival_company_name"  placeholder="${rival.rival_company_name }" ></div>&emsp;
									
									<div class="enrolldiv" id="divBizNo"></div>	
				</td>
			</tr>
			
			
			<tr>
				<th>특허고객번호 목록</th>
				<td><div class="ui input" style="width:350px;"><input type="text" id="rival_kipo_no_list" name="rival_kipo_no_list" placeholder="${rival.rival_kipo_no_list }" ></div>
					<div class="enrolldiv" id="divRegNo"></div>
				</td>
			</tr>
			
			<tr>
				<th>경쟁사 법인 등록 번호</th>
				<td><div class="ui input" style="width:350px;"><input type="text" id="rival_reg_no" name="rival_reg_no" placeholder="${rival.rival_reg_no }"></div>
					<div class="enrolldiv" id="divComName"></div>
				</td>
			</tr>
			 
			 
			<tr>
				<th>경쟁사 회사 이름2</th>
				<td><div class="ui input" style="width:350px;"><input type="text" id="rival_company_name2" name="rival_company_name2" placeholder="${rival.rival_company_name2 }"></div>
					<div class="enrolldiv" id="divComName"></div>
				</td>
			</tr>
			<tr>
				<th>심판청구인 키워드</th>
				<td><div class="ui input" style="width:350px;"><input type="text"  id="demander_keyword" name="demander_keyword"
                placeholder="${rival.demander_keyword }" ></div>
					<div class="enrolldiv" id="divComName2"></div>
				</td>
			</tr>
			
			<tr>
				<th>심판피청구인 키워드</th>
				<td><div class="ui input" style="width:350px;"><input type="text" id="claimee_keyword" name="claimee_keyword" placeholder="${rival.claimee_keyword }"></div>
					<div class="enrolldiv" id="divComCeo"></div>
				</td>
			</tr>
		
		</table>
		
	</div>
	
	<!-- 회원정보입력섹션 끝! -->
	

	<br><br><br>
	<div align="center">
		<input type="submit" class="ui black button" value="수정완료" id="btnsub"></a> &nbsp;
		<input type="reset" class="ui button" value="다시작성"> &nbsp;
	</div>
	</form>
</div>

<!-- 회원가입 페이지 끝 -->
</body>
</html>