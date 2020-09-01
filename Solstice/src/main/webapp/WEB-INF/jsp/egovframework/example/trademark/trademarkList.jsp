
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<title>상표공보 검색</title>
  <style>
.QnaSearchBox1{
border-bottom:3px solid black;
width: 50%;
/* box-shadow: 0px 0px 20px 10px rgba(0.2,0,0,0.4); */
}
.qnaTable{
margin-left: 500px;
}
.gotowrite{
width: 152px;
margin-left: 620px;
margin-top: 9px;
}
.paging{text-align: center;margin-top: 30px;}
.page{border: 1px solid black; background: black;
   	   color: white; padding: 3px 10px 3px 10px; border-radius: 6px;font-weight: bold;}
.pre_page, .next_page{border: 1px solid rgb(244, 244, 244); background: rgb(244, 244, 244);
   	   color: #3e3e3e; padding: 3px 10px 3px 10px; border-radius: 6px;font-weight: bold;    display: inline-block;}
</style>
</head>
<body>

   <!-- 검색창시작 -->
	<div align="center">
			<div class="ClientSearchBox1" style="height: 130px;">
			<form action="selectTmSearchList.do?"method="get">
			
                <a class="ui large black label">상표 검색</a>&ensp;
					<div class="ui input"><input type="text" name="search" style="width:340px; height:30px;"></div>&ensp;
			 <br><br>
		
             <input type="radio" name="searchtype1" value="" checked><label>&ensp;전체</label>&emsp;&emsp;
               <input type="radio" name="searchtype1" value="applicant"><label>&ensp;출원인</label>&emsp;&emsp; 
               <input type="radio" name="searchtype1" value="tm_ko"><label>&ensp;상표명</label>&emsp;&emsp;&emsp;
               <input type="radio" name="searchtype1" value="kipo_no"><label>&ensp;특허고객번호</label>&emsp;&emsp;&emsp;
			 <br><br>
			   <a class="ui large black label">출원상태</a>&emsp;&emsp;
           <input type="radio" name="searchtype" value="" checked><label>전체</label>&emsp;&emsp; 
             <input type="radio" name="searchtype" value="출원"><label>&ensp;출원</label>&emsp;&emsp;
               <input type="radio" name="searchtype" value="공고"><label>&ensp;공고</label>&emsp;&emsp; 
               <input type="radio" name="searchtype" value="거절"><label>&ensp;거절</label>&emsp;&emsp;&emsp;
               <input type="radio" name="searchtype" value="등록"><label>&ensp;등록</label>&emsp;&emsp;&emsp;
			
				
					<div class="ui buttons"><button class="ui small black button"
					 
					 type="submit">검색</button></div> 
			</form>
				
			</div>
		</div>  
<!-- 탭메뉴 -->

         
</body>
</html>