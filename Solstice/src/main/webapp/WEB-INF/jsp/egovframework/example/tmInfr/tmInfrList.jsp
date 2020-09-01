<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의내역</title>
<c:import url="../header.jsp" />
<!-- 시맨틱유아이 cdn -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<!-- 제작용 css -->
<!--  <link rel= "stylesheet" type="text/css" href="resources/css/mychoe.css">     -->                      
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

			
	<!-- 문의내역 페이지 시작 -->
	

	
		<p style="font-size: 20pt; padding-top:50px; color:#373737; text-align:center;">문의 내역</p>
	
		<!-- 검색창시작 -->
	<div align="center">
			<div class="QnaSearchBox1" style="height: 130px;">
			<form action="selectTmSearchList.do?"method="get">
			<%-- <input type="hidden" name="user_id" value="${loginUser.userid }"> --%>
                <a class="ui large black label">검색조건</a>&ensp;
					<div class="ui input"><input type="text" name="search" style="width:340px; height:30px;"></div>&ensp;
			 <br><br>
				<a class="ui large black label">검색어</a>&ensp;
				 <input type="radio" name="searchtype" value=""><label>&ensp;전체</label>&emsp;&emsp; 
				 <input type="radio" name="searchtype" value="답변완료"><label>&ensp;상표명</label>&emsp;&emsp;
					<input type="radio" name="searchtype" value="미답변"><label>&ensp;출원인</label>&emsp;&emsp; 
					<div class="ui buttons"><button class="ui small black button" type="submit">검색</button></div> 
			</form>
				<div class="gotowrite"><button class="ui middle black button" onclick="">
		<i class="edit outline icon"></i>총 몇건</button></div>
			</div>
		</div>  
		
<br>
		<!-- 문의 내역 리스트 시작 -->
		
		
		<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function deleteQna(qnano){
		$.ajax({
	         url:"deleteQna.do",
	         type:"post",
	         data:{qnano:qnano},
	         success: function(result){
	             if(result == "ok"){
	               alert("문의내역이 삭제되었습니다.");
	               window.location.reload();
	             }else {
	               alert("문의내역 삭제 실패!");
	             }
	          },
	          error: function(request, status, errorData){
					console.log("error code : " + request.status + "\nMessage : " + request.responseText + "\nError : " + errorData);
				}
	       });  
	}
	
	$(function(){
		$(".qnalist").slice(0, 10).fadeIn();
        $("#moreqnalist").click(function(e) { 
              e.preventDefault();
              $(".qnalist:hidden").slice(0, 5).fadeIn(); 
              if ($(".qnalist:hidden").length == 0) { 
                  $('#moreqnalist').fadeOut();
              }
          });
	}) 
</script>



	<div class="wrapQna">
               <table class="qnaTable">
				<!-- 반복영역 -->
				<%-- <c:forEach items="${requestScope.list}" var="qna" varStatus="status">
						<c:url var="ndt" value="selectQnaDetail.do">
		            <c:param name="qnano" value="${qna.qnano}" />
		       
				</c:url> --%>
					<tr class="qnalist" style="display: none;">
			
				
			
				<td width="5%" class="qnalistname"><i class="lightbulb outline icon"></i></td>
				
					   <td width="90%" class="qnalistname"><a href=""></a><span style="font-size: 9pt; color:#aaa;"> &ensp;
						<fmt:formatDate value="" pattern="(yy.MM.dd E)"/></span> &ensp;&ensp;&ensp;
						</td>
						<td width="15%" class="qnalistname"><i class="trash alternate outline icon" onclick="deleteQna"/>');"></i></td>
					</tr>
			<%-- 	</c:forEach> --%>
				</table>
		
		<br>
	
		
			<div>

		
		
		</div>
		<br>
	 
<!-- /List -->
        	
		
		
		
		
		

		
	</div>
	<!-- 문의내역 페이지 끝 -->
	
	<br><br><br>


</body>

</html>