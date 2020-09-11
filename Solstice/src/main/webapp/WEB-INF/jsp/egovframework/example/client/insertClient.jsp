<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객등록</title>
</head>
<body>
<form action="inserClient.do" method="post">
<div class="title_area">
<span>고객관리</span><i class="fas fa-caret-right"></i><span>고객등록</span>
</div>
<div class="table_area">	
<div style="font-size: 13px; font-weight: bold; color: red; padding-bottom: 5px;">
* 필수입력
</div>
<table class="table table_detail noborder"> 


<colgroup>
		<col width="160px"/> 
		<col width="*"/>
		<col width="40%"/>
</colgroup>
 <tbody>
   <tr>
      <th class="required">사업자 등록번호</th>
      <td><input class="form-control" type="number" id="com_biz_no" name="com_biz_no" placeholder="" required></td>
   	  <td>*10자리 숫자만 입력&emsp;<button type="submit" class= "btn" id="btnsub">중복확인</button></td>
   </tr>
   
    <tr>
   <th class="required">회사명</th>
      <td><input class="form-control" type="text" id="com_company_name" name="com_company_name" placeholder="" required></td>
      <td>*회사명 전체</td>
      </tr>
      
       <tr>
   <th class="required">특호고객번호 목록</th>
      <td><input class="form-control" type="number" id="kipo_no_list" name="kipo_no_list" placeholder="" ></td>
      <td>*특허고객번호가 여러 개면 ,으로 구분 입력</td>
      </tr>
   
   <tr>
   <th>법인 등록번호</th>
      <td><input class="form-control" type="number" id="com_reg_no" name="com_reg_no" placeholder=""></td>
      <td>*13자리 숫자만 입력</td>
      </tr>
      
      <tr>
   <th class="required">담당자1 이름</th>
      <td><input class="form-control" type="text" id="staff1_name" name="staff1_name" placeholder="홍길동" ></td>
      <td></td>
      </tr>
      
       <tr>
   <th class="required">담당자1 부서</th>
      <td><input class="form-control" type="text" id="staff1_dept" name="staff1_dept" placeholder="" ></td>
      <td></td>
      </tr>
      
       <tr>
   <th class="required">담당자1 연락처</th>
      <td><input class="form-control" type="number" id="staff1_tel" name="staff1_tel" placeholder="01012345678" ></td>
      <td>*숫자만 입력해주세요.</td>
      </tr>
       
       <tr>
   <th>담당자1 이메일</th>
      <td><input class="form-control" type="email" id="staff1_email" name="staff1_email" placeholder="email@company.com"></td>
       <td></td>
      </tr>
      
       <tr>
   <th>담당자2 이름</th>
      <td><input class="form-control" type="text" id="staff2_name" name="staff2_name" placeholder="email@company.com" ></td>
       <td></td>
      </tr>
      <tr>
   <th>담당자2 부서</th>
      <td><input class="form-control" type="text" id="staff2_dept" name="staff2_dept" placeholder="인사팀" ></td>
       <td></td>
      </tr>
      
       <tr>
   <th class="required">회사명 2</th>
      <td><input class="form-control" type="text" id="com_company_name2" name="com_company_name2" placeholder=""></td>
       <td>*(주), 주식회사, 유한회사 등 기업형태 제외, 순수 회사명</td>
      </tr>
      
       <tr>
   <th>담당자2 연락처</th>
      <td><input class="form-control" type="number" id="staff2_tel" name="staff2_tel" placeholder="01012345678"></td>
      <td>*숫자만 입력해주세요.</td>
      </tr>
        
      <tr>
   <th>담당자2 이메일</th>
      <td><input class="form-control" type="email" id="staff2_email" name="staff2_email" placeholder="eamil@company.com"></td>
      <td></td>
      </tr>
      
       <tr>
   <th class="required">대표자명</th>
      <td><input class="form-control" type="text" id="com_ceo" name="com_ceo" placeholder="OOO" ></td>
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
	
<div class="tip_area">
<h6><i class="fas fa-info-circle"></i>&nbsp;도움말</h6>
[1] 특허고객번호 목록을 기준으로 상표공보 정보를 수집합니다.<br>
[2] 상표공보가 수집되어야 기초분석이 가능합니다. 반드시 1개 이상의 특허고객번호를 입력하세요.<br>
[3] 고객과의 기본적인 CRM 제공을 위해 담당자 정보는 2명까지 입력이 가능합니다.
</div>
	<!-- 회원정보입력섹션 끝! -->
	
	
<!-- 	<div style="margin-top:30px;"></div>
           <button type = "submit" class="ui black basic button" >완료</button>
	
	<input type="reset" class="ui button" value="다시작성"> &nbsp; -->


   </form>    
</body>
</html>