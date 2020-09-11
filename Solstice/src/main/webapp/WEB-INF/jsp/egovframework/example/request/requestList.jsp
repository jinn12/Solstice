<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전산업무요청</title>
</head>
<body>
<!-- 제목 -->
<div class="title_area">
<span>기본정보</span><i class="fas fa-caret-right"></i><span>전산업무요청</span>
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
<!-- <div id="search">
검색조건 : [제목] [검색어] [검색]
</div> 
<div id="count" style="margin-left:1900px;">
총 OOO건
</div>-->
   
<div class="table_area">   
<table class="table">
  <thead>
    <tr>
      <th>번호</th>
      <th>제목</th>
      <th>등록일자</th>
      <th>작성자</th>
      <th>상태</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>12</td>
      <td class="textLeft">OOO에서 버그 발생[1]</td>
      <td>2020.06.03</td>
      <td>김유신</td>
      <td>진행중</td>
     
    </tr>
    <tr>
      <td>11</td>
      <td class="textLeft">레이아웃이 깨짐[2]</td>
      <td>2020.06.03</td>
      <td>홍길동</td>
      <td>진행중</td>
  
    </tr>
    <tr>
      <td>10</td>
      <td class="textLeft">검색이 안됨[1]</td>
      <td>2020.06.03</td>
      <td>이순신</td>
      <td>완료</td>
    </tr>
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
<div class="tip_area">
<h6><i class="fas fa-info-circle"></i>&nbsp;도움말</h6>
[1] 전산업무요청은 관리자나 시스템 개발사에게 요쳥하고, 처리 결과를 확인할 수 있습니다.
</div>
</body>
</html>