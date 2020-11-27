<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
* {
  box-sizing: border-box;
  font-family: "맑은 고딕";
}
body {
  font-family: Arial, Helvetica, sans-serif;	
}

/* Style the header */


/* Create three unequal columns that floats next to each other */
.column {
  float: left;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Left and right column */
.column.side {
  width: 25%;
}

/* Middle column */
.column.middle {
  width: 50%;
  height: auto;
}

/* Clear floats after the columns */
.row{
	padding-top: 130px;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}
/* Style the footer */
/*

.footer {
  background-color: #f1f1f1;
  padding: 10px;
  text-align: center;
}
*/

/* 위에는 w3school 긁어온것 */

   
/* 제목 부분 */
   #nameDiv{
   
   clear:both;
   justify-content: center; 
   display: center; 
   display:inline-block;
   margin:5px 0 5px 0;
   width:886px; 
   border-left: 5px solid #94CCC4;
   padding-left: 40px;
   }
   
   #name{
      margin:5px 0 5px 0;
      padding:0px;
      font-size: 30px;
   }
   #nameDiv h1{
   vertical-align: 25px;
   }
   /*제목부분 끝*/


/* 페이지이름 */
.part_title{
	padding-top: 50px;
	font-size: 25px;
	font-weight: bold;
}

/* 내용부분(메인) */
.part_content{
	width: 100%;
	padding-top: 50px;
}

.map{
	margin-left: 30px;
}

.floor {
	  padding-top: 50px;
     
   }

th{
	padding:10px 0px 10px 0;
	width: 150px;
	text-align: center;
	font-size: 15px;
	color:#4C4C4C;
	border-bottom: dotted 1px #5d5d5d; 
}
td{
	width: 440px;
	padding:10px 0px 10px 0;
	text-align: center;
	border-bottom: dotted 1px #5d5d5d; 
}

h3{
	padding-bottom: 20px;
	margin-left: 30px;	
}
</style>
<meta charset="UTF-8">
<title>찾아오시는 길</title>
<link rel="stylesheet" href="./css/sidebar.css">
</head>
<body>
  <!-- Header Start -->
     <jsp:include page="header.jsp"></jsp:include>
<!-- 	Header End -->

<div class="row">
	<!-- 양쪽 빈공간중에 왼쪽. 메뉴바 들어옴. -->
  <div class="column side">
  	     		<!-- sidebar -->
  	<div>
  		<ul class="side_ul">
  		<h1 style="font-size: 23px;" class="leftTop">안내</h1>		<!-- 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="map.jsp">찾아오시는 길</a></li>			<!-- 서브 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">서류발급 안내</a></li>
		  <li class="side_li"><a href="floorGuide.jsp">층별 안내</a></li>
		  <li class="side_li"><a href="visit.jsp">병문안 안내</a></li>
		  <li class="side_li"><a href="course.jsp">이달의 강좌</a></li>
		</ul>
  	</div>
  	
  	<!-- //sidebar -->
  </div>
  
  	<!-- 중간 -->
  <div class="column middle">
  	<div id="nameDiv">
     		<span><h2 id="name">찾아 오시는 길</h2></span>
    </div>

  	
  	<!-- 페이지의 내용 -->
  	<div class="part_content">
			<font color="gray"><h3>율제대학병원으로 찾아오시는 길 입니다.</h3></font>
	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.
      1103800594706!2d126.93563751468302!3d37.552463132692885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.
      1!3m3!1m2!1s0x357c98be0a2cf6e3%3A0x4d8963de2196f6dc!
      2z7ISc7Jq47Yq567OE7IucIOuniO2PrOq1rCDrjIDtnaXrj5kg67Cx67KU66GcIDIz!5e0!3m2!1sko!2skr!4v1601211189306!5m2!1sko!2skr" 
      width="600" height="350" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"
      width="500" height="400"></iframe>
		<table class="floor">
			<tr>
				<th style="border-top: dotted 1px #5d5d5d;">주소</th>
				<td style="border-top: dotted 1px #5d5d5d;">서울특별시 마포구 백범로 23 구프라자</td>
			</tr>
			<tr>
				<th>대표전화</th>
				<td>02-707-1480</td>
			</tr>
			<tr>
				<th>지하철</th>
				<td>(신촌역) 2호선 6번출구 도보 8분</td>
			</tr>	
			<tr>
				<th>버스</th>
				<td>(하차)신촌로터리, 서강대학교</td>
			</tr>
			</table>												
		</div>
	</div><!-- part_content 끝 -->
  </div><!-- 가운데 레이아웃 끝 -->
  
  <div class="column side"></div>
</div>

  <!-- footer Start -->
     <jsp:include page="/footer.jsp"></jsp:include>
<!-- 	footer End -->


</body>
</html>