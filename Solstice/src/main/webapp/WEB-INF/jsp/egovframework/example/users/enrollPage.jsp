<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" /> 
<title>회원가입</title>
</head>
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">    
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
 <script type="text/javascript">
 $(function(){
	 
		// 회원가입 유효성 체크
		var emTF = "F";
		var pwEq = "F";
		var pwTF = "F";
	 
	 	
	 		// 이메일 중복체크
 		 $("#checkEmail").click(function(){
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
 	 	
		// 이름 한글만 입력 
	 		$("#user_name").keyup(function(){
			      var pwdReg = /^[가-힣]{2,5}$/;    //한글만 2~5자입력
			      if(!pwdReg.test($("#user_name").val())){
			         $("#divusername").html("한글만 2~5자 입력 가능합니다");
			         unTF = "F";
			      }
			      else{
			         $("#divusername").html("<span style='color:#48d239;'>사용 가능합니다.</span>");
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
		
		 
		// 체크박스 전체선택 및 전체해제
		$("#allCheck").click(function(){
			if($(this).is(":checked")){
				$(".chk").prop("checked", true);
			} else {
				$(".chk").prop("checked", false);
			}
		});

		// 한개 체크박스 선택 해제시 전체선텍 체크박스도 해제 & 약관 전체동의 시에만 가입하기 버튼 활성화
		$(".chk").click(function(){
			if($("input[name='RowCheck']:checked").length == 2){
				$("#allCheck").prop("checked", true);
				$("#btnsub").removeAttr('disabled');
			}else{
				$("#allCheck").prop("checked", false);
				$("#btnsub").attr("disabled", true);
			}	
		});
		
	}); // document.ready...



 </script>
<style>
.wrapEnrollSuccessPage{
	background-color: #fff; 
	margin-left: 25%;
	margin-right: 25%;
	margin-top:140px; /* 상단바 높이만큼 수정 */
	overflow:hidden;
	min-height: 100%;
}
.title{
	text-align: center;
	margin-bottom: 40px;
}
.table_area{padding: 60px 20px;/* box-shadow:6px 0px 20px 0px #f2f2f2;  */ background: #f7fbff;}
.table_area table{width:90%; margin: 0 auto;background: #f7fbff;}
.table_area table.table_detail th{background: none; text-align: right;}
.table_area table.table_detail tr{height: 60px;}
.btn_group{text-align: center; float: none; clear: both;}

/* 회원가입 완료 */
.wrapEnrollPage{
	background-color: #fff;
	/* margin-left: 25%;
	margin-right: 25%; */
	margin:0 auto;   
	width:880px;
	overflow:hidden;
	min-height: 100%;
	margin-top: 60px;
}

</style> 
<body>
<!-- 회원가입 페이지 시작 -->

<div class="wrapEnrollPage">
	<div class="title">
     <span style="font-weight: bold; font-size: 42px; /* background: #005bab; */ letter-spacing: -0.5px; padding:12px 34px; color: #005bab; display: block;">Solstice</span>
     <span style="font-size: 18px; color: #545454; letter-spacing: -1px; margin-top: 10px;  font-weight: bold;">상표권 침해권리 지원서비스</span>
     <span style="font-size: 18px; border-left: 2px solid #005bab; text-align: left; color: #005bab; padding-left: 12px; margin-left: 12px;font-weight: bold;letter-spacing: -1px;">회원가입</span>
     </div> 
	
	<!-- 회원정보입력섹션 시작! -->
	<form action="insertUsers.do" method="post">
	<div class="table_area">
	<input type="hidden" name="usertype" value="USER">
		<table class="table table_detail noborder">
			<colgroup>
				<col width="20%"></col>
				<col width="*"></col>
				<col width="15%"></col>
			</colgroup>
			<tr>
				<th class="required">이메일</th>
				<td><input type="email" class="form-control" id="user_email" name="user_email" placeholder="예: sosltice@gmail.com" required>
					<div class="enrolldiv" id="divEmail"></div>
				</td>
				<td><button type="button" class="btn" id="checkEmail">중복확인</button>	</td>
			</tr>
			
			
			<tr>
				<th class="required">이름</th>
				<td><input type="text" class="form-control" id="user_name" name="user_name" placeholder="한글만 가능(최대 5자)" required>
					<div class="enrolldiv" id="divusername"></div>
				</td>
				<td></td>
			</tr>
			
				
			<tr>
				<th>회원구분</th>
				<td><input type="radio" name="user_auth" value="ADMIN" checked="checked" id="radio1"><label for="radio1">관리자</label>
					<input type="radio" name="user_auth" value="USER" id="radio2"><label for="radio2">분석가</label>
				</td>
				<td></td>
			</tr>
			
		
			<tr>
				<th class="required">비밀번호</th>
				<td><input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="영문/숫자/특수문자 각 1개 이상 포함하여 8-20자" required>
					<div class="enrolldiv" id="divpwd"></div>
				</td>
				<td></td>
			</tr>
			
			<tr>
				<th class="required">비밀번호 확인</th>
				<td><input type="password" class="form-control" id="user_pw2" placeholder="작성한 비밀번호와 동일하게 입력해주세요." required>
					<div class="enrolldiv" id="divpwd2"></div>
				</td>
				<td></td>
			</tr>
			
		</table>
		
	</div>
	</form>
	<!-- 회원정보입력섹션 끝! -->
	
	<div class="btn_group">
	<button class="btn" type="reset">
	<i class="far fa-redo"></i> 다시작성
	</button>
	<button class="btn btn-submit" type="submit">
	<i class="far fa-check"></i> 가입하기
	</button>
	</div>
	
</div>

<!-- 회원가입 페이지 끝 -->
</body>
</html>