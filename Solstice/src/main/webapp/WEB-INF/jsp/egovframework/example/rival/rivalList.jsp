<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경쟁사 관리</title>
<script type="text/javascript">
	function deleteRival(rival_seq){
		$.ajax({
	         url:"deleteRival.do",
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
	
</script>
</head>
<body>
<!-- 제목 -->
<div class="title_area">
<span>고객정보관리</span><i class="fas fa-caret-right"></i><span>경쟁사관리</span>
</div>
<!-- 검색창시작 -->
	<div class="search_area">
			<form action="selectClientSearchList.do"method="get">
			<div class="label_area">
				<label class="label">분류</label>
           		<input type="radio" name="searchtype" value="" id="radio1"><label for="radio1">전체</label>
                <input type="radio" name="searchtype" value="rival_company_name" id="radio2"><label for="radio2">회사명</label>
                <input type="radio" name="searchtype" value="rival_ceo" id="radio3"><label for="radio3">대표 이름</label>
                <input type="radio" name="searchtype" value="rival_kipo_no_list" id="radio4"><label for="radio4">특허고객번호</label>
			</div>
                <input class="form-control" type="text" name="search">
			    <button class="btn btn-search" type="submit"><i class="fas fa-search"></i>검색</button>
			</form>
	</div>  
<!-- 검색창시작 -->
	<!-- <div align="center">
			<div class="ClientSearchBox1" style="height: 130px;">
			<form action="selectRivalSearchList.do"method="get">
			
                <a class="ui large black label">경쟁사 검색</a>&ensp;
					<div class="ui input"><input type="text" name="search" style="width:340px; height:30px;"></div>&ensp;
			 <br><br>
			   <a class="ui large black label">분류</a>&emsp;&emsp;
           <input type="radio" name="searchtype" value="" ><label>전체</label>&emsp;&emsp; 
             <input type="radio" name="searchtype" value="rival_company_name"><label>&ensp;회사명</label>&emsp;&emsp;
               <input type="radio" name="searchtype" value="rival_ceo"><label>&ensp;대표 이름</label>&emsp;&emsp; 
               <input type="radio" name="searchtype" value="rival_kipo_no_list"><label>&ensp;특허고객번호</label>&emsp;&emsp;&emsp;
			
				
					<div class="ui buttons"><button class="ui small black button" type="submit">검색</button></div> 
			</form>
				<div class="gotowrite"><button class="ui middle black button"  onclick="location.href='moveInsertRival.do'">
		<i class="edit outline icon"></i>경쟁사등록</button></div>
			</div>
		</div>   -->
<div class="table_area">
<table class="table">
  <thead>
    <tr><th>경쟁사 일련번호</th>
    <th>경쟁사 회사명</th>
    <th>경쟁사 사업자등록번호</th>
    <th>경쟁사 법인등록번호</th>
    <th>경쟁사 대표 이름</th>
      <th>삭제</th>
      
  </tr></thead>
  <tbody>
   <c:forEach items="${requestScope.list}" var="rival">
   <c:url var="ndt" value="rivalDetail.do">
		            <c:param name="rival_seq" value="${rival.rival_seq}" />
		            </c:url>
    <tr>
   
      <td data-label="Name">${rival.rival_seq }</td>
      <td data-label="Age"><a href="${ ndt }">${rival.rival_company_name }</a></td>
      <td data-label="Job">${rival.rival_biz_no }</td>
      <td data-label="Job">${rival.rival_reg_no }</td>
       <td data-label="Job">${rival.rival_ceo}</td>
    <td width="15%" class="qnalistname"><i class="trash alternate outline icon" onclick="deleteRival('<c:out value="${rival.rival_seq}"/>');"></i></td>
        
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
		<c:if test="${requestScope.currentPage gt 1 }"><a href="rivalList.do" class="page-prev page-link"><i class="fas fa-chevron-left"></i></a></c:if>
		
		<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   		<c:if test="${p eq requestScope.currentPage }">      
      	<a class="page-item active"><span class="page-link">${ p }</span></a>
   		</c:if>
   		<c:if test="${p ne requestScope.currentPage }"><a href="rivalList.do?page=${ p }" class="page-link">${ p }</a></c:if>
		</c:forEach>

		<!-- 맨 마지막페이지 -->
		<c:if test="${currentPage ge maxPage }"><a class="page-next page-link"><i class="fas fa-chevron-right"></i></a></c:if>
		<c:if test="${currentPage lt maxPage }"><a class="page-next page-link" href="rivalList.do?page=${ requestScope.maxPage }"><i class="fas fa-chevron-right"></i></a></c:if>  
	</div>
</div>	
</div>

		
<!-- 맨 처음 페이지 -->
<%-- <div class ="paging" >
<c:if test="${requestScope.currentPage le 1 }"><p class="pre_page"><<</p></c:if>
<c:if test="${requestScope.currentPage gt 1 }"><a href="rivalList.do"><p class="pre_page"><<</p></a></c:if>

<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   <c:if test="${p eq requestScope.currentPage }">      
      <font><b class="page">${ p }</b></font>
   </c:if>
   <c:if test="${p ne requestScope.currentPage }"><a href="rivalList.do?page=${ p }"><p class="pre_page" style="margin:0px 2px 0px 2px">${ p }</p></a></c:if>
</c:forEach>

<!-- 맨 마지막페이지 -->
<c:if test="${currentPage ge maxPage }"><p class="next_page">>></p></c:if>
<c:if test="${currentPage lt maxPage }"><a class="next_page" href="rivalList.do?page=${ requestScope.maxPage }">>></a></c:if>  

</div> --%>
<!-- //페이징 -->
</body>
</html>