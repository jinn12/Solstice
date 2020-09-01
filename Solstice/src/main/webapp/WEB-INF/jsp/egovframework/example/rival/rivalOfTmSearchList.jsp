<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>해당 고객이 보유한 상표 목록</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
 <script type="text/javascript">

 $(function () {
	 var rival_seq = $("#Name1").text();
    var kipo_no1 = $("#Job1").text(); //input 태그에서 value의 역할을 text()   Name1
     if (kipo_no1.indexOf(',') != -1) {
         var items = kipo_no1.split(',');
         var itemTag = "";
         var item = "";
         for (var i = 0; i < items.length; i++) {
             item = items[i];
             if (i != 0) {
                 itemTag += "<span class='kipo_no'>," + item + "</span>";
             } else {
                 itemTag += "<span class='kipo_no'>" + item + "</span>";
             }
         }
         $("#Job1").html(itemTag);
     }
     $(".kipo_no").click(function () {
         /* alert(this.innerText.replace(",", "")); */
    	 var kipo_no = this.innerText.replace(",", "");
         location.href="rivalForTmList.do?kipo_no=" + kipo_no + "&rival_seq=" + rival_seq;
     });
 });
 </script>
 <style>

  
 a:link { color: black; text-decoration: none;}


.ClientSearchBox1{
border-bottom:3px solid black;
margin-right: 200px;
width: 50%;
/* box-shadow: 0px 0px 20px 10px rgba(0.2,0,0,0.4); */
}
.help{
border-top: 2px solid;
}
.count{
margin-left:1970px;
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
<p style="font-size: 20pt; padding-top:50px; color:#373737; text-align:center;">경쟁사의 상표 목록</p>
<body>

 <div class= "count">총:${listCount}</div>
<!-- 탭메뉴 -->

		
			<table class="ui celled table">

  <thead>
    <tr><th>경쟁사 번호</th>
    <th>회사명</th>
    <th>사업자 등록번호</th>
    <th>법인 등록번호</th>
    <th>대표자명</th>
    <th>특허고객번호 목록</th>

    
    
      <!-- <th>삭제</th> -->
      
  </tr></thead>
  <tbody>
      <c:forEach items="${requestScope.list}" var="rival" begin="0" end="0">
   <c:url var="ndt" value="rivalDetail.do">
		             <c:param name="rival_seq" value="${rival_seq}" />
		           
		            </c:url>
		            
    <tr>
   
       <td data-label="Name1" id="Name1" name="Name1">${rival.rival_seq}</td> 
       <td data-label="Job"><a href="${ ndt }">${rival.rival_company_name}</a></td> 
      <td data-label="Job"><a href="${ ndt }">${rival.rival_biz_no}</a></td> 
      <td data-label="Age"><a href="${ ndt }">${rival.rival_reg_no }</a></td>
       <td data-label="Age"><a href="${ ndt }">${rival.rival_ceo }</a></td>
        <td data-label="Job1" id="Job1" name="Job1">
   ${rival.rival_kipo_no_list}
  </td> 
   </tr>
</c:forEach>
  </tbody>
</table>
			
			

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
   <c:url var="ndt" value="tmDetailForRival.do">
		            <c:param name="tm_seq" value="${tm.tm_seq}" />
		            <c:param name="rival_seq" value="${tm.rival_seq}" />
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
<c:if test="${requestScope.currentPage gt 1 }"><a href="rivalForTmList.do?"><p class="pre_page"><<</p></a></c:if>

<c:forEach var="p" begin="${requestScope.startPage }" end="${requestScope.endPage }" step="1">
   <c:if test="${p eq requestScope.currentPage }">      
      <font><b class="page">${ p }</b></font>
   </c:if>
   <c:if test="${p ne requestScope.currentPage }"><a href="rivalForTmList.do?page=${ p }&search=${search}&searchtype=${searchtype}"><p class="pre_page" style="margin:0px 2px 0px 2px">${ p }</p></a></c:if>
</c:forEach>

<!-- 맨 마지막페이지 -->
<c:if test="${currentPage ge maxPage }"><p class="next_page">>></p></c:if>
<c:if test="${currentPage lt maxPage }"><a class="next_page" href="rivalForTmList.do?page=${requestScope.maxPage }&search=${search}&searchtype=${searchtype}">>></a></c:if>  

</div>
<!-- //페이징 -->

</body>
<div class = "help">
[도움말]
<div>
[1] 고객이 보유한 상표정보 입니다.
</div>
</div>
</html>