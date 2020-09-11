<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객의 경쟁사 등록</title>
</head>
<body>
<form action="insertRivaOfClient.do" method="post">
 <input type="hidden" name="com_seq" value="${com_seq}">
<div class="title_area">
<span>고객관리</span><i class="fas fa-caret-right"></i><span>경쟁사관리</span><i class="fas fa-caret-right"></i><span>경쟁사등록</span>
</div>
<div class="table_area">	
<div style="font-size: 13px; font-weight: bold; color: red; padding-bottom: 5px;">
* 필수입력
</div>
<table class="table table_detail noborder"> 
<colgroup>
		<col width="200px"/> 
		<col width="*"/>
		<col width="40%"/>
</colgroup>
   <tr>
   	<th>고객사</th>
   	<td colspan="2">${com_company_name}</tr>
   <tr>
      <th class="required">경쟁사 회사명</th>
      <td><input type="text" class="form-control" id="rival_company_name" name="rival_company_name" placeholder="" required><!-- <input type="submit" class= "ui black basic button" value="중복확인"id="btnsub"> --></td>
   	  <td>*회사명 전체</td>
   </tr>
   
    <tr>
  	  <th>경쟁사 사업자등록번호</th>
      <td><input type="number" class="form-control" id="rival_biz_no" name="rival_biz_no" placeholder=""></td>
      <td></td>
    </tr>
    <tr>
      <th>경쟁사 대표 이름</th>
      <td><input type="text" class="form-control" id="rival_ceo" name="rival_ceo" placeholder="" ></td>
      <td></td>
    </tr>
    <tr>
      <th>특허고객번호 목록</th>
      <td><input type="text" class="form-control" id="rival_kipo_no_list" name="rival_kipo_no_list" placeholder=""></td>
      <td>*특허고객번호가 여러 개면 ,으로 구분 입력</td>
    </tr>
    <tr>
      <th>경쟁사 법인 등록 번호</th>
      <td><input type="text" class="form-control" id="rival_reg_no" name="rival_reg_no" placeholder="" ></td>
      <td></td>
    </tr>
    <tr>
      <th>심판청구인 키워드</th>
      <td><input type="text" class="form-control" id="demander_keyword" name="demander_keyword" placeholder="" ></td>
      <td></td>
    </tr>
    <tr>
      <th>심판피청구인 키워드</th>
      <td><input type="text" class="form-control" id="claimee_keyword" name="claimee_keyword" placeholder="" ></td>
      <td></td>
    </tr>
  
 </tbody> 
 

</table>
</div>
<div class="btn_group">
	<button class="btn" type="reset">
	<i class="far fa-redo"></i> 다시작성
	</button>
	<button class="btn btn-submit" type="submit">
	<i class="far fa-check"></i> 완료
	</button>
</div>	
	<!-- <div style="margin-top:30px;"></div>
           <button type = "submit" class="ui black basic button" >완료</button>
	
		<input type="reset" class="ui button" value="다시작성"> &nbsp;
 -->
</form>
             
</body>
</html>