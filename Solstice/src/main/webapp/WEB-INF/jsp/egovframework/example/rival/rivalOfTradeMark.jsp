<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>해당 경쟁사가 보유한 상표 목록</title>
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
   
  <c:url var="ndt" value="rivalDetail.do">
		            <c:param name="rival_seq" value="${rival_seq}" />
		        
		            </c:url>
		               
 <%--  <c:url var="rknl" value="rivalForTmList.do">
		             <c:param name="rival_kipo_no_list" value="${rival_kipo_no_list}" />
		        
		            </c:url> --%>
		            
    <tr>
   
      <td data-label="Name1" id="Name1" name="Name1">${rival.rival_seq}</td> 
       <td data-label="Job"><a href="${ ndt }">${rival.rival_company_name}</a></td> 
      <td data-label="Job"><a href="${ ndt }">${rival.rival_biz_no}</a></td> 
      <td data-label="Age"><a href="${ ndt }">${rival.rival_reg_no }</a></td>
       <td data-label="Age"><a href="${ ndt }">${rival.rival_ceo }</a></td>
     <%--  <td data-label="Job" name="kipo_no">
  
      	<c:forEach items="${kipo_no}" var="list" varStatus="status" >
     <a href="${ rknl }">${list}</a>
      </c:forEach>
       
      </td> 
 --%>
      <td data-label="Job1" id="Job1" name="Job1">
   ${rival.rival_kipo_no_list}
  </td> 
   </tr>

  </tbody>
</table>

</body>
</html>