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
   
.floor{
	 padding-top: 50px;
	 border-collapse: collapse;
	 font-size: 20px;
}

.floor th{
	padding:10px 0px 10px 0;
	width: 100px;
	text-align: center;
	color:#4C4C4C;
}
.floor td{
	width: 620px;
	height: 100px;
	padding:10px 0px 10px 0;
	text-align: center;
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
	padding-top: 50px;
}



   
</style>
<meta charset="UTF-8">
<title>층별 안내</title>
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
		  <li class="side_li"><a href="floorGuide.jsp">층별 안내</a></li>			<!-- 서브 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">서류발급 안내</a></li>
		  <li class="side_li"><a href="visit.jsp">병문안 안내</a></li>
		  <li class="side_li"><a href="map.jsp">찾아오시는 길</a></li>
		  <li class="side_li"><a href="course.jsp">이달의 강좌</a></li>
		</ul>
  	</div>
  	
  	<!-- //sidebar -->
  </div>
  
  	<!-- 중간 -->
  <div class="column middle">
  	<div id="nameDiv">
     		<span><h2 id="name">층별 안내</h2></span>
    </div>

  	
  	<!-- 페이지의 내용 -->
  	<div class="part_content">
									<table class="floor" border="1">
										<tr>
											<th style="background-color: #F6F7DD;">5F</th>
											<td>휴게실, 입원실(501~510)</td>
										</tr>
										<tr>
											<th style="background-color: #F6F7DD;">4F</th>
											<td>입원실(401~410)</td>
										</tr>
										<tr>
											<th style="background-color: #CBE2B8;">3F</th>
											<td>정형외과, 가정의학과, 산부인과,<br>호흡기내과, 순환기내과, 소화기내과</td>
										</tr>
										<tr>
											<th style="background-color: #CBE2B8;">2F</th>
											<td>위장관외과, 대장항문외과, 이식혈관외과,<br>외과(일반), 신경과, 안과</td>
										</tr>
										<tr>
											<th style="background-color: #CBE2B8;">1F</th>
											<td>원무과, 간호과, 약제과,<br>알레르기내과, 내과(일반), 응급실</td>
										</tr>
										<tr>
											<th style="background-color: #EAEAEA;">B1F</th>
											<td>장례식장</td>
										</tr>
									</table>

	</div><!-- part_content 끝 -->
  </div><!-- 가운데 레이아웃 끝 -->
  
  <div class="column side"></div>
</div>

  <!-- footer Start -->
     <jsp:include page="/footer.jsp"></jsp:include>
<!-- 	footer End -->


</body>
</html>