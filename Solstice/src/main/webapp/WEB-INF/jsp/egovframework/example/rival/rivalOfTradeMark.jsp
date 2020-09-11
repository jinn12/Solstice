<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>해당 경쟁사가 보유한 상표 목록</title>
 <script type="text/javascript">

 $(function () {
	 var rival_seq = $("#Name1").text();
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
         location.href="rivalForTmList.do?kipo_no=" + kipo_no + "&rival_seq=" + rival_seq;
     });
 });

	
 </script>
</head>
<body>
<div class="title_area">
<span>고객정보관리</span><i class="fas fa-caret-right"></i><span>경쟁사 관리</span>
</div>
<!-- 탭메뉴 -->
<div class="tab_area">
<ul>
	<li><a  onclick="location.href='rivalDetail.do?rival_seq=${rival.rival_seq}'">기본정보</a></li>
	<%-- <li><a onclick="location.href='clientForRiva.do?com_seq=${client.com_seq}'">경쟁사(${rivaCount})</a></li> --%>
	<li class="active"><a>상표(${listCount})</a></li>
</ul>
</div>
<div class="table_area">
<table class="table">

  <thead>
    <tr><th>경쟁사 번호</th>
    <th>회사명</th>
    <th>사업자 등록번호</th>
    <th>법인 등록번호</th>
    <th>대표자명</th>
    <th>특허고객번호 목록</th>

    
    
      <!-- <th>삭제</th> -->
      
  </tr></thead>
  <tbody>
   
  <c:url var="ndt" value="rivalDetail.do">
		            <c:param name="rival_seq" value="${rival_seq}" />
		        
		            </c:url>
		               
 <%--  <c:url var="rknl" value="rivalForTmList.do">
		             <c:param name="rival_kipo_no_list" value="${rival_kipo_no_list}" />
		        
		            </c:url> --%>
		            
    <tr>
   
      <td data-label="Name1" id="Name1" name="Name1">${rival.rival_seq}</td> 
       <td data-label="Job"><a href="${ ndt }">${rival.rival_company_name}</a></td> 
      <td data-label="Job"><a href="${ ndt }">${rival.rival_biz_no}</a></td> 
      <td data-label="Age"><a href="${ ndt }">${rival.rival_reg_no }</a></td>
       <td data-label="Age"><a href="${ ndt }">${rival.rival_ceo }</a></td>
     <%--  <td data-label="Job" name="kipo_no">
  
      	<c:forEach items="${kipo_no}" var="list" varStatus="status" >
     <a href="${ rknl }">${list}</a>
      </c:forEach>
       
      </td> 
 --%>
      <td data-label="Job1" id="Job1" name="Job1">
   ${rival.rival_kipo_no_list}
  </td> 
   </tr>

  </tbody>
</table>
</div>
</body>
</html>