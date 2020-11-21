<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
	* {
	  box-sizing: border-box;
	  font-family: "맑은 고딕";
	}
	span {
		color : #5D5D5D;
	}

	.main_top {
		justify-content: center;
		display: flex;
		margin-top: 10px; 
	}
	
	#main_top1 {
		border: 1px solid #94CCC4;
		width: 200px;
		height: 200px;
		margin: 10px;
		text-align: center;
		padding-top: 15px;
	}
	
	#main_top1_btn{
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
	
	#top1_btn_1:hover{
		background-color: #ffffff;
		color: #94CCC4;
	}
	
	#main_top2 {
		border: 1px solid #94CCC4;
		width: 200px;
		height: 200px;
		margin: 10px;
		text-align: center;
		padding-top: 15px;
	}
	
	#main_top2_btn{
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
	
	#top2_btn_1:hover{
		background-color: #ffffff;
		color: #94CCC4;
	}
	
	#top1_span h2{
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
	
	#top2_btn_2:hover{
		background-color: #ffffff;
		color: #94CCC4;
	}
	
	#top2_span h2{
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
	
	#main_top3_text{
		padding: 1px;	
	}
	
	#top3_div_1 {
		color: #5D5D5D;
		margin-top: 15px;
	
	}
	
	#top3_div_2, #top3_div_3 {
		font-size: 12px;
		margin-top: 25px;
		color: #5D5D5D;
	}
	
	#top3_div_4 {
		padding-top: 15px;
	
	}
	
	#top3_btn_1{	
		border-radius: 5px;
		border: 1px solid #94CCC4;
		width: 50px;
		height: 28px;		
		background-color: #94CCC4;
		color: #ffffff;
	
	}
	
	#top3_btn_1:hover{
		background-color: #ffffff;
		color: #94CCC4;
	}
	
	#main_top3_img{
		padding-left:5px;
		padding-top: 26px;
	}
	
	/* under */
	.main_under {
		justify-content: center;
		display: flex; 	  
	}	
	
	#main_under1 {	
		border: 1px solid #94CCC4;
		width: 400px;
		height: 200px;
		margin: 10px;
		text-align: center;
		padding-top: 15px;	
	}
	
	#location h3 {
		margin: 0px;
	}
	
	#phone h3 {
		margin: 0px;	
	}
	
	#main_under1_btn{
		justify-content: center;
		display: flex;
	
	}
	
	#under1_btn_1 {
		border-radius: 10px;
		border: 1px solid #94CCC4;
		width: 100px;
		height: 35px;
		margin-right: 5px;
		margin-top: 13px;
		background-color: #94CCC4;
		color: #ffffff;
		
		
	}
	
	#under1_btn_1:hover{
		background-color: #ffffff;
		color: #94CCC4;
	}
	
	#under1_btn_2 {
		border-radius: 10px;
		border: 1px solid #94CCC4;
		width: 100px;
		height: 35px;
		margin-left: 5px;
		margin-top: 13px;
		background-color: #94CCC4;
		color: #ffffff;
		
	}
	
	#under1_btn_2:hover{
		background-color: #ffffff;
		color: #94CCC4;
	}
	
	#main_under2 {	
		border: 1px solid #94CCC4;
		width: 420px;
		height: 200px;
		margin: 10px;
		background-color: #ffffff;
		color: #94CCC4;		
	}
	
	#main_under2 div {	
		color: #5D5D5D;
	}
	
	#main_under2 h3 {
		padding-left: 10px;
	}
	
	#main_notice{
		width: 400px;
		height: 40px;
		justify-content: center;
		display: flex;
		padding-top : 15px;
		font-weight: bold;
	}
	
	#main_notice_detail{
		margin-top : 6px;
		margin-left : 8px;
		border-top: 1px solid gray;		
		width: 400px;
		height: 150px;
		display: inline-block;
		
	
	
	}
	
	#notice1{
		padding-right : 10px;
		padding-left : 7px;
		border-right: 3px solid gray; 
	
	}
	
		
	#notice2{
		padding-right : 10px;
		padding-left : 7px;
		border-right: 3px solid gray; 
	
	}
	
	#notice3{
		padding-right : 10px;
		padding-left : 7px;
		border-right: 3px solid gray;
	
	}
	
	#notice4{
		padding-left : 10px;
	
	}
	
	#notice1:hover, #notice2:hover, #notice3:hover, #notice4:hover{
		color : #94CCC4; 
	
	}
	
   	#container .column-side-left .column-side-right .column-middle{
	width: 1200px;
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

	/* 슬라이드 이미지 */
	
	.section input[id*="slide"] {
		display: none;
	}
	
	/* 슬라이드 영역 - max-width 크기를 조절해주면 됩니다*/
	.section .slidewrap {
		max-width: 1200px;
		margin: 0 auto;
		overflow: hidden;
		z-index: 5;
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
		z-index: 100px;
	}
	
	.section .slidelist .left {
		left: 30px;
		background: url('./mainimege/left.png') center center/100% no-repeat;
	}
	
	.section .slidelist .right {
		right: 30px;
		background: url('./mainimege/right.png') center center/100% no-repeat;
	}
	
	
	.section input[id="slide01"]:checked ~ .slidewrap .slidelist>li {
		transform: translateX(0%);
		z-index: 100px;
	}
	
	.section input[id="slide02"]:checked ~ .slidewrap .slidelist>li {
		transform: translateX(-100%);
		z-index: 100px;
	}
	
	.section input[id="slide03"]:checked ~ .slidewrap .slidelist>li {
		transform: translateX(-200%);
		z-index: 100px;
	}
		

	
	/* Clear floats after the columns */
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
	
	/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
	@media (max-width: 600px) {
	  .column.side, .column.middle {
	    width: 100%;
	  }  
	  
	}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="jquery-ui-1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="row">
	  <div class="column-side-left" style="background-color:#aaa;">Column</div>
	  
	  <!-- 메인 -->
	  <div id="container">
	  <div class="column-middle">
	  
	  <div class="section">
		<input type="radio" name="slide" id="slide01" checked>
		<input type="radio" name="slide" id="slide02">
		<input type="radio" name="slide" id="slide03">

		<div class="slidewrap"  style="text-align : center;">
			<ul class="slidelist">
				<li>
					<a>
						<label for="slide03" class="left"></label>
						<img src="./main_img/doctor01.png" height="400" width="350">
						<label for="slide02" class="right"></label>
					</a>
				</li>
				<li>
					<a>
						<label for="slide01" class="left"></label>
						<img src="./main_img/doctor02.png" height="400" width="350">
						<label for="slide03" class="right"></label>
					</a>
				</li>
				<li>
					<a>
						<label for="slide02" class="left"></label>
						<img src="./main_img/doctor03.png" height="400" width="350">
						<label for="slide01" class="right"></label>
					</a>
				</li>
			</ul>
		</div>
	</div>
	  
	  	<div class="main_top">
	  		
	  		<div id="main_top1">
	  		<span><img src="./img/reserve.png" width="60" height="60"></span>
	  		<span id="top1_span"><h2>진료 예약</h2></span>
	  			<div id="main_top1_btn">
	  				<button id="top1_btn_1"><a href="Reservation.jsp">예약 하기</a></button>
	  			</div>
	  		
	  		</div>
	  		<div id="main_top2">
	  		<span><img src="./img/certificate.png" width="55" height="55"></span>
	  		<span id="top2_span"><h2>동의서</h2></span>
	  		<span id="top2_span"><h2>위임장</h2></span>
	  			<div id="main_top2_btn">
	  			<button id="top2_btn_1">증명서안내</button>
	  			<button id="top2_btn_2">온라인신청</button>
	  		</div>
	  		</div>
	  		<div id="main_top3">
	  			<div id="main_top3_text">
		  			<div id="top3_div_1"><h2>의료진 찾기</h2></div>
		  			<div id="top3_div_2">율제대학교 의료진은</div>
		  			<div id="top3_div_3">환자를 위해 항상 노력하고 있습니다.</div>
		  			<div id="top3_div_4">
			  			<input type="text" name="main_search">
			  			<button id="top3_btn_1">검색</button>
	  				</div>
	  			</div>
	  			<div id="main_top3_img">
	  				<img src="./img/doctors.png" width="150" height="150">
	  			</div>	  			
	  		</div>		
	  		
	  	</div>
	  	
	  	<div class="main_under">
	  		<div id="main_under1">
	  		<span><img src="./img/phone.png" width="57" height="57"></span>
	  		<span id="location"><h3>율제대학교병원으로 </h3></span>
	  		<span id="phone"><h3>오시는 길을 안내 드립니다.</h3></span>
	  		<div id="main_under1_btn">
	  			<button id="under1_btn_1">위치안내</button>
	  			<button id="under1_btn_2">주차안내</button>
	  		</div>
	  		</div>
	  		<div id="main_under2">
	  			<div id="main_notice">
	  				<div id="notice1"><a href="listNotice.jsp">공지사항</a></div>
	  				<div id="notice2">건의게시판</div>
	  				<div id="notice3"><a href="detailCompliment.jsp">칭찬게시판</a></div>
	  				<div id="notice4">상담게시판</div>
	  			</div>
	  			<div id="main_notice_detail">
	  				
	  			</div>	  			
	  		</div>
	  		
	  		
		</div>
		</div>
	  	
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>