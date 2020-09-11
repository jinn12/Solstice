<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 자세히 보기</title>
</head>
<body>
<div class="title_area">
<span>공지사항</span><i class="fas fa-caret-right"></i><span>공지사항 상세조회</span>
</div>
<div class="table_area">
<h5>${notice.notice_title}</h5>
	<table class="table notice_table">
		<tr>
			<td>
				<span>작성자</span>${notice.notice_writer} &nbsp;&nbsp;&nbsp;&nbsp;
				<span>작성일</span>
				<!-- 수정시간이 NULL 이라면 등록 시간으로 출력  -->
					<c:if test="${notice.notice_modify_time eq null}">
	 	 				 ${notice.notice_write_time }
					</c:if>
					
					<!-- 수정시간이 생긴다면 수정시간만 툴력 -->
	 	 				 ${notice.notice_modify_time}
			</td>
		</tr>
		<tr>
			<td class="noticeCon">
			${notice.notice_contents}
			</td>
		</tr>
	</table>
</div>
<div class="btn_group">
<button class="btn" type="submit" onclick="location.href='noticeList.do'"><i class="fal fa-list-alt"></i> 목록</button>
 <c:if test= "${loginUser.user_auth eq 'ADMIN'}">
<button class="btn btn-submit" type="submit" onclick="location.href='moveUpateNotice.do?notice_seq=${notice.notice_seq}'">
<i class="edit outline icon"></i>수정
</button>
<button class="btn btn-del" type="submit" onclick="location.href='deleteDetailNotice.do?notice_seq=${notice.notice_seq}'">
<i class="far fa-trash-alt"></i> 삭제
</button>
</c:if> 
</div>
<%-- 
        <!-- notice header -->
        <div class="noitcedetail">
        <div class="notice-header">
            <div class="title-wrap">
                
                <h2 class="notice-title">&nbsp;&nbsp;${notice.notice_title}</h2>
            </div>
            <div class="info-wrap">
             <div class="writer">작성자: &nbsp;&nbsp;${notice.notice_writer}</div>
             <div class="writer">작성일: &nbsp;&nbsp;
             	<!-- 수정시간이 NULL 이라면 등록 시간으로 출력  -->
					<c:if test="${notice.notice_modify_time eq null}">
	 	 				 ${notice.notice_write_time }
					</c:if>
					
					<!-- 수정시간이 생긴다면 수정시간만 툴력 -->
	 	 				 ${notice.notice_modify_time}
       
             </div>
            </div>
        </div>
 
        <div class="article">
        ${notice.notice_contents}
         </div>
              <div class="article_bottom"
              
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <button class="ui inverted button"><a href="noticeList.do">목록</a></button>
               <c:if test= "${loginUser.user_auth eq 'ADMIN'}"> 
              
          <button class="ui inverted button"><a href="moveUpateNotice.do?notice_seq=${notice.notice_seq }">수정</a></button>
         <button class="ui inverted button"> <a href="deleteDetailNotice.do?notice_seq=${notice.notice_seq }">삭제</a></button>
      </c:if> 
         
        </div>
</div>
        <!-- //notice view -->
 --%>
</body>
</html>