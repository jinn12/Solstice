<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객관리</title>
<script type="text/javascript">
	function deleteClient(com_seq){
		$.ajax({
	         url:"deleteClient.do",
	         type:"post",
	         data:{com_seq:com_seq},
	         success: function(result){
	             if(result == "ok"){
	               alert("고객이 삭제되었습니다.");
	               window.location.reload();
	             }else {
	               alert("고객 삭제 실패!");
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
<span>고객정보관리</span><i class="fas fa-caret-right"></i><span>고객관리</span>
</div>
<!-- 검색창시작 -->
	<div class="search_area">
			<form action="selectClientSearchList.do"method="get">
			<div class="label_area">
				<label class="label">분류</label>
           		<input type="radio" name="searchtype" value="" id="radio1"><label for="radio1">전체</label>
                <input type="radio" name="searchtype" value="com_biz_no" id="radio2"><label for="radio2">사업자 번호</label>
                <input type="radio" name="searchtype" value="com_company_name" id="radio3"><label for="radio3">회사명</label>
                <input type="radio" name="searchtype" value="kipo_no_list" id="radio4"><label for="radio4">고객번호</label>
			</div>
                <input class="form-control" type="text" name="search">
			    <button class="btn btn-search" type="submit"><i class="fas fa-search"></i>검색</button>
			</form>
	</div>  
	<!-- <div align="center">
			<div class="ClientSearchBox1" style="height: 130px;">
			<form action="selectClientSearchList.do"method="get">
			
                <a class="ui large black label">고객 검색</a>&ensp;
					<div class="ui input"><input type="text" name="search" style="width:340px; height:30px;"></div>&ensp;
			 <br><br>
			   <a class="ui large black label">분류</a>&emsp;&emsp;
           <input type="radio" name="searchtype" value="" ><label>전체</label>&emsp;&emsp; 
             <input type="radio" name="searchtype" value="com_biz_no"><label>&ensp;사업자 번호</label>&emsp;&emsp;
               <input type="radio" name="searchtype" value="com_company_name"><label>&ensp;회사명</label>&emsp;&emsp; 
               <input type="radio" name="searchtype" value="kipo_no_list"><label>&ensp;고객번호</label>&emsp;&emsp;&emsp;
			
				
					<div class="ui buttons"><button class="ui small black button" type="submit">검색</button></div> 
			</form>
				<div class="gotowrite"><button class="ui middle black button"  onclick="location.href='insertMyClient.do'">
		<i class="edit outline icon"></i>고객등록</button></div>
			</div>
		</div>   -->
<%-- <div class = "count">총:${listCount}</div> --%>
<div class="table_area">
<table class="table">
<colgroup>
		<col width="8%"/>
		<col width="15%"/>
		<col width="*"/>
		<col width="8%"/>
		<col width="15%"/>
		<col width="10%"/>
		<col width="8%"/>
		<col width="10%"/>
		<col width="8%"/>
</colgroup>
  <thead>
    <tr><th>고객번호</th>
    <th>사업자번호</th>
    <th>기업명</th>
    <th>대표이사</th>
    <th>주소</th>
    <th>등록일</th>
     <th>담당자</th>
      <th>전화번호</th>
      <th>삭제</th>
      
  </tr></thead>
  <tbody>
   <c:forEach items="${requestScope.list}" var="client">
   <c:url var="ndt" value="clientDetail.do">
		            <c:param name="com_seq" value="${client.com_seq}" />
		            </c:url>
    <tr>
   
      <td data-label="Name">${client.com_seq }</td>
      <td data-label="Age"><a href="${ ndt }">${client.com_biz_no }</a></td>
      <td data-label="Job">${client.com_company_name }</td>
      <td data-label="Job">${client.com_ceo }</td>
      <td data-label="Job"></td>
      <td data-label="Job"></td>
       <td data-label="Job">${client.staff1_name }</td>
        <td data-label="Job">${client.staff1_tel }</td>
         <td class="qnalistname"><i class="trash alternate outline icon" onclick="deleteClient('<c:out value="${client.com_seq}"/>');"></i></td>
        
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
		<c:if test="${requestScope.currentPage gt 1 }"><a href="clientList.do" class="page-prev page-link"><i class="fas fa-chevron-left"></i></a></c:if>
		
		<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   		<c:if test="${p eq requestScope.currentPage }">      
      	<a class="page-item active"><span class="page-link">${ p }</span></a>
   		</c:if>
   		<c:if test="${p ne requestScope.currentPage }"><a href="clientList.do?page=${ p }" class="page-link">${ p }</a></c:if>
		</c:forEach>

		<!-- 맨 마지막페이지 -->
		<c:if test="${currentPage ge maxPage }"><a class="page-next page-link"><i class="fas fa-chevron-right"></i></a></c:if>
		<c:if test="${currentPage lt maxPage }"><a class="page-next page-link" href="clientList.do?page=${ requestScope.maxPage }"><i class="fas fa-chevron-right"></i></a></c:if>  
	</div>
</div>			
</div>




<%-- <!-- 맨 처음 페이지 -->
<div class ="paging" >
<c:if test="${requestScope.currentPage le 1 }"><p class="pre_page"><<</p></c:if>
<c:if test="${requestScope.currentPage gt 1 }"><a href="clientList.do"><p class="pre_page"><<</p></a></c:if>

<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   <c:if test="${p eq requestScope.currentPage }">      
      <font><b class="page">${ p }</b></font>
   </c:if>
   <c:if test="${p ne requestScope.currentPage }"><a href="clientList.do?page=${ p }"><p class="pre_page" style="margin:0px 2px 0px 2px">${ p }</p></a></c:if>
</c:forEach>

<!-- 맨 마지막페이지 -->
<c:if test="${currentPage ge maxPage }"><p class="next_page">>></p></c:if>
<c:if test="${currentPage lt maxPage }"><a class="next_page" href="clientList.do?page=${ requestScope.maxPage }">>></a></c:if>  

</div> --%>
<!-- //페이징 -->

<div class="btn_group">
<button class="btn"   onclick="location.href='insertMyClient.do'">
<i class="edit outline icon"></i>고객등록
</button></div>


<div class="tip_area">
<h6><i class="fas fa-info-circle"></i>&nbsp;도움말</h6>
[1] 분석보고서를 신청한 고객 정보를 등록하고, 관련 경쟁사 정보 등 부가정보를 등록합니다.<br>
[2] 기본정보가 갱신되면 Daily, Weekly로 관련 정보를 수집/갱신 합니다.<br>
[3] 분석요청, 상표, 경쟁사, 키워드 등 분석 관련 정보가 0인 경우, 관련정보를 등록해야 고도화된 분석이 가능합니다. 
</div>
</body>
</html>