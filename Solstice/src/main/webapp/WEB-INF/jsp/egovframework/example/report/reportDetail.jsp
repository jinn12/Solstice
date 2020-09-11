<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로젝트 상세 조회</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
 <style>

  
 a:link { color: black; text-decoration: none;}


.ClientSearchBox1{
border-bottom:3px solid black;
margin-right: 200px;
width: 50%;
/* box-shadow: 0px 0px 20px 10px rgba(0.2,0,0,0.4); */
}
.clientTable{
margin-left: 500px;
}
.gotowrite{
width: 152px;
margin-left: 820px;
margin-top: 9px;
}
.paging{text-align: center; margin-top: 30px; margin-right:300px;}
.page{border: 1px solid black; background: black;
   	   color: white; padding: 3px 10px 3px 10px; border-radius: 6px;font-weight: bold;}
.pre_page, .next_page{border: 1px solid rgb(244, 244, 244); background: rgb(244, 244, 244);
   	   color: #3e3e3e; padding: 3px 10px 3px 10px; border-radius: 6px;font-weight: bold;    display: inline-block;}
</style>

</head>
<body>
<p style="font-size: 20pt; padding-top:50px; color:#373737; text-align:center;">프로젝트 상세보기</p>
<body>

<table class="ui celled table">

  <thead>
    <tr>
    <th>프로젝트 번호</th>
    <th>고객번호</th>
    <th>사업자 등록번호</th>
    <th>고객명</th>
    <th>대표자</th>
   <!--   <th>가입기간</th> -->
    <!-- <th>삭제</th> -->
      
  </tr></thead>
  <tbody>
  
    <tr>
   
      <td data-label="Name">자동 생성</td>
      <td data-label="Job">${client.com_seq}</td> 
      <td data-label="Age">${client.com_biz_no}</td>
      <td data-label="Job">${client.com_company_name}</td>
    <td data-label="Job">${client.com_ceo}</td>
    <!--  <td data-label="Job">2020.01.30~2021.01.30</td> -->

 
   </tr>

  </tbody>
</table>
<table>

<tr><th>조사 기간</th><td>[2020.00.00] [DP] ~ [2021.00.00] [DP]</td></tr>
<tr><th>경쟁사</th><td>329-12-12345 설화수</td></tr>
<tr><th>관심분야 상품 분류</th><td>12</td></tr>
<tr><th>특허고객 번호 목록</th><td>태평양 화장품 123123453</td></tr>
<tr><th>전원 출원/등록</th><td>자동 생성</td></tr>
<tr><th>누적 출원/등록</th><td>자동생성</td></tr>
<tr><th>심판현황</th><td>자동생성</td></tr>

</table>


    <div>
		<input type="submit" class="ui black button" value="목록" id="btnsub"  onclick="location.href='reportList.do'"> 
     </div>

</body>
</html>