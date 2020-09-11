<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
 $(document).ready(function(){
	 $("#left_btn").click(function(){
		 $(".menu").toggleClass("hide");
		 $("#left").toggleClass("show");
		 $("#wrap").toggleClass("show");
		 $(".icon_set").toggle();
		 $(".icoRight").toggle();
		 $(".icoLeft").toggle();
	 })
	 
	 var flag='${flag}';
	 var a=$("#"+flag);
	 a.addClass('active');
	 console.log(a);
 })

</script>
<body>

	<div id="left" class="user_side collapse width">
	<a  href="#" data-toggle="collapse"  role="button" aria-expanded="false" aria-controls="left" id="left_btn">
		<i class="fal fa-angle-double-left icoLeft"></i>
		<i class="fal fa-angle-double-right icoRight"></i>
    </a>
    <c:if test="${loginUser.user_auth == 'USER' }">
	<div class="icon_set">
		<i class="fas fa-list"></i>
		<i class="fas fa-user-cog"></i>
		<i class="fas fa-chart-bar"></i>
		<i class="fas fa-chart-pie"></i>
		<i class="fas fa-briefcase"></i>
	</div>
	
	<ul class="menu">
	
		<li><a class="first_menu"><i class="fas fa-list"></i>기본정보</a>
			<ul class="second_menu">
					<li id="notice"><a href="noticeList.do"><i class="fas fa-caret-right"></i>공지사항</a></li> 
			
			<li id="request"><a href="requestList.do"><i class="fas fa-caret-right"></i>전산업무요청</a></li>
			</ul>
		</li> 
		
		<li><a class="first_menu"><i class="fas fa-user-cog"></i>고객정보관리</a>
			<ul class="second_menu">
				<li id="client"><a href="clientList.do"><i class="fas fa-caret-right"></i>고객 관리</a></li>
				<li id="rival"><a href="rivalList.do"><i class="fas fa-caret-right"></i>경쟁사 관리</a></li>
			</ul>
		</li>
		<li><a class="first_menu"><i class="fas fa-chart-bar"></i>데이터관리</a>
			<ul class="second_menu">
				<li id="tradeMark"><a href="tradeMarkList.do"><i class="fas fa-caret-right"></i>상표공보 검색</a></li>
				<li id="tradeName"><a href="tradeNameList.do"><i class="fas fa-caret-right"></i>상호정보 검색</a></li>
				<li id="product"><a href="productList.do"><i class="fas fa-caret-right"></i>상품정보 검색</a></li>
			</ul>
		</li>
		<li><a class="first_menu"><i class="fas fa-chart-pie"></i>분석관리</a>
			<ul class="second_menu">
				<li id="tradeMarkIn"><a href="tminfrList.do"><i class="fas fa-caret-right"></i>상표 침해현황</a></li>  
				<li id="tradeNameIn"><a href="tninfrList.do"><i class="fas fa-caret-right"></i>상호 침해현황</a></li>
				<li id="productIn"><a href="proInfrList.do"><i class="fas fa-caret-right"></i>상품 침해현황</a></li>
				<li id="totalIn"><a href="toinfrList.do"><i class="fas fa-caret-right"></i>종합 현황</a></li>
			</ul>
		</li>
		<li><a class="first_menu"><i class="fas fa-briefcase"></i>프로젝트관리</a>
			<ul class="second_menu">
				<li id="report"><a href="reportList.do"><i class="fas fa-caret-right"></i>프로젝트 목록</a></li>
			</ul>
		</li>
		</ul>
		</c:if>
	    <c:if test="${loginUser.user_auth == 'ADMIN' }">
	    <div class="icon_set">
		<i class="fas fa-list"></i>
		<i class="fas fa-building"></i>
		<i class="fas fa-code"></i>
	    </div>
		<ul class="menu">	
		<li><a class="first_menu"><i class="fas fa-list"></i>기본정보</a>
			<ul class="second_menu">
				<li><a href="noticeList.do"><i class="fas fa-caret-right"></i>공지사항 관리</a></li>
				<li><a href="requestList.do"><i class="fas fa-caret-right"></i>전산업무요청 관리</a></li>
				<li><a href="requestList.do"><i class="fas fa-caret-right"></i>분석가 관리</a></li>
			</ul>
		</li>
		
		<li><a class="first_menu"><i class="fas fa-building"></i>AGENT 관리</a>
			<ul class="second_menu">
				<li><a href="clientList.do"><i class="fas fa-caret-right"></i>상표공보 수집현황</a></li>
			    <li class="active"><a href="competitorList.do"><i class="fas fa-caret-right"></i>상호정보 수집편황</a></li>
                <li><a href="competitorList.do"><i class="fas fa-caret-right"></i>상품정보 수집편황</a></li>
		        <li><a href="competitorList.do"><i class="fas fa-caret-right"></i>상호정보 수집편황</a></li>
			</ul>
		</li>
		<li><a class="first_menu"><i class="fas fa-code"></i>코드관리</a>
			<ul class="second_menu">
				<li><a href="tminfrList.do"><i class="fas fa-caret-right"></i>기본 코드 관리</a></li>
				<li><a href="tninfrList.do"><i class="fas fa-caret-right"></i>지정상품 분류코드</a></li>
				<li><a href="proInfrList.do"><i class="fas fa-caret-right"></i>업종 뷴류코드</a></li>
			</ul>
		</li>
		</ul>
	</c:if>
</div>


  <%-- <ul>                 
  
                    <c:if test="${loginUser.user_auth == 'USER' }">
                    <li style="background-color:#E0EBFF;">기본정보</li>
					<li><a href="noticeList.do">공지사항</a></li>
					<li><a href="requestList.do">전산업무요청</a></li>
                    <li style="background-color:#E0EBFF">고객정보관리</li>
					<li><a href="clientList.do">고객 관리</a></li>
					<li><a href="rivalList.do">경쟁사 관리</a></li>
                    <li style="background-color:#E0EBFF">데이터관리</li>
		            <li><a href="tradeMarkList.do">상표공보 검색</a></li>
					<li><a href="tradeNameList.do">상호정보 검색</a></li>
					<li><a href="productList.do">상품정보 검색</a></li>
                    <li style="background-color:#E0EBFF">분석관리</li>
					<li><a href="tminfrList.do">상표 침해현황</a></li>  
					<li><a href="tninfrList.do">상호 침해현황</a></li>
					<li><a href="proInfrList.do">상품 침해현황</a></li>
					<li><a href="toinfrList.do">종합 현황</a></li>
					<li style="background-color:#E0EBFF">프로젝트관리</li>
					<li><a href="reportList.do">프로젝트 목록</a></li></c:if>
					
					<c:if test="${loginUser.user_auth == 'ADMIN' }">
                    <li style="background-color:#E0EBFF;">기본정보</li>
					<li><a href="noticeList.do">공지사항 관리</a></li>
					<li><a href="requestList.do">전산업무요청 관리</a></li>
					<li><a href="requestList.do">분석가 관리</a></li>
                    <li style="background-color:#E0EBFF">AGENT 관리</li>
					<li><a href="clientList.do">상표공보 수집현황</a></li>
					<li><a href="competitorList.do">상호정보 수집편황</a></li>
                     <li><a href="competitorList.do">상품정보 수집편황</a></li>
		             <li><a href="competitorList.do">상호정보 수집편황</a></li>
                    <li style="background-color:#E0EBFF">코드관리</li>
					<li><a href="tminfrList.do">기본 코드 관리</a></li>
					<li><a href="tninfrList.do">지정상품 분류코드</a></li>
					<li><a href="proInfrList.do">업종 뷴류코드</a></li>
					</c:if>
					

</ul> --%>
</body>
</html>
