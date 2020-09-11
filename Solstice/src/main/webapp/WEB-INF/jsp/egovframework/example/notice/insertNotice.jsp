<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 등록</title>
</head>
<body>

<div class="title_area">
<span>공지사항</span><i class="fas fa-caret-right"></i><span>공지사항 등록</span>
</div>
<form action="insertNotice.do" method="post">
<div class="table_area">
<table class="table table_detail noborder"> 
<colgroup>
	<col width="10%"></col>
	<col width="*"></col>
</colgroup>
 <tbody>
   <tr>
      <th>공지사항 제목</th>
      <td><input type="text" class="form-control" id="notice_title" name="notice_title" placeholder="" ></td>
   </tr>
   <tr>
   <th>공지사항 내용</th>
      <td>
      <textarea class="form-control" id="notice_contents" name="notice_contents"></textarea>
      </td>
      </tr>
      
       <tr>
   <th>관리자 작성자</th>
      <td>
     ${sessionScope.loginUser.user_email}
      <input type="hidden" id="notice_writer " name="user_email" value="${sessionScope.loginUser.user_email}">
   </td>
      </tr>
 </tbody> 
 

</table>
	</div>
	<!-- 회원정보입력섹션 끝! -->	
	<div class="btn_group">
	<button class="btn" type="reset">
	<i class="far fa-redo"></i> 다시작성
	</button>
	<button class="btn btn-submit" type="submit">
	<i class="far fa-check"></i> 완료
	</button>
	</div>

</form>
             
</body>
</html>