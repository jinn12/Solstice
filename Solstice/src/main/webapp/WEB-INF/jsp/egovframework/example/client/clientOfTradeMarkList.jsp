<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>해당 고객이 보유한 상표 검색한 결과</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
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
<!-- 제목 -->
<div class="title_area">
<span>고객정보관리</span><i class="fas fa-caret-right"></i><span>고객관리</span><i class="fas fa-caret-right"></i><span>고객의 상표목록</span>
</div>

<!-- 탭메뉴 -->

<div class="table_area">		
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
      
  </tr></thead>
  <tbody>
  
		             <c:forEach items="${requestScope.list}" var="client" begin="0" end="0">
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
      

</c:forEach>
  </tbody>
</table>
			
<br><br>		
			

<table class="table">

  <thead>
    <tr><th>상표번호</th>
    <th>이미지</th>
    <th>출원번호</th>
    <th>출원인</th>
    <th>지정상품 분류코드 목록</th>
     <th>법적상태</th>
    <th>상표명</th> 
    <th>특허고객번호</th>
    
    
      <!-- <th>삭제</th> -->
      
  </tr></thead>
  <tbody>
   <c:forEach items="${requestScope.list}" var="tm">
   <c:url var="ndt" value="tmDetailForClient.do">
		            <c:param name="tm_seq" value="${tm.tm_seq}" />
		            <c:param name="com_seq" value="${com_seq}" />
		            </c:url>
    <tr>
   
      <td data-label="Name">${tm.tm_seq}</td>
      <td data-label="Job"><a href="${ ndt }"><img src='${tm.image_url}'></a></td> 
      <td data-label="Age"><a href="${ ndt }">${tm.appl_no }</a></td>
      <td data-label="Job">${tm.applicant }</td>
    <td data-label="Job">${tm.prod_cate_code_list }</td>
     
        <td data-label="Job">${tm.legal_status }</td>
         <td data-label="Job">${tm.tm_ko }</td>
       <td data-label="Job">${tm.kipo_no}</td> 
        
       <%--  <td width="15%" class="qnalistname"><i class="trash alternate outline icon" onclick="deleteClient('<c:out value="${tm.tm_seq}"/>');"></i></td> --%>
       
      
        
   </tr>
 </c:forEach>
  </tbody>
</table>
		
<div class="table_footer">
<div class="total_count"><span>전체 : <strong>${listCount}</strong>건</span></div>
	<!-- //페이징 -->
	<div class ="pagination" >
		<!-- 맨 처음 페이지 -->
		<c:if test="${requestScope.currentPage le 1 }"><a class="page-prev page-link"><i class="fas fa-chevron-left"></i></a></c:if>
		<c:if test="${requestScope.currentPage gt 1 }"><a href="clientOfTradeMark.do?" class="page-prev page-link"><i class="fas fa-chevron-left"></i></a></c:if>
		
		<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   		<c:if test="${p eq requestScope.currentPage }">      
      	<a class="page-item active"><span class="page-link">${ p }</span></a>
   		</c:if>
   		<c:if test="${p ne requestScope.currentPage }"><a href="clientOfTradeMark.do?page=${ p }">${ p }</a></c:if>
		</c:forEach>

		<!-- 맨 마지막페이지 -->
		<c:if test="${currentPage ge maxPage }"><a class="page-next page-link"><i class="fas fa-chevron-right"></i></a></c:if>
		<c:if test="${currentPage lt maxPage }"><a class="page-next page-link" href="clientOfTradeMark.do?page=${requestScope.maxPage }"><i class="fas fa-chevron-right"></i></a></c:if>  
	</div>
</div>		
</div>



<!-- 맨 처음 페이지 -->
<%-- <div class ="paging" >
<c:if test="${requestScope.currentPage le 1 }"><p class="pre_page"><<</p></c:if>
<c:if test="${requestScope.currentPage gt 1 }"><a href="clientOfTradeMark.do"><p class="pre_page"><<</p></a></c:if>

<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   <c:if test="${p eq requestScope.currentPage }">      
      <font><b class="page">${ p }</b></font>
   </c:if>
   <c:if test="${p ne requestScope.currentPage }"><a href="clientOfTradeMark.do?page=${ p }"><p class="pre_page" style="margin:0px 2px 0px 2px">${ p }</p></a></c:if>
</c:forEach>

<!-- 맨 마지막페이지 -->
<c:if test="${currentPage ge maxPage }"><p class="next_page">>></p></c:if>
<c:if test="${currentPage lt maxPage }"><a class="next_page" href="clientOfTradeMark.do?page=${requestScope.maxPage }">>></a></c:if>  

</div> --%>
<!-- //페이징 -->
</body>
</html>