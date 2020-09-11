<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로젝트 목록</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
 <style>

  
 a:link { color: black; text-decoration: none;}


.ClientSearchBox1{
border-bottom:3px solid black;
margin-right: 200px;
width: 50%;
/* box-shadow: 0px 0px 20px 10px rgba(0.2,0,0,0.4); */
}
.count {
margin-left: 1990px;
}
.clientTable{
margin-left: 500px;
}
.gotowrite{
width: 152px;
margin-left: 820px;
margin-top: 9px;
}
.paging{text-align: center; margin-top: 30px; margin-right:300px;}
.page{border: 1px solid black; background: black;
   	   color: white; padding: 3px 10px 3px 10px; border-radius: 6px;font-weight: bold;}
.pre_page, .next_page{border: 1px solid rgb(244, 244, 244); background: rgb(244, 244, 244);
   	   color: #3e3e3e; padding: 3px 10px 3px 10px; border-radius: 6px;font-weight: bold;    display: inline-block;}
</style>
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function popup(){
    var url = "clientListPop.do";
    var name = "popup test";
    var option = "width = 500, height = 500, top = 100, left = 200, location = no"
    window.open(url, name, option);
}
</script>


</head>
<body>
<p style="font-size: 20pt; padding-top:50px; color:#373737; text-align:center;">프로젝트 목록</p>
<body>
<!-- 검색창시작 -->
	<div align="center">
			<div class="ClientSearchBox1" style="height: 130px;">
			<form action="selectRivalSearchList.do"method="get">
			
                <a class="ui large black label">경쟁사 검색</a>&ensp;
					<div class="ui input"><input type="text" name="search" style="width:340px; height:30px;"></div>&ensp;
			 <br><br>
			   <a class="ui large black label">분류</a>&emsp;&emsp;
           <input type="radio" name="searchtype" value="" ><label>전체</label>&emsp;&emsp; 
             <input type="radio" name="searchtype" value="rival_company_name"><label>&ensp;제목</label>&emsp;&emsp;
               <input type="radio" name="searchtype" value="rival_ceo"><label>&ensp;고객명</label>&emsp;&emsp; 
               <input type="radio" name="searchtype" value="rival_kipo_no_list"><label>&ensp;특허고객번호</label>&emsp;&emsp;&emsp;
			
				
					<div class="ui buttons"><button class="ui small black button" type="submit">검색</button></div> 
			</form>
				<div class="gotowrite"><button class="ui middle black button"  onclick="location.href='javascript:popup()'">
		<i class="edit outline icon"></i>프로젝트 등록</button></div>
			</div>
		</div>  
<div class = "count">총:${listCount}</div>
<table class="ui celled table">
  <thead>
    <tr><th>번호</th>
    <th>고객명</th>
    <th>조사기간</th>
    <th>프로젝트 상태</th>
    <th>전월 출원/등록</th>
      <th>경쟁사</th>
      <th>특허고객번호</th>
      <th>관심분류</th>
      <th>등록</th>
      <th>생성일자</th>
      <th>링크</th>
      
  </tr></thead>
  <tbody>
    <tr>
   
      <td data-label="Name">20A-012</td>
      <td data-label="Age">주식회사</td>
      <td data-label="Job">2020.00.00 ~ 2020.00.00</td>
      <td data-label="Job">[신규등록]</td>
       <td data-label="Job">30/12</td>
       <td data-label="Job">1</td>
       <td data-label="Job">2</td>
       <td data-label="Job">1</td>
       <td data-label="Job"></td>
       <td data-label="Job">2020.09.20</td>
       <td data-label="Job">-></td>
    
        
   </tr>

  </tbody>
</table>

</body>
</html>