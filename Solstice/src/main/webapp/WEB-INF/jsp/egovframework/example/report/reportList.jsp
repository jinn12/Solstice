<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
  google.charts.load("current", {packages:['corechart']});
  google.charts.setOnLoadCallback(drawChart);
  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ["Element", "Density", { role: "style" } ],
      ["08월", 8.94, "#b87333"],
      ["09월", 10.49, "silver"],
      ["10월", 19.30, "gold"],
   
    ]);

    var view = new google.visualization.DataView(data);
    view.setColumns([0, 1,
                     { calc: "stringify",
                       sourceColumn: 1,
                       type: "string",
                       role: "annotation" },
                     2]);

    var options = {
      width: 600,
      height: 400,
      bar: {groupWidth: "95%"},
      legend: { position: "none" },
    };
    var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
    chart.draw(view, options);
}

  </script>


<style>
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
<div id="search">
1. 리포트 개요
</div>
   <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">고객명</th>
      <th scope="col">고객번호</th>
      <th scope="col">가입일자</th>
      <th scope="col">종료일자</th>
    
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>주식회사OOO</td>
      <td>C201001</td>
      <td>2020.07.08</td>
      <td>2020.07.30</td>
     
    </tr>
    <tr>
      <th scope="row">생성일자</th>
      <th>조사기간</th>
      <th>전월 신규 출원/등록</th>
      <th>누적 전체 출원/등록</th>
     
    </tr>
     <tr>
      <td>2020.11.05</td>
      <td>2020.07.07~2020.09.09</td>
      <td>4건 /5건</td>
      <td>234건 /112건</td>
     
    </tr>
<tr>
      <th scope="row">경쟁사</th>
      <th>특허고객번호</th>
      <th>관심분야 상표분류</th>
      <th>등록상태</th>
     
    </tr>
    <tr>
      <td>3개사</td>
      <td>6건</td>
      <td>11건</td>
      <td>[유지]</td>
     
    </tr>
  
</table>
<div id="search">
2. 상표동향
</div>
<div id="search">
1-A 한국 특허청 상표 출원/등록현황
</div>
   <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">구분</th>
      <th scope="col">3개월 소계</th>
      <th scope="col">08월</th>
      <th scope="col">09월</th>
      <th scope="col">10월 1)</th>
      <th scope="col">전체 누적</th>

    </tr>
  </thead>
  <tbody>
    <tr>
      <td>출원</td>
      <td>00,000</td>
      <td>0,000</td>
      <td>0,000</td>
      <td>0,000</td>
      <td>000,000건</td>
     
    </tr>
     <tr>
      <td>등록</td>
      <td>00,000</td>
      <td>0,000</td>
      <td>0,000</td>
      <td>0,000</td>
      <td>000,000건</td>
     
     
    </tr>

  
</table>
<div id="columnchart_values" style="width: 900px; height: 300px;"></div>

</body>
</html>