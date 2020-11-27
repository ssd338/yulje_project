<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://kit.fontawesome.com/eef195c997.js"
	crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>


.main_top A:LINK{

	text-decoration: none;
	color: #ffffff;
	
}

.main_top A:VISITED{

	text-decoration: none;
	color: #ffffff;
	
}

.main_top A:HOVER{
	color: #94CCC4;
}

* {
	box-sizing: border-box;
	font-family: "맑은 고딕";
}

span {
	color: #5D5D5D;
}

.main_top {
	justify-content: center;
	display: flex;
	margin-top: 10px;
	width: 1400px;
	/* 	text-align: center; */
	margin-left: 150px;
}

#main_top1 {
	border: 1px solid #94CCC4;
	width: 250px;
	height: 200px;
	margin: 10px;
	text-align: center;
	padding-top: 15px;
}

#main_top1_btn {
	justify-content: center;
	display: flex;
	margin-top: 26px;
}

#top1_btn_1 {
	border-radius: 10px;
	border: 1px solid #94CCC4;
	width: 100px;
	height: 35px;
	background-color: #94CCC4;
	color: #ffffff;
}

#top1_btn_1:hover {
	background-color: #ffffff;
	color: #94CCC4;
}

#main_top2 {
	border: 1px solid #94CCC4;
	width: 250px;
	height: 200px;
	margin: 10px;
	text-align: center;
	padding-top: 15px;
}

#main_top2_btn {
	justify-content: center;
	display: flex;
	margin-top: 10px;
}

#top2_btn_1 {
	border-radius: 10px;
	border: 1px solid #94CCC4;
	width: 85px;
	height: 35px;
	margin-bottom: 10px;
	background-color: #94CCC4;
	color: #ffffff;
	margin-right: 2px;
}

#top2_btn_1:hover {
	background-color: #ffffff;
	color: #94CCC4;
}

#top1_span h2 {
	margin: 8px;
}

#top2_btn_2 {
	border-radius: 10px;
	border: 1px solid #94CCC4;
	width: 85px;
	height: 35px;
	margin-bottom: 10px;
	background-color: #94CCC4;
	color: #ffffff;
	margin-left: 2px;
}

#top2_btn_2:hover {
	background-color: #ffffff;
	color: #94CCC4;
}

#top2_span h2 {
	margin: 0px;
}

#main_top3 {
	border: 1px solid #94CCC4;
	width: 400px;
	height: 200px;
	margin: 10px;
	justify-content: center;
	display: flex;
}

#main_top3_text {
	padding: 1px;
	width : 250px;
	margin-left: 10px;
	margin-top: 5px;
}

#top3_div_1 {
	color: #5D5D5D;
	margin-top: 15px;
}

#top3_div_2 {
	font-size: 12px;
	margin-top: 25px;
	color: #5D5D5D;
}


#top3_div_3{
	font-size: 12px;
	margin-top: 12px;
	margin-bottom:10px;
	color: #5D5D5D;
}

#top3_input{
	width: 152px;
	height: 25px;
	border: 1px solid #D5D5D5;

}

#top3_div_4 {
	padding-top: 15px;
}

#top3_btn_1 {
	border-radius: 5px;
	border: 1px solid #94CCC4;
	width: 50px;
	height: 28px;
	background-color: #94CCC4;
	color: #ffffff;
}

#top3_btn_1:hover {
	background-color: #ffffff;
	color: #94CCC4;
}

#main_top3_img {
	padding-left: 5px;
	padding-top: 26px;
}

#main_top4 {
	border: 1px solid #94CCC4;
	width: 450px;
	height: 200px;
	margin: 10px;
	text-align: center;
	padding-top: 15px;
}

#main_top4_btn {
	justify-content: center;
	display: flex;
}

#top4_btn_1 {
	border-radius: 10px;
	border: 1px solid #94CCC4;
	width: 100px;
	height: 35px;
	margin-right: 5px;
	margin-top: 13px;
	background-color: #94CCC4;
	color: #ffffff;
}

#top4_btn_1:hover {
	background-color: #ffffff;
	color: #94CCC4;
}

#top4_btn_2 {
	border-radius: 10px;
	border: 1px solid #94CCC4;
	width: 100px;
	height: 35px;
	margin-left: 5px;
	margin-top: 13px;
	background-color: #94CCC4;
	color: #ffffff;
}

#top4_btn_2:hover {
	background-color: #ffffff;
	color: #94CCC4;
}

#main_top5 {
	border: 1px solid #94CCC4;
	width: 250px;
	height: 200px;
	margin: 10px;
	text-align: center;
	padding-top: 2px;
}

#main_top5_btn {
	justify-content: center;
	display: flex;
	margin-top: 10px;
}

#top5_btn_1 {
	border-radius: 10px;
	border: 1px solid #94CCC4;
	width: 100px;
	height: 50px;
	background-color: #94CCC4;
	color: #ffffff;
}

#top5_btn_1:hover {
	background-color: #ffffff;
	color: #94CCC4;
}

#top5_span {
	font-weight: bold;
	font-size: 13px;
	
}

/* under */
.main_under {
	justify-content: center;
	/* 	display: flex; */
	width: 1400px;
	text-align: center;
	margin-left: 150px;
}

.main_under1_1 {
	justify-content: center;
	text-align: center;
	display: flex;
	width: 1400px;
	text-align: center;
}

#location h3 {
	margin: 0px;
}

#phone h3 {
	margin: 0px;
}

#main_notice {
	width: 1200px;
	height: 40px;
	justify-content: center;
	display: flex;
	padding-top: 15px;
	font-weight: bold;
	margin: 30px;
}

#main_notice_detail {
	margin-top: 6px;
	margin-left: 8px;
	border-top: 1px solid gray;
	width: 400px;
	height: 150px;
	display: inline-block;
}

#board1 {
	padding-left: 100px; padding-right : 100px;
	border-right: 3px solid gray;
	padding-right: 100px;
}

#board2 {
	border-right: 3px solid gray; padding-left : 100px;
	padding-right: 100px;
	padding-left: 100px;
}

#board3 {
	padding-left: 100px; padding-right : 100px;
	border-right: 3px solid gray;
	padding-right: 100px;
}

#board4 {
	padding-left: 100px;
	padding-right: 100px;
}

#board1:hover, #board2:hover, #board3:hover, #board4:hover {
	color: #94CCC4;
}

#container .column-side-left .column-side-right .column-middle {
	width: 1400px;
	margin: 0px auto;
	padding: 20px;
	justify-content: center;
	display: flex;
	/*border: 1px solid #bcbcbc;*/
}

body {
	
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
#column-side-left {
	width: 160px;
	padding: 20px;
	margin-right: 20px;
	position: relative;
	/*border: 1px solid #bcbcbc;*/
}

#column-side-right {
	width: 160px;
	padding: 20px;
	margin-bottom: 20px;
	position: relative;
	/*border: 1px solid #bcbcbc;*/
}

/* Middle column */
.column-middle {
	width: 880px;
	margin: 20px auto;
	position: relative;
	margin-top: 120px;
}

.section{
	margin-left: -20px;
}

/* 슬라이드 이미지 */
.section input[id*="slide"] {
	display: none;
}

/* 슬라이드 영역 - max-width 크기를 조절해주면 됩니다*/
.section .slidewrap {
	max-width: 1200px;
/* 	margin: 0 auto; */
	overflow: hidden;
	z-index: 5;
	width: 105%;
/* 	margin-right: 100px; */
}

.section .slidelist {
	white-space: nowrap;
	font-size: 0;
}

.section .slidelist>li {
	display: inline-block;
	vertical-align: middle;
	width: 100%;
	transition: all .5s;
}

.section .slidelist>li>a {
	display: block;
	position: relative;
}

.section .slidelist>li>a img {
	width: 100%;
}

.section .slidelist label {
	position: absolute;
	z-index: 1;
	top: 50%;
	transform: translateY(-50%);
	padding: 50px;
	cursor: pointer;
}

.section .slidelist .left {
	left: 30px;
	background: url('./main_img/left.png') center center/100% no-repeat;
}

.section .slidelist .right {
	right: 30px;
	background: url('./main_img/right.png') center center/100% no-repeat;
}

.section input[id="slide01"]:checked ~ .slidewrap .slidelist>li {
	transform: translateX(0%);
}

.section input[id="slide02"]:checked ~ .slidewrap .slidelist>li {
	transform: translateX(-100%);
}

.section input[id="slide03"]:checked ~ .slidewrap .slidelist>li {
	transform: translateX(-200%);
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}




/*ajax 게시판*/

/*faq 게시판*/
.faq_menu {
	display: flex;
	text-align: center;
	width: 950px;
	padding-left: 21px;
}

.faq_bottom_menu {
	border: 1px solid #D5D5D5;
	width: 180px;
	height: 50px;
	line-height: 50px;
	background-color: white;
	outline: 0;
}

.faq_bottom_menu:hover {
	color: #ffffff;
	background-color: #94CCC4;
}

#search_form {
	text-align: right;
	width: 920px;
}

.search_btn {
	border-radius: 5px;
	width: 60px;
	height: 30px;
	border: 1px solid #94CCC4;
	background-color: #94CCC4;
	color: white;
	font-weight: bold;
	outline: 0;
}

.insert_btn {
	border-radius: 5px;
	width: 60px;
	height: 30px;
	border: 1px solid #D5D5D5;
	background-color: white;
	color: black;
}

#search_input_form {
	width: 200px;
	height: 30px;
	border: 1px solid #D5D5D5;

}

.main_under_menu{
	margin-left: 228px;
}


.main_under_board {
	margin: 10px;
	border-top: 1.5px solid #94CCC4;
	border-bottom: 1.5px solid #94CCC4;
	padding: 10px;
	width: 900px;
	margin-left: 250px;
}
.main_under_board label {
	width: 900px;
	line-height: 50px;
	/* 	padding: 10px; */
	height: 70px;
}

input[id*="answer"] {
	display: none;
}

input[id*="answer"]+label {
	display: block;
	/* 	margin: 5px; */
	height: 50px;
	/* 	border: 1px solid cadetblue; */
	border-bottom: 0;
	color: black;
	background-color: white;
	cursor: pointer;
	position: relative;
	border-bottom: 1px solid #D5D5D5;
	/* 	border-top: 1px solid #94CCC4; */
}

/*    input[id*="answer"] + label em { */
/*       position: absolute; */
/*       top: 50%; */
/*       right: 10px; */
/*       width: 30px; */
/*       height: 30px; */
/*       margin-top: -15px; */
/*       display: inline-block;  */
/*    } */
input[id*="answer"]+label+div {
	max-height: 0;
	transition: all .35s;
	overflow: hidden;
	color: #5D5D5D;
	background: #EAEAEA;
	font-size: 11px;
	line-height: 50%;
	font-weight: bold;
}

input[id*="answer"]+label+div p {
	display: inline-block;
	/* 	padding: 20px; */
	font-size: 14px;
	line-height: 23px;
}

input[id*="answer"]:checked+label+div {
	max-height: 100px;
	background-position: 0 -30px;
	width: 900px;

	/* 	margin-left: 5px; */
}


/*advice, good 게시판*/


.main_under_board table {
	border-collapse: collapse;
	width: 850px;
}

.main_under_board th {
	font-weight: bold;
	border-bottom: 1.4px solid #747474;
	padding-bottom: 5px;
	font-size: 14px;
}

.main_under_board td {
	padding: 8px;
	text-align: center;
	border-bottom: 1px solid #94ccc4;
	font-size: 14px;
}

#td_no {
	width: 65px;
}

#td_dept {
	width: 110px;
}

#td_title {
	width: 400px;
}

#td_writer {
	width: 110px;
}

#td_regdate {
	width: 110px;
}


/*notice 게시판*/

#tdn_no{
	width: 65px;
}

#tdn_dept{
	width: 110px;
}


#tdn_title{
	width: 400px;
}


#tdn_hit{
	width: 110px;
}


#tdn_regdate{
	width: 110px;
}


/*ajax 끝!!!!!!*/

/* Style the footer */
/*
	.footer {
	  background-color: #f1f1f1;
	  padding: 10px;
	  text-align: center;
	}
	*/

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media ( max-width : 600px) {
	.column.side, .column.middle {
		width: 100%;
	}
}



</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

$(function(){
	var category = "%";
	var dept_name = "%";
// 	alert(category);
// 	getFaq(category);
// 	getAdvice(dept_name);
// 	getGood();
	getNotice();
	
	//FAQ게시판 ajax	
	$(document).on("click", "#board4",function(){
// 		alert("FAQ");
		$(".main_under_menu").empty();
		$(".main_under_board").empty();
		getFaq(category);
		})
		
	//공지사항
	$(document).on("click", "#board1", function(){
		$(".main_under_menu").empty();
		$(".main_under_board").empty();
// 		alert("공지사항");
		getNotice();

		});

	//칭찬게시판	
	$(document).on("click", "#board2", function(){
// 		alert("칭찬게시판");
		$(".main_under_menu").empty();
		$(".main_under_board").empty();
		getGood();
		});
	
	//상담게시판 	
	$(document).on("click", "#board3", function(){
		$(".main_under_menu").empty();
		$(".main_under_board").empty();
// 		alert("상담게시판");
		getAdvice(dept_name);
		
		
		});
		
		
	$(document).on("click",".faq_bottom_menu", function(){
		category = $(this).attr("value");
// 				$(faq_div).empty();
		getFaq(category);
		
		})
		
	function getAdvice(dept_name){
		$.ajax({
			url : "/listA_Board.do",
			method : "POST",
			dateType : "json",
			data : {
				dept_name : dept_name
				},
			success : function(data){
// 				alert(data);
// 				alert(dept_name);
					
					
					var table_advice = $("<table></table>");

					var table_menu_thead = $("<thead></thead>");
					var table_menu_tr = $("<tr></tr>");
					var table_menu_th1 = $("<th></th>").html("글번호").attr("id","td_no");
					var table_menu_th2 = $("<th></th>").html("진료과").attr("id","td_dept");
					var table_menu_th3 = $("<th></th>").html("글제목").attr("id","td_title");
					var table_menu_th5 = $("<th></th>").html("등록일").attr("id","td_regdate");
					var table_menu_th4 = $("<th></th>").html("작성자").attr("id","td_writer");

					$(table_menu_tr).append(table_menu_th1,table_menu_th2,table_menu_th3,table_menu_th4,table_menu_th5);
					$(table_menu_thead).append(table_menu_tr);
					$(table_advice).append(table_menu_thead);
					
				for( var a in data){

// 					alert(data[a].no);

					// level 코드
// 					var level = eval(data[a].b_level); // b_level을 int로 타입캐스팅
// 					var title  = "";
					//alert(level);

// 					if(level > 0){
// 						for(var i = 0; i < level; i++){
// 							title +="&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp";
// 							}
// 						}
// 					title += data[a].title;
					
					// level 코드 끝

					
					var table_tbody = $("<tbody></tbody>");
					var table_tr = $("<tr></tr>");
					var table_td1 = $("<td></td>").html(data[a].no);
					var table_td2 = $("<td></td>").html(data[a].dept_name);
					var table_td3_a = $("<a></a>").html(data[a].title).attr("href","detailA_Board.do?no="+data[a].no);
					var table_td3 = $("<td></td>");
					var table_td4 = $("<td></td>").html(data[a].writer);
					var table_td5 = $("<td></td>").html(data[a].regdate);
					
					$(table_td3).append(table_td3_a);
					$(table_tr).append(table_td1,table_td2,table_td3,table_td4,table_td5);
					$(table_tbody).append(table_tr);
					$(table_advice).append(table_tbody);
	
					
					$(".main_under_board").append(table_advice);


			
			}
		}
	})
	}
		
	
	function getGood(){
		$.ajax({
			url : "/listGood.do",
			dateType : "json",
			success : function(data){
// 				alert(data);

				var table_good = $("<table></table>");

				var table_menu_thead = $("<thead></thead>");
				var table_menu_tr = $("<tr></tr>");
				var table_menu_th1 = $("<th></th>").html("글번호").attr("id","td_no");
				var table_menu_th2 = $("<th></th>").html("진료과").attr("id","td_dept");
				var table_menu_th3 = $("<th></th>").html("글제목").attr("id","td_title");
				var table_menu_th5 = $("<th></th>").html("작성자").attr("id","td_writer");
				var table_menu_th4 = $("<th></th>").html("등록일").attr("id","td_regdate");

				$(table_menu_tr).append(table_menu_th1,table_menu_th2,table_menu_th3,table_menu_th4,table_menu_th5);
				$(table_menu_thead).append(table_menu_tr);
				$(table_good).append(table_menu_thead);

				for( var g in data){

					var table_tbody = $("<tbody></tbody>");
					var table_tr = $("<tr></tr>");
					var table_td1 = $("<td></td>").html(data[g].no);
					var table_td2 = $("<td></td>").html(data[g].dept_name);
					var table_td3_g = $("<a></a>").html(data[g].title).attr("href","detailG_Board.do?no="+data[g].no);
					var table_td3 = $("<td></td>");
					var table_td4 = $("<td></td>").html(data[g].writer);
					var table_td5 = $("<td></td>").html(data[g].regdate);
					
					$(table_td3).append(table_td3_g);
					$(table_tr).append(table_td1,table_td2,table_td3,table_td4,table_td5);
					$(table_tbody).append(table_tr);
					$(table_good).append(table_tbody);
	
					
					$(".main_under_board").append(table_good);
					
					}

				}

			})

		}
	
	function getNotice(){
		$.ajax({
			url : "/listNotice.do",
			dateType: "json",
			success : function(data){
// 				alert(data);


				var table_notice = $("<table></table>");

				var table_menu_thead = $("<thead></thead>");
				var table_menu_tr = $("<tr></tr>");
				var table_menu_th1 = $("<th></th>").html("글번호").attr("id","tdn_no");
				var table_menu_th2 = $("<th></th>").html("글제목").attr("id","tdn_title");
				var table_menu_th3 = $("<th></th>").html("조회수").attr("id","tdn_hit");
				var table_menu_th4 = $("<th></th>").html("등록일").attr("id","tdn_regdate");

				$(table_menu_tr).append(table_menu_th1,table_menu_th2,table_menu_th3,table_menu_th4);
				$(table_menu_thead).append(table_menu_tr);
				$(table_notice).append(table_menu_thead);

				for( var n in data){

					var table_tbody = $("<tbody></tbody>");
					var table_tr = $("<tr></tr>");
					var table_td1 = $("<td></td>").html(data[n].no);
					var table_td2_a = $("<a></a>").html(data[n].title).attr("href","detailNotice?no="+data[n].no);
					var table_td2 = $("<td></td>");
					var table_td3 = $("<td></td>").html(data[n].hit);
					var table_td4 = $("<td></td>").html(data[n].regdate);
					
					$(table_td2).append(table_td2_a);
					$(table_tr).append(table_td1,table_td2,table_td3,table_td4);
					$(table_tbody).append(table_tr);
					$(table_notice).append(table_tbody);
	
					
					$(".main_under_board").append(table_notice);
					
					}
				

				}


			})

		}



	function getFaq(category){

		$.ajax({

			url : "/listFaq.do",
			dateType : "json",
			data : {
				category : category

				},
			success : function(data){
				var faq_div = $("<div></div>").addClass("faq_menu");
				var faq_btn1= $("<button></button>").attr({"name":"category", "value":"%"}).html("전체").addClass("faq_bottom_menu");
				var faq_btn2= $("<button></button>").attr({"name":"category", "value":"외래"}).html("외래").addClass("faq_bottom_menu");
				var faq_btn3= $("<button></button>").attr({"name":"category", "value":"입원"}).html("입원").addClass("faq_bottom_menu");
				var faq_btn4= $("<button></button>").attr({"name":"category", "value":"제증명"}).html("제증명").addClass("faq_bottom_menu");
				var faq_btn5= $("<button></button>").attr({"name":"category", "value":"기타"}).html("기타").addClass("faq_bottom_menu");
				
				$(faq_div).append(faq_btn1);
				$(faq_div).append(faq_btn2);
				$(faq_div).append(faq_btn3);
				$(faq_div).append(faq_btn4);
				$(faq_div).append(faq_btn5);
				$(".main_under_menu").html(""); //클릭시 main_under_menu를 리셋 empty,clear둘다 안먹음
				$(".main_under_menu").append(faq_div);
				
				
// 				alert(data);
				let content = "";
				for (var j = 0; j < data.length; j++) {
					content += '<input type="radio" name="accordion" id="answer'+j+'">\<label for="answer'+j+'">'
					+ data[j].title
					+ '</label><div><p>'
					+ data[j].content + '</p></div>';

		}
				
				document.getElementById("underboard").innerHTML = content;
				

				}
			})
		}
		
})

	
</script>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="row">
		<div class="column-side-left" style="background-color: #aaa;">Column</div>

		<!-- 메인 -->
		<div id="container">
			<div class="column-middle">

				<div class="section">
					<input type="radio" name="slide" id="slide01" checked> <input
						type="radio" name="slide" id="slide02"> <input
						type="radio" name="slide" id="slide03">

					<div class="slidewrap" style="text-align: center;">
						<ul class="slidelist">
							<li><a> <label for="slide03" class="left"></label> <img
									src="./main_img/doctor01.png" height="590"> <label
									for="slide02" class="right"></label>
							</a></li>
							<li><a> <label for="slide01" class="left"></label> <img
									src="./main_img/doctor02.png" height="590"> <label
									for="slide03" class="right"></label>
							</a></li>
							<li><a> <label for="slide02" class="left"></label> <img
									src="./main_img/doctor03.png" height="590" > <label
									for="slide01" class="right"></label>
							</a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="main_top">

				<div id="main_top1">
					<span><img src="./img/reserve.png" width="60" height="60"></span>
					<span id="top1_span"><h2>진료 예약</h2></span>
					<div id="main_top1_btn">
						<button id="top1_btn_1">예약 하기</button>
					</div>

				</div>
				<div id="main_top2">
					<span><img src="./img/certificate.png" width="55"
						height="55"></span> <span id="top2_span"><h2>동의서</h2></span> <span
						id="top2_span"><h2>위임장</h2></span>
					<div id="main_top2_btn">
						<button id="top2_btn_1">증명서안내</button>
						<button id="top2_btn_2">온라인신청</button>
					</div>
				</div>
				<div id="main_top3">
					<div id="main_top3_text">
						<div id="top3_div_1">
							<h2>의료진 찾기</h2>
						</div>
						<div id="top3_div_2">율제대학교 의료진은</div>
						<div id="top3_div_3">환자를 위해 항상 노력하고 있습니다.</div>
						<div id="top3_div_4">
							<input type="text" name="main_search" id="top3_input">
							<button id="top3_btn_1">검색</button>
						</div>
					</div>
					<div id="main_top3_img">
						<img src="./img/doctors.png" width="150" height="150">
					</div>
				</div>
				<div id="main_top4">
					<span><img src="./img/phone.png" width="57" height="57"></span>
					<span id="location"><h3>율제대학교병원으로</h3></span> <span id="phone"><h3>오시는
							길을 안내 드립니다.</h3></span>
					<div id="main_top4_btn">
						<button id="top4_btn_1">위치안내</button>
						<button id="top4_btn_2">주차안내</button>
					</div>


				</div>

				<div id="main_top5">
					<span><img src="./img/covid.png" width="57" height="57"></span>
					<br>
					<span id="top5_span">율제병원</span><br>
					<span id="top5_span">코로나-19</span><br>
					<span id="top5_span">대응시스템</span>
					<div id="main_top5_btn">
						<button id="top5_btn_1"><a href="http://ncov.mohw.go.kr/" target="_blank">홈페이지<br> 바로가기>></a></button>
					</div>

				</div>
			</div>
			<br><br>
			<br>
			<br>
			<br>
			<div class="main_under">

				<h2>병원 소식</h2>
				<br> 율제 병원의 최신 소식을 전해 드립니다.
				<br>
				<br>
				<br>
				<hr>


				<div class="main_under1">

					<div class="main_under1_1">

						<div id="main_notice">
							<div id="board1">공지사항</div>
							<div id="board2">칭찬게시판</div>
							<div id="board3">상담게시판</div>
							<div id="board4">FAQ</div>
						</div>
					</div>
					
				</div>
				<div class="main_under_menu"></div>
				<div class="main_under_board" id="underboard">
				
				
				</div>
				<br>
				<br>
				<br>
				<br>
				<br>
				<h2>오시는 길</h2>
				<br>
				 <div class="map">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.
      1103800594706!2d126.93563751468302!3d37.552463132692885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.
      1!3m3!1m2!1s0x357c98be0a2cf6e3%3A0x4d8963de2196f6dc!
      2z7ISc7Jq47Yq567OE7IucIOuniO2PrOq1rCDrjIDtnaXrj5kg67Cx67KU66GcIDIz!5e0!3m2!1sko!2skr!4v1601211189306!5m2!1sko!2skr" 
      width="1200" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"
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
				

			</div>
			<div>
			
			
			</div>

			<jsp:include page="footer1.jsp"></jsp:include>
</body>
</html>