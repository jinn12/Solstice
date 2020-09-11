<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>해당 고객이 보유한 상표 목록</title>
<script type="text/javascript">
 $(function () {
	 var com_seq = $("#Name1").text();
    var kipo_no1 = $("#Job1").text(); //input 태그에서 value의 역할을 text()   Name1
     if (kipo_no1.indexOf(',') != -1) {
         var items = kipo_no1.trim().split(',');
         var itemTag = "";
         var item = "";
         for (var i = 0; i < items.length; i++) {
             item = items[i];
             if (i != 0) {
                 itemTag += "<span class='kipo_no'>, " + item + "</span>";
             } else {
                 itemTag += "<span class='kipo_no'>" + item + "</span>";
             }
         }
         $("#Job1").html(itemTag);
     }
     $(".kipo_no").click(function () {
         /* alert(this.innerText.replace(",", "")); */
    	 var kipo_no = this.innerText.replace(",", "");
         location.href="clientOfTmSearchList.do?kipo_no=" + kipo_no + "&com_seq=" + com_seq;
     });
 });

	
 </script>
</head>

<body>
<div class="title_area">
<span>고객정보관리</span><i class="fas fa-caret-right"></i><span>고객관리</span>
</div>
<!-- 탭메뉴 -->
<div class="tab_area">
<ul>
	<li><a onclick="location.href='clientDetail.do?com_seq=${client.com_seq}'">기본정보</a></li>
	<li><a onclick="location.href='clientForRiva.do?com_seq=${client.com_seq}'">경쟁사(${rivaCount})</a></li>
	<li class="active"><a>상표(${listCount})</a></li>
</ul>
</div>
<div class= "table_area">
<table class="table">
  <thead>
    <tr>
    <th>고객 일련 번호</th>
    <th>고객 사업자등록번호</th>
    <th>고객 회사명</th>
    <th>고객 대표자명</th>
    <th>고객 법인 등록번호</th>
    <th>특허고객번호 목록</th>
    <!-- <th>삭제</th> -->
  	</tr>
  </thead>
  <tbody>
   
  <c:url var="ndt" value="clientDetail.do">
		            <c:param name="com_seq" value="${com_seq}" />
		            </c:url>
    <tr>
    <td data-label="Name1" id="Name1" name="Name1">${client.com_seq}</td> 
      <td data-label="Name">${client.com_biz_no}</td> 
      <td data-label="Job"><a href="${ ndt }">${client.com_company_name}</a></td> 
      <td data-label="Age"><a href="${ ndt }">${client.com_ceo }</a></td>
       <td data-label="Job">${client.com_reg_no}</td> 
       <td data-label="Job1" id="Job1" name="Job1">
   ${client.kipo_no_list}
  </td> 
   </tr>
  </tbody>
</table>
</div>
</body>
</html>