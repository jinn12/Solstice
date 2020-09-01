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
	 var com_seq = $("#Name1").text();
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
         location.href="clientOfTmSearchList.do?kipo_no=" + kipo_no + "&com_seq=" + com_seq;
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
<p style="font-size: 20pt; padding-top:50px; color:#373737; text-align:center;">고객의 상표 목록</p>
<body>

 <div class= "count">총:${listCount}</div>
<!-- 탭메뉴 -->

		
			<table class="ui celled table">

  <thead>
    <tr>
    <th>고객 일련 번호</th>
    <th>고객 사업자등록번호</th>
    <th>고객 회사명</th>
    <th>고객 대표자명</th>
    <th>고객 법인 등록번호</th>
    <th>특허고객번호 목록</th>
    

    
    
      <!-- <th>삭제</th> -->
      
  </tr></thead>
  <tbody>
   
  <c:url var="ndt" value="clientDetail.do">
		            <c:param name="com_seq" value="${com_seq}" />
		            </c:url>
    <tr>
    <td data-label="Name1" id="Name1" name="Name1">${client.com_seq}</td> 
      <td data-label="Name">${client.com_biz_no}</td> 
      <td data-label="Job"><a href="${ ndt }">${client.com_company_name}</a></td> 
      <td data-label="Age"><a href="${ ndt }">${client.com_ceo }</a></td>
       <td data-label="Job">${client.com_reg_no}</td> 
       <td data-label="Job1" id="Job1" name="Job1">
   ${client.kipo_no_list}
  </td> 
   </tr>

  </tbody>
</table>

</body>
</html>