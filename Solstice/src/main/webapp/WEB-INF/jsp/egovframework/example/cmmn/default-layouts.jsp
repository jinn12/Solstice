<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link rel="stylesheet" type="text/css" href="/resource/css/bootstrap.css">   -->  

<!-- Optional theme -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->

<!-- Optional theme -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->

<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">    
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>


</head>
 <body> 
  	
  	<!--헤더 시작-->
	<tiles:insertAttribute name="tiles_header"/>
	<%-- <tiles:insertAttribute name="tiles_nav"/> --%>
	<!--메뉴 시작-->
	<tiles:insertAttribute name="tiles_left"/>
	<div id="wrap">
	<tiles:insertAttribute name="tiles_content"/>
	</div>
	<!--푸터시작-->
	<tiles:insertAttribute name="tiles_footer"/>
	
	
  	    <%-- <div id="wrap1" style="width:100%; height:100px;">
  	       <div id="header" style="width:50%;float:left;">
	  			<tiles:insertAttribute name="tiles_header"/>
		  	</div>
	  		<div id="nav" style="width:50%; float:left;">
	  			<tiles:insertAttribute name="tiles_nav"/>
		  	</div> -
		  	</div>
		  	<div id="wrap2" style="width:100%;">
  			<div id="sidebar"  style="width:20%; float:left;" >
	  			<tiles:insertAttribute name="tiles_left"/>
		  	</div>	
		  	<div id="content"  style="width:80%; float:left;">
	  			<tiles:insertAttribute name="tiles_content"/>
		  	</div> 
		  	</div>	
		  	<div id="wrap3" style="width:100%;">
		  	<div id="footer">
	  			<tiles:insertAttribute name="tiles_footer"/>
		 </div>
  		</div> --%>
  	</body>
</html>