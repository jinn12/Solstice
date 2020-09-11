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
<!-- 제목 -->
<div class="title_area">
<span>고객정보관리</span><i class="fas fa-caret-right"></i><span>경쟁사관리</span><i class="fas fa-caret-right"></i><span>상표목록</span>
</div>

<!-- 탭메뉴 -->

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
      <c:forEach items="${requestScope.list}" var="rival" begin="0" end="0">
   <c:url var="ndt" value="rivalDetail.do">
		             <c:param name="rival_seq" value="${rival_seq}" />
		           
		            </c:url>
		            
    <tr>
   
       <td data-label="Name1" id="Name1" name="Name1">${rival.rival_seq}</td> 
       <td data-label="Job"><a href="${ ndt }">${rival.rival_company_name}</a></td> 
      <td data-label="Job"><a href="${ ndt }">${rival.rival_biz_no}</a></td> 
      <td data-label="Age"><a href="${ ndt }">${rival.rival_reg_no }</a></td>
       <td data-label="Age"><a href="${ ndt }">${rival.rival_ceo }</a></td>
        <td data-label="Job1" id="Job1" name="Job1">
   ${rival.rival_kipo_no_list}
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
   <c:url var="ndt" value="tmDetailForRival.do">
		            <c:param name="tm_seq" value="${tm.tm_seq}" />
		            <c:param name="rival_seq" value="${tm.rival_seq}" />
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
		<c:if test="${requestScope.currentPage gt 1 }"><a href="rivalForTmList.do?" class="page-prev page-link"><i class="fas fa-chevron-left"></i></a></c:if>
		
		<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   		<c:if test="${p eq requestScope.currentPage }">      
      	<a class="page-item active"><span class="page-link">${ p }</span></a>
   		</c:if>
   		<c:if test="${p ne requestScope.currentPage }"><a href="rivalForTmList.do?page=${ p }&search=${search}&searchtype=${searchtype}">${ p }</a></c:if>
		</c:forEach>

		<!-- 맨 마지막페이지 -->
		<c:if test="${currentPage ge maxPage }"><a class="page-next page-link"><i class="fas fa-chevron-right"></i></a></c:if>
		<c:if test="${currentPage lt maxPage }"><a class="page-next page-link" href="rivalForTmList.do?page=${requestScope.maxPage }&search=${search}&searchtype=${searchtype}"><i class="fas fa-chevron-right"></i></a></c:if>  
	</div>
</div>

</div>		
<div class="tip_area">
<h6><i class="fas fa-info-circle"></i>&nbsp;도움말</h6>
[1] 고객이 보유한 상표정보 입니다.
</div>			


		
		




<%-- <!-- 맨 처음 페이지 -->
<div class ="paging" >
<c:if test="${requestScope.currentPage le 1 }"><p class="pre_page"><<</p></c:if>
<c:if test="${requestScope.currentPage gt 1 }"><a href="rivalForTmList.do?"><p class="pre_page"><<</p></a></c:if>

<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   <c:if test="${p eq requestScope.currentPage }">      
      <font><b class="page">${ p }</b></font>
   </c:if>
   <c:if test="${p ne requestScope.currentPage }"><a href="rivalForTmList.do?page=${ p }&search=${search}&searchtype=${searchtype}"><p class="pre_page" style="margin:0px 2px 0px 2px">${ p }</p></a></c:if>
</c:forEach>

<!-- 맨 마지막페이지 -->
<c:if test="${currentPage ge maxPage }"><p class="next_page">>></p></c:if>
<c:if test="${currentPage lt maxPage }"><a class="next_page" href="rivalForTmList.do?page=${requestScope.maxPage }&search=${search}&searchtype=${searchtype}">>></a></c:if>  

</div>
<!-- //페이징 --> --%>

</body>
<!-- <div class = "help">
[도움말]
<div>
[1] 고객이 보유한 상표정보 입니다.
</div>
</div> -->
</html>