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
   
.ward{
	 border-collapse: collapse;
	 border-top:  3px solid #000000;
}

.ward th{
	padding:10px 0px 10px 0;
	width: 370px;
	text-align: center;
	font-size: 15px;
	color:#4C4C4C;
}
.ward td{
	width: 370px;
	padding:10px 0px 10px 0;
	text-align: center;
}

.wardTitle{
	font-size: 20px;
	margin: 0 10px 0 10px;
	font-weight: bold;
}

/* 페이지이름 */
.part_title{
	padding-top: 50px;
	font-size: 25px;
	font-weight: bold;
}

/* 내용부분(메인) */
.part_content{
	width: 100%;
}



   
</style>
<meta charset="UTF-8">
<title>병문안 안내</title>
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
		  <li class="side_li"><a href="visit.jsp">병문안 안내</a></li>			<!-- 서브 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">서류발급 안내</a></li>
		  <li class="side_li"><a href="floorGuide.jsp">층별 안내</a></li>
		  <li class="side_li"><a href="map.jsp">찾아오시는 길</a></li>
		  <li class="side_li"><a href="course.jsp">이달의 강좌</a></li>
		</ul>
  	</div>
  	
  	<!-- //sidebar -->
  </div>
  
  	<!-- 중간 -->
  <div class="column middle">
  	<div id="nameDiv">
     		<span><h2 id="name">병문안 안내</h2></span>
    </div>

  	
  	<!-- 페이지의 내용 -->
  	<div class="part_content">
							<div>
								<div class="download">
								<p class="part_title">병문안 시간</p>
								<span class="wardTitle"><p>일반병동</p></span>
									<table class="ward" border="1">
										<tr>
											<th style="background-color: #EAEAEA;">평일</th>
											<td>18:00 ~ 20:00</td>
										</tr>
										<tr>
											<th rowspan="2" style="background-color: #EAEAEA;">주말 & 공휴일</th>
											<td>10:00 ~ 12:00</td>
										</tr>
										<tr>
											<td>16:00 ~ 18:00</td>
										</tr>
									</table>
								</div>
								<div class="download">
								<span class="wardTitle"><p>중환자실</p></span>
									<table class="ward" border="1">
										<tr style="background-color: #EAEAEA;">
											<th>내과계 중환자실</th>
											<th>외과계 중환자실</th>										
											<th>순환계 중환자실</th>										
											<th>소아 중환자실</th>										
											<th>신생아 중환자실</th>										
										</tr>
										<tr>
											<td>09:30 ~ 10:00</td>
											<td>09:30 ~ 10:00</td>
											<td>09:30 ~ 10:00</td>
											<td>09:30 ~ 10:00</td>
											<td>09:30 ~ 10:00</td>
										</tr>
										<tr>
											<td>19:00 ~ 19:30</td>
											<td>19:00 ~ 19:30</td>
											<td>19:00 ~ 19:30</td>
											<td>19:00 ~ 19:30</td>
											<td>19:00 ~ 19:30</td>
										</tr>
									</table>
								</div>
							</div>
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