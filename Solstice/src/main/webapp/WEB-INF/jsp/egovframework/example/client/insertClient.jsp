<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객등록</title>
<!-- 시맨틱유아이 cdn -->

  <style>

.help{
font-size:15px;
border-top: 1px solid grey;
margin-top: 20px;

}
.enrollSection{
	align:center;
	background: #f6f6f6;
	width: 60%;
	height: 60%x;
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



</style>

</head>
<body>

<div id="request" style="margin-left:1000px;">
*필수입력
</div>
 <body>
<form action="inserClient.do" method="post">
	<div class="enrollSection">
	
		
<table class="table table-bordered"> 
 
 <tbody>
   <tr>
      <td>사업자 등록번호 *</td>
      <td><input type="number" id="com_biz_no" name="com_biz_no" placeholder="" required>&emsp;10자리 숫자만 입력&emsp;<input type="submit" class= "ui black basic button" value="중복확인"id="btnsub"></td>
   </tr>
   
    <tr>
   <td>회사명*</td>
      <td><input type="text" id="com_company_name" name="com_company_name" placeholder="" required>&emsp;회사명 전체&emsp;</td>
      </tr>
      
       <tr>
   <td>특호고객번호 목록*</td>
      <td><input type="number" id="kipo_no_list" name="kipo_no_list" placeholder="" >&emsp;*특허고객번호가 여러 개면 ,으로 구분 입력</td>
      </tr>
   
   <tr>
   <td>법인 등록번호</td>
      <td><input type="number" id="com_reg_no" name="com_reg_no" placeholder="">&emsp;13자리 숫자만 입력&emsp;</td>
      </tr>
      
      <tr>
   <td>담당자1 이름*</td>
      <td><input type="text" id="staff1_name" name="staff1_name" placeholder="홍길동" ></td>
      </tr>
      
       <tr>
   <td>담당자1 부서*</td>
      <td><input type="text" id="staff1_dept" name="staff1_dept" placeholder="" ></td>
      </tr>
      
       <tr>
   <td>담당자1 연락처*</td>
      <td><input type="number" id="staff1_tel" name="staff1_tel" placeholder="01012345678" >&emsp;숫자만 입력해주세요.</td>
      </tr>
       
       <tr>
   <td>담당자1 이메일</td>
      <td><input type="email" id="staff1_email" name="staff1_email" placeholder="email@company.com"></td>
      </tr>
      
       <tr>
   <td>담당자2 이름</td>
      <td><input type="text" id="staff2_name" name="staff2_name" placeholder="email@company.com" ></td>
      </tr>
      
      <tr>
   <td>담당자2 부서</td>
      <td><input type="text" id="staff2_dept" name="staff2_dept" placeholder="인사팀" ></td>
      </tr>
      
       <tr>
   <td>회사명 2*</td>
      <td><input type="text" id="com_company_name2" name="com_company_name2" placeholder="">&emsp;(주), 주식회사, 유한회사 등 기업형태 제외, 순수 회사명&emsp;</td>
      </tr>
      
       <tr>
   <td>담당자2 연락처</td>
      <td><input type="number" id="staff2_tel" name="staff2_tel" placeholder="01012345678">&emsp;숫자만 입력해주세요.</td>
      </tr>
        
      <tr>
   <td>담당자2 이메일</td>
      <td><input type="email" id="staff2_email" name="staff2_email" placeholder="eamil@company.com"></td>
      </tr>
      
       <tr>
   <td>대표자명*</td>
      <td><input type="text" id="com_ceo" name="com_ceo" placeholder="OOO" ></td>
      </tr>    
      
 

 </tbody> 
 

</table>
	</div>
	<!-- 회원정보입력섹션 끝! -->
	
	<div style="margin-top:30px;"></div>
           <button type = "submit" class="ui black basic button" >완료</button>
	
		<input type="reset" class="ui button" value="다시작성"> &nbsp;

</form>
             
</body>
<div class = "help">
<p><p>
[도움말]<p>
[1] 특허고객번호 목록을 기준으로 상표공보 정보를 수집합니다.<p>
[2] 상표공보가 수집되어야 기초분석이 가능합니다. 반드시 1개 이상의 특허고객번호를 입력하세요.<p>
[3] 고객과의 기본적인 CRM 제공을 위해 담당자 정보는 2명까지 입력이 가능합니다.
</div>
</html>