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
<style>
/* Notice View */
 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: black; text-decoration: none;}

.article_bottom{
font-size:17px;
border-top:2px solid black ;
border-bottom:2px solid black ;
height:63px;
}
.article{
font-weight: bold;
    font-family: auto;
    margin-left: 30px;
    height: 500px;
    font-size: 20px;
}
.writer{
margin-left: 1700px;
}

.notice-header {margin-bottom:10px; background:#fff; border-top:2px solid black; border-bottom:2px solid black ;width:100%;}
.notice-header:after {display:block; clear:both; content:''}
.notice-header .title-wrap {padding:20px 20px 10px 20px}
.notice-header .title-wrap .category-info a {color:black}
.notice-header .title-wrap .notice-title {margin-top:5px; font-size:2em; color:black;}
.notice-header .info-wrap {margin-top:10px; padding:10px 20px;border-top: 2px solid black; background:white; }
.notice-header .info-wrap:after {display:block; clear:both; content:''}
.notice-header .info-wrap .notice-info {font-family: auto; float:left; list-style:none}
.notice-header .info-wrap .notice-info:after {display:block; clear:both; content:''}
.notice-header .info-wrap .notice-info li {margin-right:15px; float:left; font-size:15px; color:black;}
.notice-header .info-wrap .notice-info li i {margin-right:4px; color:#fff}
</style>
<body>


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
              <div class="article_bottom">
              
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <button class="ui inverted button"><a href="noticeList.do">목록</a></button>
              <%--  <c:if test= "${loginUser.user_auth eq 'ADMIN'}">  --%>
              
          <button class="ui inverted button"><a href="moveUpateNotice.do?notice_seq=${notice.notice_seq }">수정</a></button>
         <button class="ui inverted button"> <a href="deleteDetailNotice.do?notice_seq=${notice.notice_seq }">삭제</a></button>
     <%--  </c:if>  --%>
         
        </div>
</div>
        <!-- //notice view -->

</body>
</html>