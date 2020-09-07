<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
</head>
<body>
<div id="content">
<!-- 제목 -->
<div class="title_area">
<span>기본정보</span><i class="fas fa-caret-right"></i><span>공지사항</span>
</div>
<!-- 검색창시작 -->
	<div class="search_area">
			<form action="selectNoticeSearchList.do" method="get">
			<div class="label_area">
				<label class="label">분류</label>
           		<input type="radio" name="searchtype" value="" id="radio1"><label for="radio1">전체</label>
                <input type="radio" name="searchtype" value="notice_title" id="radio2"><label for="radio2">제목별</label>
                <input type="radio" name="searchtype" value="notice_writer" id="radio3"><label for="radio3">작성자</label>
                <input type="radio" name="searchtype" value="notice_write_time" id="radio4"><label for="radio4">날짜</label>
			</div>
                <input class="form-control" type="text" name="search">
			    <button class="btn btn-search" type="submit"><i class="fas fa-search"></i>검색</button>
			</form>
	</div>  
<div class="table_area">
<table class="table">
<colgroup>
		<col width="10%"/>
		<col style="text-align: left;"/>
		<col width="20%"/>
		<col width="15%"/>
		<col width="8%"/>
</colgroup>
  <thead>
    <tr>
    <th>공지사항 일련번호</th>
    <th>공지사항 제목</th>
    <th>작성자</th>
    <th>작성시간</th>
    <th>조회수</th>
      
  </tr></thead>
  <tbody>
   <c:forEach items="${requestScope.list}" var="notice">
   <c:url var="ndt" value="noticeDetail.do">
		            <c:param name="notice_seq" value="${notice.notice_seq}" />
		            </c:url>
    <tr>
   
      <td data-label="Name">${notice.notice_seq}</td>
      <td data-label="Age" class="textLeft"><a href="${ ndt }">${notice.notice_title }</a></td>
      <td data-label="Job">${notice.notice_writer }</td>
      <td data-label="Job">
      
      					<!-- 수정시간이 NULL 이라면 등록 시간으로 출력  -->
					<c:if test="${notice.notice_modify_time eq null}">
	 	 				 ${notice.notice_write_time }
					</c:if>
					
					<!-- 수정시간이 생긴다면 수정시간만 툴력 -->
	 	 				 ${notice.notice_modify_time}
       
      </td>
      <td data-label="Job">${notice.notice_read_count }</td>
       
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
		<c:if test="${requestScope.currentPage gt 1 }"><a href="noticeList.do" class="page-prev page-link"><i class="fas fa-chevron-left"></i></a></c:if>
		
		<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   		<c:if test="${p eq requestScope.currentPage }">      
      	<a class="page-item active"><span class="page-link">${ p }</span></a>
   		</c:if>
   		<c:if test="${p ne requestScope.currentPage }"><a href="noticeList.do?page=${ p }"  class="page-link">${ p }</a></c:if>
		</c:forEach>

		<!-- 맨 마지막페이지 -->
		<c:if test="${currentPage ge maxPage }"><a class="page-next page-link"><i class="fas fa-chevron-right"></i></a></c:if>
		<c:if test="${currentPage lt maxPage }"><a class="page-next page-link" href="noticeList.do?page=${ requestScope.maxPage }"><i class="fas fa-chevron-right"></i></a></c:if>  
	</div>
</div>	

</div>		

<div class="btn_group">
<button class="btn"  onclick="location.href='moveInsertNotice.do'">
<i class="edit outline icon"></i>공지사항 등록
</button></div>


<div class="tip_area">
<h6><i class="fas fa-info-circle"></i>&nbsp;도움말</h6>
[1] 공지사항은 관리자만 글을 쓰고, 분석원이 참고하는 기능입니다.
</div>
</div>


</body>
</html>