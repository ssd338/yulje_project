<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 약품 상세페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="newfooter.css">
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="header.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style type="text/css">
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;	
}

/* Style the header */
/*
.header {
  background-color: #f1f1f1;
  padding: 30px;
  text-align: center;
  font-size: 35px;
}
*/

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

.row{
	padding-top: 130px;
}

/* Clear floats after the columns */
.medi_row:after {
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


/* 페이지이름 */
.part_title{
	padding: 50px;
	text-align: center;
	
	font-size: 30px;
	font-family: bold;
}

/* 내용부분(메인) */
.part_content{
	width: 100%;
	border-top: 3px solid #94ccc4;
}

/* 약품 목록 리스트 */

#mediImg{
	width: 250px;
	height: 130px;
}


.medi{
	margin: 5px;
	padding: 5px;
}

.title_img{
	display: inline-block;
}

.title_img img{
	border: 3px solid #94ccc4;
	float: left;
	width: 320px;
	margin-right: 20px;
}

.m_title{
	font: bold;
	font-size: 20px;
	margin-top: 5px;
}

.m_detail{
	border-top: 3px solid #94ccc4;
	padding: 20px;
	margin-top: 0px;
	font-size: 14px;
}

.bottom{
	text-align: center;
	padding-top: 40px;
}

#btn{
	width: 50px;
	height: 20px;
	border: none;
	border-radius: 6px;
	background-color: #94ccc4;
	margin-left: 5px;
}

.search{
	height: 40px;
	text-align: center;
	border-bottom: 3px solid #94ccc4;
}

#ser_css{
	padding-top: 6px;
}



/* 약품정보 테이블 */

#medi_table {
	display: table;
	width: 100%;
}

.medi_row {
	display: table-row;
}

.cell {
	display: table-cell;
	padding: 3px;
	border: 1px solid #DDD;
	vertical-align: middle;
}

.col1 { 
	width: 150px;
	text-align: center;
}
.col2 {
	width: 800px;
	padding-left: 20px;
}

#col_title{
	font-size: 16px;
	font: bold;
}

/*사이드바 start*/
.side_ul{
  float: right;
  list-style-type: none;
  margin: 0px;
  padding: 0px;
  padding-top: 20px;
  width: 200px;
  margin-right: 50px;
  color: #5D5D5D;
}

.side_ul > li {
    display: block;
    width: 200px;
    line-height: 50px;
    color: #111;
    font-size: 15px;
    border: 1px solid #ddd;
    font-weight: bold;
    font-family: 'noto-sans';
    text-align: center;
    color: #5D5D5D;
    
    
}

.leftTop {
    color: #94CCC4;	/* 각 페이지 색으로 지정*/
    font-family: 'noto-sans';
    text-align: center;
    margin-bottom: 10px;
}

.side_ul li a:hover,
.side_ul li a:focus {
	background-color:#94CCC4;	/* 각 페이지 색으로 지정*/
	width: 200px;
    line-height: 50px;
    display: block;
    color: #5D5D5D;
}   

.side_ul li a{
	text-decoration:none;
	color: #5D5D5D;
}


/*사이드바 end*/
</style>
<title>의약품목록</title>
</head>







<body>
<!-- Header Start -->
     <jsp:include page="/header.jsp"></jsp:include>
<!-- 	Header End -->


<div class="row">
	<!-- 양쪽 빈공간중에 왼쪽. 메뉴바 들어옴. -->
  <div class="column side">
  	<div>
  			<!-- sidebar -->
  	<div>
  		<ul class="side_ul">
  		<h1 style="font-size: 23px;" class="leftTop">고객 서비스</h1>		<!-- 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">증명서 발급 안내</a></li>			<!-- 서브 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="listTV.jsp">건강TV</a></li>
		  <li class="side_li"><a href="listMedicine.jsp">약품 정보</a></li>
		  <li class="side_li"><a href="">이달의 강좌</a></li>
		</ul>
  	</div>
  	
  	<!-- //sidebar -->
  	</div>
  </div>
  
  	<!-- 컨텐츠 -->
  <div class="column middle">
  
  <!-- 페이지의 이름. -->
  	<div class="part_title"> 
  		<p>의약품 정보</p>
  	</div>
  	
  	<!-- 페이지의 내용 -->
  	<div class="part_content"> 
  
  	<!-- 약품설명 -->
  		<div id="medi_table">
		<div class="medi_row">
		<span class="cell col1"><img id="mediImg" src="./mediImg/${m.medi_fname  }"></span>
		<span class="cell col2"><p id="col_title">${m.medi_name }</p></span>
		</div>
		<div class="medi_row">
		<span class="cell col1">설명</span>
		<span class="cell col2">${m.medi_detail }</span>
		</div>
		<div class="medi_row">
		<span class="cell col1">주의사항</span>
		<span class="cell col2">${m.caution}</span>
		</div>
		</div>
  	</div>
  	
  	<!-- 리스트번호 -->
	<div class="bottom">
		<button id="btn" style="cursor: pointer;" onclick="location.href='/listMedicine'">목록</button>
	</div>
  	
  </div>
  
  
  <div class="column side">
  </div>
</div>


     
   <!-- footer -->
   <jsp:include page="/footer.jsp"></jsp:include>
   <!-- //footer -->

</body>
</html>