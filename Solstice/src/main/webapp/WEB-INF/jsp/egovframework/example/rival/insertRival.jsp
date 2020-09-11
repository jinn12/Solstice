<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경쟁사 등록</title>
</head>
<body>

<div id="request" style="margin-left:1000px;">
*필수입력
</div>
 <body>

<form action="insertRival.do" method="post">

	<div class="enrollSection">
	

<table class="table table-bordered"> 
    
     
   <tr>
      <td>경쟁사 회사명222</td>
      <td><input type="text" id="rival_company_name" name="rival_company_name" placeholder="" required>&emsp;회사명 전체&emsp;<!-- <input type="submit" class= "ui black basic button" value="중복확인"id="btnsub"> --></td>
   </tr> 
   
    <tr>
   <td>경쟁사 사업자등록번호</td>
      <td><input type="number" id="rival_biz_no" name="rival_biz_no" placeholder="">&emsp;&emsp;</td>
      </tr>
      
       <tr>
   <td>경쟁사 대표 이름</td>
      <td><input type="text" id="rival_ceo" name="rival_ceo" placeholder="" >&emsp;</td>
      </tr>
   
   <tr>
   <td>특허고객번호 목록</td>
      <td><input type="text" id="rival_kipo_no_list" name="rival_kipo_no_list" placeholder="*특허고객번호가 여러 개면 ,으로 구분 입력">&emsp;&emsp;</td>
      </tr>
      
      <tr>
   <td>경쟁사 법인 등록 번호</td>
      <td><input type="text" id="rival_reg_no" name="rival_reg_no" placeholder="" ></td>
      </tr>
  
     
      
       <tr>
   <td>심판청구인 키워드</td>
      <td><input type="text" id="demander_keyword" name="demander_keyword" placeholder="" ></td>
      </tr>
      
       <tr>
   <td>심판피청구인 키워드</td>
      <td><input type="text" id="claimee_keyword" name="claimee_keyword" placeholder="" >&emsp;</td>
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
</html>