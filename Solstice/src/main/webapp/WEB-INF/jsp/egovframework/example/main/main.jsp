<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>첫화면</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
</head>
<style>
.btn_jump{
width: 100%;
text-align: center;
letter-spacing: -1px;
font-weight: bold;
font-size:16px;
margin-top: 20px;
padding: 15px 20px;
position: relative;
border-radius: 0px;
color: #585858;
background: #efefef;
}
.btn_jump i{
position: absolute;
right: 20px;
font-size: 30px;
display: none;
animation: fadein 500ms;
-moz-animation: fadein 500ms;
-webkit-animation: fadein 500ms;
-o-animation: fadein 500ms;
}
/* .btn_jump.admin{border:1px solid #568DA6}
.btn_jump.user{border:1px solid #F28496;} */
.btn_jump.admin:hover{background: #568DA6; color: #ffffff;}
.btn_jump.user:hover{background: #F28496; color: #ffffff;}
.btn_jump:hover i{display: inline; color: #ffffff;}

@keyframes fadein {
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }



}
@-moz-keyframes fadein {
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
@-webkit-keyframes fadein {
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
@-o-keyframes fadein {
    from {
        opacity:0;
    }
    to {
        opacity: 1;
    }
}
</style>

<body> 
<div class="container" style="width:420px; margin-top:8%;">
	<div class="title" style="margin-bottom: 20px;">
     <span style="font-weight: bold; font-size: 42px; letter-spacing: -0.5px; padding:12px; color: #005bab; margin-bottom: 24px">Solstice</span>
     <span style="font-size: 18px; color: #545454; letter-spacing: -1px; font-weight: bold; ">상표권 침해권리 지원서비스</span>
     </div> 	
     <div>
      <button type="button" class="btn btn_jump admin"  onclick="location.href='moveAdLogin.do'">관리자 시스템 <i class="fal fa-long-arrow-right"></i></button>
      <button type="button" class="btn btn_jump user"  onclick="location.href='moveLogin.do' ">분석가 시스템<i class="fal fa-long-arrow-right"></i></button>
     </div>
	 </div>
   </body>


</html> 