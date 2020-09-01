<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객등록</title>
<!-- 시맨틱유아이 cdn -->

  <style>


.enrollSection{
	align:center;
	background: #f6f6f6;
	width: 60%;
	height: 60%x;
	margin-top: 40px;
}


.enrollTable{
	width: 90%;
	height: 90%;
	margin-left: 12%;
	padding-top: 20px;
}

.enrollTable tr{
	line-height: 58px;
}

.enrollTable th{
	 width:15%;
	 text-align: left;
}

.enrollTable td{
	width:85%;
	font-size: 10pt;
}
textarea{
	width:1000px; 
	height:100px; 
    resize:none;/* 크기고정 */ 
/*   resize: horizontal; // 가로크기만 조절가능 
	resize: vertical;  세로크기만 조절가능  */
}


</style>

</head>
<body>

<div id="request" style="margin-left:1000px;">
*필수입력
</div>
 <body>
<form action="updateMyNotice.do" method="post">
<input type="hidden" id="notice_seq" name="notice_seq" value="${notice.notice_seq}" >

	<div class="enrollSection">
	
		
<table class="table table-bordered"> 
 
 <tbody>
   <tr>
      <td>공지사항 제목</td>
      <td><input type="text" id="notice_title" name="notice_title" placeholder="${notice.notice_title}" ></td>
   </tr>
   
    <tr>
   <td>공지사항 내용</td>
      <td>
      <textarea id="notice_contents" name="notice_contents"  placeholder="${notice.notice_contents}"></textarea>
      </td>
      </tr>
      
       <tr>
   <td>관리자 작성자 :</td>
      <td>
     ${sessionScope.loginUser.user_email}
      <input type="hidden" id="notice_writer " name="user_email" value="${sessionScope.loginUser.user_email}">
   </td>
      </tr>
 </tbody> 
 

</table>
	</div>
	<!-- 회원정보입력섹션 끝! -->
	
	<div style="margin-top:30px;"></div>
           <button type = "submit" class="ui black basic button" >완료</button>
	
		<input type="reset" class="ui button" value="다시작성"> &nbsp;

</form>
             
</body>
</html>