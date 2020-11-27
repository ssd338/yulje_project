<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

</style>
<title>율제대병원 의료진 목록</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function () {

function list(dept_no){ 
	$.ajax({
	    type : "POST",
	    url : "/listDoctor1",
	    data : {dept_no:dept_no},
	    dataType: "json",
	    success : function(data) {
		
		//타이틀
		var titlediv = $("<div></div>").addClass("title");
		var dept = $("<h1></h1>").html("<strong>"+strongtitle+"</strong> 의료진목록");
		var searchspan = $("<span></span>");
		var searchinput = $("<input>").attr("type", "search").attr("size", "50").attr("placeholder", "의료진 이름을 입력하세요");
		var searchbtn = $("<button>의료진 검색</button>");

		searchspan.append(searchinput);
		searchspan.append(searchbtn);

		titlediv.append(dept);
		titlediv.append(searchspan);

		$("#ajaxtest_output").append(titlediv);

		
		for(var doc of data){
			if(doc.dept_no==dept_no){
				console.log(doc.dept_no);
				//정보
				var div = $("<div></div").addClass("main");
				var imgspan = $("<span></span>");
				var img = $("<img>").attr("src", "./docimage/"+doc.doc_fname).addClass("face");
				imgspan.append(img);
				
				var infospan = $("<span></span>").addClass("info");

				var infoul = $("<ul></ul>");
				var namediv = $("<div></div>");
				var nameli = $("<li></li>").html("<h2>"+doc.doc_name+"</h2>");
				namediv.append(nameli);
				var majorli = $("<li></li>").html("<strong>진료과</strong>"+"<span>"+doc.major+"</span>");
				var specli = $("<li></li>").html("<strong>전문분야</strong>"+"<span>"+doc.specialization+"</span>");
				infoul.append(namediv);
				infoul.append(majorli);
				infoul.append(specli);
				
				var reserbtn = $("<button></button>").html("예약하기");
				
				var dlink = $("<a></a>").attr("href", "/detailDoctor?doc_no="+doc.doc_no);
				var detailbtn = $("<button>상세보기</button>").appendTo(dlink);

				infospan.append(infoul);
				infospan.append(reserbtn);
				infospan.append(dlink);
				
				div.append(imgspan);
				div.append(infospan);

				$("#ajaxtest_output").append(div);
			}
		} //전체반복끝
	}}) //ajax통신끝.
	} //함수끝

	list(dept_no);
	
	$("#ajaxtest_btn1").click(function(){
		$('#ajaxtest_output').empty(); //매 클릭시마다 중첩되지않게 한번씩 비워줌
		list(1);
	});
	
})


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
  <!-- 
  	<div class="title">
  		<h1><strong>호흡기 내과</strong> 의료진목록</h1>
  		<span>
	  		<input type="search" size="50" placeholder="의료진 이름을 입력하세요">
	  		<button>의료진 검색</button>
  		</span>
  	</div>
  	 -->
  	<div id="ajaxtest">
  		<div id="buttons">
  		<button id="ajaxtest_btn1">호흡기내과</button>
  		<button id="ajaxtest_btn2">순환기내과</button>
  		<button id="ajaxtest_btn3">소화기내과</button>
  		<button id="ajaxtest_btn4">알레르기내과</button>
  		<button id="ajaxtest_btn5">내과(일반)</button>
  		<button id="ajaxtest_btn6">간담췌외과</button>
  		<button id="ajaxtest_btn7">위장관외과</button>
  		<button id="ajaxtest_btn8">대장항문외과</button>
  		<button id="ajaxtest_btn9">이식혈관외과</button>
  		<button id="ajaxtest_btn10">외과(일반)</button>
  		<button id="ajaxtest_btn11">신경과</button>
  		<button id="ajaxtest_btn12">안과</button>
  		<button id="ajaxtest_btn13">정형외과</button>
  		<button id="ajaxtest_btn14">가정의학과</button>
  		<button id="ajaxtest_btn15">산부인과</button>
  		</div>
  		<div id="ajaxtest_output">
  		
  		</div>
  	</div>
  	<!-- 
  	<div class="main">
  	
  		<span class="img"><img alt="" src="./image/yu.jpg" class="face"></span>
  		<span class="info">
  			
  			<ul>
  				<div><li><h2>유철규</h2></li></div>
  				<li><strong>진료과</strong><span>호흡기내과</span></li>
				<li><strong>전문분야</strong><span>만성폐쇄성폐질환, 기관지확장증, 만성기침, 천식, 폐암, 폐암의증, 중환자관리, 기관지염, 폐렴</span></li>
			</ul>
				<button>예약하기</button>
				<a href="/detailDoctor?doc_no=1">
				<button>상세보기</button>
				</a>
  		</span>
  	</div>
  	<div class="main">
  		<span class="img"><img alt="" src="./image/im.jpg" class="face"></span>
  		<span class="info">
  			
  			<ul>
  				<div><li><h2>임재준</h2></li></div>
  				<li><strong>진료과</strong><span>호흡기내과</span></li>
				<li><strong>전문분야</strong><span>비결핵항산균증, 폐결핵</span></li>
			</ul>
				<button>예약하기</button><button>상세보기</button>
  		</span>
  	</div>
  	 -->
  	 <input type="hidden" id="dept_no" value="${re }">
  	 <input type="hidden" id="deptno" value="${deptno}" >
  <div class="column side"></div>
</div>

<%-- <jsp:include page="/footer.jsp"></jsp:include> --%>
</body>
</html>