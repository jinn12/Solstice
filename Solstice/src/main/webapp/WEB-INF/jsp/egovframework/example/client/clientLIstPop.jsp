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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
 <style>

  
 a:link { color: black; text-decoration: none;}

.help{
font-size:15px;
border-top: 1px solid grey;
margin-top: 20px;

}
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
function clientDetailForReport(com_seq) {

	$('#com_seq').val(com_seq);

	opener.location.href ='/clientDetailForReport.do?com_seq=' + com_seq;  //배포시에는 com.sosltice 없어야 한다.
	//opener.location.href ='/com.solstice/clientDetailForReport.do?com_seq=' + com_seq;

	close();
	//$('#frm').submit();
}
	
</script>
</head>
<body>
<p style="font-size: 20pt; padding-top:50px; color:#373737; text-align:center;">고객목록</p>
<body>
<!-- 검색창시작 -->
	<div align="center">
			<div class="ClientSearchBox1" style="height: 130px;">
			<form action="selectClientSearchListPop.do"method="get">
			
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
		</div>  
<div class = "count">총:${listCount}</div>
<table class="ui celled table">
  <thead>
    <tr>
    <th>번호</th>
    <th>기업명</th>
    <th>대표이사</th>
    <th>주소</th>
  
   
  </tr></thead>
  <tbody>
   <c:forEach items="${requestScope.list}" var="client">
    <tr>
     <td data-label="Name">
   <%-- 	<a href="javascript:clientDetail('${client.com_seq}','${client.com_company_name}')">${client.com_company_name}</a>
   	   <input type="hidden" name="com_seq" value="${client.com_seq}">
   	  	<input type="hidden" name="com_company_name" value="${client.com_company_name}"></td>
 --%>
 
 <a href="javascript:clientDetailForReport('${client.com_seq}')">${client.com_seq}</a>
   	   <input type="hidden" name="com_seq" value="${client.com_seq}"></td>
   	   <td data-label="Job">${client.com_company_name}</td>
      <td data-label="Job">${client.com_ceo }</td>
      <td data-label="Job">${client.com_addr }</td>    
   </tr>
 </c:forEach>
  </tbody>
</table>
		
		




<!-- 맨 처음 페이지 -->
<div class ="paging" >
<c:if test="${requestScope.currentPage le 1 }"><p class="pre_page"><<</p></c:if>
<c:if test="${requestScope.currentPage gt 1 }"><a href="clientListPop.do"><p class="pre_page"><<</p></a></c:if>

<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   <c:if test="${p eq requestScope.currentPage }">      
      <font><b class="page">${ p }</b></font>
   </c:if>
   <c:if test="${p ne requestScope.currentPage }"><a href="clientListPop.do?page=${ p }"><p class="pre_page" style="margin:0px 2px 0px 2px">${ p }</p></a></c:if>
</c:forEach>

<!-- 맨 마지막페이지 -->
<c:if test="${currentPage ge maxPage }"><p class="next_page">>></p></c:if>
<c:if test="${currentPage lt maxPage }"><a class="next_page" href="clientListPop.do?page=${ requestScope.maxPage }">>></a></c:if>  

</div>
<!-- //페이징 -->
</body>

</html>