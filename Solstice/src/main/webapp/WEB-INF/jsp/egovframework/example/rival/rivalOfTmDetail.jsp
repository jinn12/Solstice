<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>해당 경쟁사의 상표 상세보기</title>
</head>
<body>
<!-- 제목 -->
<div class="title_area">
<span>고객정보관리</span><i class="fas fa-caret-right"></i><span>경쟁사관리</span><i class="fas fa-caret-right"></i><span>상표 상세보기</span>
</div>
	<div class="table_area">
		<table class="table table_detail noradius">
			<colgroup>
				<col width="20%"></col>
				<col width="12%"></col>
				<col width="28%"></col>
				<col width="12%"></col>
				<col width="28%"></col>
			</colgroup>
			<tr>
				<td rowspan="4" style="text-align: center;"><img src="${Tm.image_url}"></td>
				<th>상품분류</th>
				<td>${Tm.prod_cate_code_list}</td>
				<th>출원번호</th>
				<td>${Tm.appl_no}</td>
			</tr>
			
			<tr>
				<th>출원공고번호</th>
				<td>${Tm.pub_date}</td>
				<th>출원인</th>
				<td>${Tm.applicant}</td>
			</tr>
			
			<tr>
				<th>출원일자</th>
				<td>${Tm.appl_date}</td>
				<th>출원공고일자</th>
				<td>${Tm.reg_pub_no}</td>
			</tr>
		</table>
	</div>
	
	<div class="btn_group">
		<button class="btn" type="submit" onclick="location.href='javascript:history.back();'">
		<i class="fal fa-list-alt"></i> 목록
		</button>
	</div>
	<!--   <div>
		<input type="submit" class="ui black button" value="목록" id="btnsub"  onclick="location.href='javascript:history.back();'"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	
		</div> -->
		
</body>
</html>