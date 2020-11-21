<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
	* {
	  box-sizing: border-box;
	  font-family: "맑은 고딕";
	}
	
	.mypage_menu{
		margin :0px;
		padding :0px;
		width: 819px;	
		height: 800px;
		border: 1px solid #EAEAEA;
		z-index: 5px;
		margin-top: 200px;
	
	}
	
	
	
	.mypage_top{
		text-align : center;
		justify-content: center;
		display: flex;
		z-index: 4px;
		border-top : 4px solid #5D5D5D;
	
	}
	.mypage_top div{
		color: #747474;
		font-size: 14px;
		z-index: 2px;
		font-weight: bold;
	}
	
	
	
	#top_menu_1{
		border: 1px solid #94CCC4;
		border-top : 6px solid #5D5D5D;
		width: 273px;
		height: 45px;
		z-index: 0px;
	}
	
	#top_menu_1 p{
		margin: 0px;
		margin-top: 10px;
	}
	
	#top_menu_2{
		
		border: 1px solid #94CCC4;
		border-top : 6px solid #5D5D5D;
		width: 273px;
		height: 45px;
		z-index: 0px;
	}
	#top_menu_2 p{
		margin: 0px;
		margin-top: 10px;
	}
	
	#top_menu_3{
		
		border: 1px solid #94CCC4;
		border-top : 6px solid #5D5D5D;
		width: 273px;
		height: 45px;
		z-index: 0px;
	}
	#top_menu_3 p{
		margin: 0px;
		margin-top: 10px;
	}
	
	#top_menu_1:hover{
		color: #ffffff;
		background-color: #94CCC4;
	}
	
	#top_menu_2:hover{
		color: #ffffff;
		background-color: #94CCC4;
	}
	
	#top_menu_3:hover{
		color: #ffffff;
		background-color: #94CCC4;
	}
	
	
	.mypage_under{
		text-align : center;
		justify-content: center;
		display: flex;
	
	}
	
	.mypage_under div{
		color: #747474;
		font-size: 14px;
		font-weight: bold;
	}
	
	#under_menu_1{
		margin : 0px;
		padding-top: 10px;
		border: 1px solid #94CCC4;
		width: 273px;
		height: 45px;
	}
	
	#under_menu_2{
		margin : 0px;
		padding-top: 10px;
		border: 1px solid #94CCC4;
		width: 273px;
		height: 45px;
	}
	
	#under_menu_3{
		margin : 0px;
		padding-top: 10px;
		border: 1px solid #94CCC4;
		width: 273px;
		height: 45px;
	}
	
	#under_menu_1:hover{
		color: #ffffff;
		background-color: #94CCC4;
	}
	
	#under_menu_2:hover{
		color: #ffffff;
		background-color: #94CCC4;
	}
	
	#under_menu_3:hover{
		color: #ffffff;
		background-color: #94CCC4;
	}
	
	.mypage_title{
		text-align: center;
		height: 80px;
		padding-top: 20px;
		
	
	}
	
	.mypage_box{
		width: 816px;
		height: 100px;
		background-color: #FCF8F2;
		z-index: 0px;
		padding-top: 5px;
		text-align: center;
		padding-top: 33px;
	}
	
	.mypage_box span{
		color: #747474;
		font-weight: bold;
		font-size: 20px;
		
	}
	
	.mypage_answer{
		justify-content: center;
		display: flex;
		margin-left: 533px;
		margin-top: 15px;
		color: #94CCC4;
		font-weight: bold;
	}
	
	#mypage_box_empty{
		height: 25px;
		border-right: 2px solid #EAEAEA;
		margin-left: 10px;
		margin-right: 10px;
	
	}
	
	.mypage_qna_notice{
		border: 1px solid #EAEAEA;
		width: 750px;
		height: 470px;
		margin-left: 26px;
		margin-top: 30px;
		border-top: 3px solid #94CCC4;
		text-align: center;
		
	}
	
	.mypage_qna_notice img{
		margin-top: 165px;
	}
	
	#mypage_qna_notice_btn{
		margin-left: 638px;
	}
	
	#mypage_qna_notice_btn1{
		border-radius: 10px;
		width: 150px;
		height: 35px;
		border: 1px solid #94CCC4;
		background-color: #94CCC4;
		color: #ffffff;
		font-weight: bold;
		margin-top: 17px;
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
	
	a{
		text-decoration: none;
	}
	
	/* Style the header */
	/*.header {
	  background-color: #f1f1f1;
	  padding: 30px;
	  text-align: center;
	  font-size: 35px;
	}*/
	
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
	float: left;
	/*border: 1px solid #bcbcbc;*/
	}
	
	#column-side-right {
	width: 160px;
	padding: 20px;
	margin-bottom: 20px;	 
	position: relative;
	float: left;
	/*border: 1px solid #bcbcbc;*/
	}
	
	/* Middle column */
	.column-middle {
	width: 880px;
	margin: 20px auto;
	 
	position: relative;
	

	}	


	
	/* Clear floats after the columns */
	.row:after {
	  content: "";
	  display: table;
	  clear: both;
	}
	
	/* Style the footer */
	.footer {
	  background-color: #f1f1f1;
	  padding: 10px;
	  text-align: center;
	}
	
	/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
	@media (max-width: 600px) {
	  .column.side, .column.middle {
	    width: 100%;
	  }  
	  
	}
</style>
</head>
<body>

	
	<jsp:include page="header.jsp"></jsp:include>
	

	<div class="column-side-left" style="background-color:#aaa;">Column</div>
	  
	  <!-- 메인 -->
	<div id="container">
	<div class="column-middle">
		<div class="mypage_menu">
			<div class="mypage_top">
				<a href="/myPage_1"><div id="top_menu_1"><p>나의 차트</p></div></a>
		 		<a href="/myPage_2"><div id="top_menu_2"><p>개인정보</p></div></a>
		  		<a href="/myPage_4"><div id="top_menu_3"><p>진료 예약 현황</p></div></a>
		  	</div>
		  	
		  	<div class="mypage_under">
				<a href="/myPage_5"><div id="under_menu_1"><p>1:1 상담내역</p></div></a>
		 		<div id="under_menu_2"><p>인터넷증명서 발급</p></div>
		  		<a href="/myPage_6"><div id="under_menu_3"><p>강좌신청내역</p></div></a>
		  	</div>
		  	
		  	<div class="mypage_detail">
		  		
		  		<div class="mypage_title">
		  			<h2>강좌신청내역</h2>
		  		</div>
		  		<div class="mypage_box">
		  			<span>${name } 님</span> <span>[0]건의 건강강좌가 신청되어 있습니다.</span>
		  		</div>
		  		
		  		<div class="mypage_qna_notice">
		  			<img src="./img/answer.png" width="65" height="65"><br>
		  			강좌신청 내역이 없습니다.
		  		
		  		</div>
		  		
		  		  	
		  	</div>
		  		
		  	
	  	</div>
	  		
	</div>
	</div>
	  	
	
	
	<jsp:include page="footer1.jsp"></jsp:include>

	

</body>
</html>