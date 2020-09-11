<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객의 경쟁사</title>
<script type="text/javascript">
	function deleteRivalListInClient(rival_seq){
		$.ajax({
	         url:"deleteRivalListInClient.do",
	         type:"post",
	         data:{rival_seq:rival_seq},
	         success: function(result){
	             if(result == "ok"){
	               alert("경쟁사가 삭제되었습니다.");
	               window.location.reload();
	             }else {
	               alert("경쟁사 삭제 실패!");
	             }
	          },
	          error: function(request, status, errorData){
					console.log("error code : " + request.status + "\nMessage : " + request.responseText + "\nError : " + errorData);
				}
	       }); 
	}
	


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
<div class="tab_area">
<ul>
	<li><a onclick="location.href='clientDetail.do?com_seq=${client.com_seq}'">기본정보</a></li>
	<li class="active"><a>경쟁사(${listCount})</a></li>
	<li><a onclick="location.href='clientOfTradeMark.do?com_seq=${client.com_seq}&com_company_name=${client.com_company_name}'">상표(${tmCount})</a></li>
</ul>
</div>
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
      <td data-label="Job1" id="Job1" name="Job1">${client.kipo_no_list}</td> 
   </tr>
  </tbody>
</table> <br><br>
<table class="table">
  <thead>
    <tr>
    <th>경쟁사번호</th>
    <th>사업자번호</th>
    <th>기업명</th>
    <th>대표이사</th>
    <th>특허고객번호</th>
    <th>삭제</th>
  </tr>
  </thead>
  <tbody>
   <c:forEach items="${requestScope.list}" var="riva">
   <c:url var="ndt" value="clientForRivaDetail.do">
		            <c:param name="rival_seq" value="${riva.rival_seq}" />
		            </c:url>
    <tr>
      <td data-label="Name"><a href="${ ndt }">${riva.rival_seq }</a></td>
      <td data-label="Age"><a href="${ ndt }">${riva.rival_biz_no }</a></td>
      <td data-label="Job">${riva.rival_company_name }</td>
      <td data-label="Job">${riva.rival_ceo }</td>
      <td data-label="Job">${riva.rival_kipo_no_list }</td>
   <%-- <td width="15%" class="rivallistdelete"><i class="trash alternate outline icon" onclick="deleteRivalListInClient.do('<c:out value="${riva.rival_seq }"/>');"></i></td> --%>
   <td width="15%" class="rivallistdelete"><i class="trash alternate outline icon" onclick="deleteRivalListInClient('<c:out value="${riva.rival_seq }"/>');"></i></td>
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
		<c:if test="${requestScope.currentPage gt 1 }"><a href="clientForPageRiva.do" class="page-prev page-link"><i class="fas fa-chevron-left"></i></a></c:if>
		
		<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   		<c:if test="${p eq requestScope.currentPage }">      
      	<a class="page-item active"><span class="page-link">${ p }</span></a>
   		</c:if>
   		<c:if test="${p ne requestScope.currentPage }"><a href="clientForPageRiva.do?page=${ p }&com_seq=${com_seq}"  class="page-link">${ p }</a></c:if>
		</c:forEach>

		<!-- 맨 마지막페이지 -->
		<c:if test="${currentPage ge maxPage }"><a class="page-next page-link"><i class="fas fa-chevron-right"></i></a></c:if>
		<c:if test="${currentPage lt maxPage }"><a class="page-next page-link" href="clientForPageRiva.do?page=${ requestScope.maxPage }&com_seq=${com_seq}"><i class="fas fa-chevron-right"></i></a></c:if>  
	</div>
</div>	
</div>

<div class="btn_group">
<button class="btn"  onclick="location.href='moveInsertRiva.do?com_seq=${com_seq}&com_company_name=${com_company_name}'">
		<i class="edit outline icon"></i>경쟁사 등록</button>
</div>


<!-- 맨 처음 페이지 -->
<%-- <div class ="paging" >
<c:if test="${requestScope.currentPage le 1 }"><p class="pre_page"><<</p></c:if>
<c:if test="${requestScope.currentPage gt 1 }"><a href="clientForPageRiva.do"><p class="pre_page"><<</p></a></c:if>

<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   <c:if test="${p eq requestScope.currentPage }">      
      <font><b class="page">${ p }</b></font>
   </c:if>
   <c:if test="${p ne requestScope.currentPage }"><a href="clientForPageRiva.do?page=${ p }&com_seq=${com_seq}"><p class="pre_page" style="margin:0px 2px 0px 2px">${ p }</p></a></c:if>
</c:forEach>

<!-- 맨 마지막페이지 -->
<c:if test="${currentPage ge maxPage }"><p class="next_page">>></p></c:if>
<c:if test="${currentPage lt maxPage }"><a class="next_page" href="clientForPageRiva.do?page=${ requestScope.maxPage }&com_seq=${com_seq}"">>></a></c:if>  

</div> --%>

<!-- //페이징 -->

</body>
</html>