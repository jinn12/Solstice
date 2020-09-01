<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
  <style>
  .help{
font-size:15px;
border-top: 1px solid grey;
margin-top: 20px;

}
    table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
    </style>
</head>
<body>
<div id="title" style="border-bottom:1px solid green";>
전산업무요청
</div>
<body>
<div id="search">
검색조건 : [제목] [검색어] [검색]
</div>
<div id="count" style="margin-left:1900px;">
총 OOO건
</div>
   <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">등록일자</th>
      <th scope="col">작성자</th>
       <th scope="col">상태</th>
    
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">12</th>
      <td>OOO에서 버그 발생[1]</td>
      <td>2020.06.03</td>
      <td>김유신</td>
      <td>진행중</td>
     
    </tr>
    <tr>
      <th scope="row">11</th>
      <td>레이아웃이 깨짐[2]</td>
      <td>2020.06.03</td>
      <td>홍길동</td>
      <td>진행중</td>
  
    </tr>
    <tr>
      <th scope="row">10</th>
    <td>검색이 안됨[1]</td>
      <td>2020.06.03</td>
      <td>이순신</td>
      <td>완료</td>
     
    </tr>
  </tbody>
</table>
</body>
<div class = "help">
<p><p>
[도움말]<p>
[1] 전산업무요청은 관리자나 시스템 개발사에게 요쳥하고, 처리 결과를 확인할 수 있습니다.

</div>
</html>