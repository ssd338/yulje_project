<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	font-family: "맑은 고딕";
}

/* /*modal*/ */
/* .ow-overlay { */
/* 	position: fixed; */
/* 	z-index: 10; */
/* 	top: 0; */
/* 	left: 0; */
/* 	height: 100%; */
/* 	width: 100%; */
/* 	background: #424242; */
/* 	opacity: 0.8; */
/* } */

/* /* Default class for both hidden overlay and modal window */ */
/* .ow-closed { */
/* 	display: none; */
/* } */

/* /* Default class for modal window */ */
/* .modal { */
/* 	position: fixed; */
/* 	z-index: 20; */
/* 	height: 450px; */
/* 	left: 50%; */
/* 	top: 225px; */
/* 	width: 450px; */
/* 	background-color: #fff */
/* } */

.container {
	width: 450px;
	height: 450px;
	margin-top: 120px;
	padding: 0px;
	/*justify-content: center;
	display: flex;
	margin-top: 15px;
	border: 1px solid #bcbcbc;*/
}

#main_input_menu {
	font-size: 24px;
	font-weight: bold;
	text-align: center;
}

#main_input_detail {
	font-size: 14px;
	padding-top: 10px;
	text-align: center;
}

.board_input_info {
	width: 152px;
	height: 25px;
	border: 1px solid #D5D5D5;
}

#main_input_info {
	font-size: 14px;
	text-align: center;
	margin-top: 20px;
}

.main_btn {
	text-align: center;
}

.btn_delete {
	border-radius: 10px;
	width: 100px;
	height: 35px;
	border: 1px solid #ffffff;
	background-color: #94CCC4;
	color: #ffffff;
	font-weight: bold;
	margin-top: 50px;
}

.btn_list {
	border-radius: 10px;
	width: 100px;
	height: 35px;
	border: 1px solid #94CCC4;
	background-color: #ffffff;
	color: #94CCC4;
	font-weight: bold;
	margin-top: 50px;
}
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="OmniWindow-1.0.1/jquery.omniwindow.js"></script>
<script type="text/javascript">



$(function() {

	$(document).on("click",".bbb", function(){
		alert("안녕");


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
	$(".aaa").append(faq_div);
	})
	});
	
	
	
	


</script>
</head>
<body>
<button class="bbb">클리쿠</button>
	<div class="aaa"></div>

</body>
</html>