<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상표검색</title>
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

</head>
<body>
<p style="font-size: 20pt; padding-top:50px; color:#373737; text-align:center;">상표검색</p>
<body>
 <!-- 검색창시작 -->
	<div align="center">
			<div class="ClientSearchBox1" style="height: 130px;">
			<form action="selectTmSearchList.do"method="get">
			
                <a class="ui large black label">검색어</a>&ensp;
					<div class="ui input"><input type="text" name="search" style="width:340px; height:30px;"></div>&ensp;
			 <br><br>
		
             <input type="radio" name="searchtype1" value="" checked><label>&ensp;전체</label>&emsp;&emsp;
               <input type="radio" name="searchtype1" value="applicant"><label>&ensp;출원인</label>&emsp;&emsp; 
               <input type="radio" name="searchtype1" value="tm_ko"><label>&ensp;상표명</label>&emsp;&emsp;&emsp;
               <input type="radio" name="searchtype1" value="kipo_no"><label>&ensp;특허고객번호</label>&emsp;&emsp;&emsp;
			 <br><br>
			   <a class="ui large black label">법적상태</a>&emsp;&emsp;
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
<table class="ui celled table">

  <thead>
    <tr><th>상표번호</th>
    <th>이미지</th>
    <th>출원번호</th>
    <th>출원인</th>
    <th>지정상품 분류코드 목록</th>
     <th>법적상태</th>
    <th>상표명</th> 
    <th>특허고객번호</th>
    
    
      <!-- <th>삭제</th> -->
      
  </tr></thead>
  <tbody>
   <c:forEach items="${requestScope.list}" var="tm">
   <c:url var="ndt" value="tmDetail.do">
		            <c:param name="tm_seq" value="${tm.tm_seq}" />
		            </c:url>
    <tr>
   
      <td data-label="Name">${tm.tm_seq}</td>
      <td data-label="Job"><a href="${ ndt }"><img src=${tm.image_url} style="height:130px; width:300px;"></a></td> 
      <td data-label="Age"><a href="${ ndt }">${tm.appl_no }</a></td>
      <td data-label="Job">${tm.applicant }</td>
    <td data-label="Job">${tm.prod_cate_code_list }</td>
     
        <td data-label="Job">${tm.legal_status }</td>
         <td data-label="Job">${tm.tm_ko }</td>
       <td data-label="Job">${tm.kipo_no}</td> 
        
       <%--  <td width="15%" class="qnalistname"><i class="trash alternate outline icon" onclick="deleteClient('<c:out value="${tm.tm_seq}"/>');"></i></td> --%>
       
      
        
   </tr>
 </c:forEach>
  </tbody>
</table>
		
		




<!-- 맨 처음 페이지 -->
<div class ="paging" >
<c:if test="${requestScope.currentPage le 1 }"><p class="pre_page"><<</p></c:if>
<c:if test="${requestScope.currentPage gt 1 }"><a href="selectTmSearchList.do"><p class="pre_page"><<</p></a></c:if>

<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   <c:if test="${p eq requestScope.currentPage }">      
      <font><b class="page">${ p }</b></font>
   </c:if>
   <c:if test="${p ne requestScope.currentPage }"><a href="selectTmSearchList.do?page=${ p }&search=${search}&searchtype=${searchtype}&searchtype1=${searchtype1}"><p class="pre_page" style="margin:0px 2px 0px 2px">${ p }</p></a></c:if>
</c:forEach>

<!-- 맨 마지막페이지 -->
<c:if test="${currentPage ge maxPage }"><p class="next_page">>></p></c:if>
<c:if test="${currentPage lt maxPage }"><a class="next_page" href="selectTmSearchList.do?page=${requestScope.maxPage }&search=${search}&searchtype=${searchtype}&searchtype1=${searchtype1}">>></a></c:if>  

</div>
<!-- //페이징 -->
</body>
</html>