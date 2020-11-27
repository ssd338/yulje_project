<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="./css/temp.css">
<link rel="stylesheet" href="./css/sidebar.css">
<style type="text/css">
.main {
	display: table;
	border-bottom: solid #94CCC4 1px;
	padding: 30px;
 	justify-content: center; 
 	display: flex; 
	color: #5d5d5d;
	font-family: '맑은 고딕';
	width: 100%;
	padding-left: 10%;
	padding-right: 10%;
}

.face {
	width: 150px;
	height: 200px;
}

.info li {
	list-style: none;
	padding-bottom: 5px;
	margin-bottom: 5px;
	display: table-row;
}
.info span {
	display: table-cell;
	width: 400px;
	padding-left: 50px;
}
.info strong {
	display: table-cell;
	margin-right: 30px;
}
.info button {
	float: right;
	margin: 5px;
	color: white;
	background-color: #94CCC4;
	border-radius: 3px;
	
 	border: none;
 	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 16px;
  	transition-duration: 0.4s;
  	cursor: pointer;
  	padding: 5px;
}
.info button:hover {
  background-color: white;
  color: #94CCC4;
}
.info div {
	border-bottom: solid 1px #CBE2B8;
	margin-bottom: 10px;
}

.title {
	border-bottom: solid 2px #94CCC4;
	padding: 5px;
	padding-bottom: 50px;
	text-align: center;
	margin-bottom: 0px;
	color: #5d5d5d;
}

.active {
	background: #f6f7dd;
}

.title span {
/* 	background-color: #94CCC4; */
	padding: 10px;
	text-align: center;
	margin-left: 30px;
}

.title button {
	margin: 5px;
	color: white;
	background-color: #CBE2B8;
	border-radius: 3px;
	
 	border: none;
 	justify-content: center;
	display: flex;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 15px;
  	transition-duration: 0.4s;
  	cursor: pointer;
  	padding: 5px;
}
.title button:hover {
  background-color: white;
  color: #5d5d5d;
}

.title input {
	height: 25px;
	text-align: center;
	color: #5d5d5d;
	border: solid 1px #CBE2B8;
}

.title strong {
	text-decoration: underline;
	color: #94CCC4;
}

#listbtn{
	float: right;
	margin: 5px;
	color: white;
	background-color: #94CCC4;
	border-radius: 3px;
	
 	border: none;
 	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 16px;
  	transition-duration: 0.4s;
  	cursor: pointer;
  	padding: 5px;
}

</style>
<title>율제대병원 의료진 목록</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
// 	var dlist = "${dlist}";
// 	var d = "${d}";
// 	alert(dlist);
// 	alert(d);
</script>
</head>
<body>
<!-- Header Start -->
     <jsp:include page="/header.jsp"></jsp:include>
<!-- 	Header End -->

<div class="row">
  <div class="column side">
  
  <!-- sidebar -->
  	<div>
  		<ul class="side_ul">
  		<h1 style="font-size: 23px;" class="leftTop">의료진/진료과</h1>		<!-- 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">진료과</a></li>			<!-- 서브 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="/listDoctor">의료진</a></li>
		  <li class="side_li"><a href="">의료과 검색</a></li>
		</ul>
  	</div>
  	
  	<!-- //sidebar -->
  
</div>
  <div class="column middle">
  	<div class="title">
  		<h1><strong>${d.major }</strong> 의료진목록</h1>
<!--   		<h1><strong> -->
<%--   		<c:out value="${d.major }"></c:out> --%>
<!--   		</strong> 의료진목록</h1> -->
  		<span>
  			<input type="search" size="50" placeholder="의료진 이름을 입력하세요.">
  			<button>의료진 검색</button>
  		</span>
  		
  	</div>

	<c:forEach var="doc" items="${dlist}">
	
	<div class="main">
		<span class="img"><img src="./docimage/${doc.doc_fname }" class="face"></span>
		<span class="info">
			<ul>
				<div><li><h2>${doc.doc_name }</h2></li></div>
				<li><strong>진료과</strong><span>${doc.major }</span></li>
				<li><strong>전문분야</strong><span>${doc.specialization }</span></li>
			</ul>
				<button>예약하기</button>
				<a href="/detailDoctor?doc_no=${doc.doc_no }">
				<button>상세보기</button>
				</a>
		</span>
	</div>
	
	</c:forEach>
	
	<a href="/listDept"><button id="listbtn">진료과 목록</button></a>

  	
  <div class="column side"></div>
</div>

<%-- <jsp:include page="/footer.jsp"></jsp:include> --%>
</body>
</html>