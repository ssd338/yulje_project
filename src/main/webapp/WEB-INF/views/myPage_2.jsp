<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
	#mypage_title{
		text-align: center;
		height: 80px;
		padding-top: 20px;
		
			
	}
	
	#mypage_box{
		width: 816px;
		height: 80px;
		background-color: #FCF8F2;
		z-index: 0px;
		text-align: center; 
		display: flex;
		justify-content: center;
		padding-top: 25px;
		   
   }
   
   #mypage_box_div1{				
		height: 30px;
		width: 150px;
		text-align: center;
		color : #94CCC4;
     	font-weight: bold;
     	border-bottom: 3px solid #94CCC4;
		
   }
   
   #mypage_box_div2{				
		height: 30px;
		width: 150px;
		color: #5D5D5D;
		text-align: center;
   }
   
   #mypage_box_empty{
		height: 30px;
		border-right: 2px solid #EAEAEA;
		margin-left: 10px;
		margin-right: 10px;
   
   }
   
   #mypage_box_div1:hover{
		color : #94CCC4;
     	font-weight: bold;
     	border-bottom: 3px solid #94CCC4;
   }
   
   #mypage_box_div2:hover{
		color : #94CCC4;
     	font-weight: bold;
     	border-bottom: 3px solid #94CCC4;
   }
   
   
		
	.mypage_detail_under{
		width: 817px;
		margin-left: 26px;
		margin-top: 1px;
		
	}
	
	
	#mypage_title_sub{
		width: 760px;
		height: 280px;
		border: 1px solid #EAEAEA;
		border-top: 3px solid #94CCC4;
		border-bottom: 3px solid #94CCC4;
	}
	
	#mypage_title_sub h3{
		text-align: center;
		color: #5D5D5D;
		font-weight: bold;
		padding-top: 55px;
		padding-bottom: 30px;
	
	}
	
	#mypage_title_sub_span1{
		margin-left: 250px;
		color: #5D5D5D;
		
		
			
	}
	
	#mypage_title_sub_span2{
		margin-left: 80px;
		color: #5D5D5D;
			
	}
	
	#mypage_title_sub_span3{
		margin-left: 250px;
		color: #5D5D5D;
			
	}
	
	.pw_input{
		width: 200px;
		height: 40px;
		border: 1px solid #EAEAEA;
	}
	
	#mypage_title_btn{
		text-align: center;
		width: 760px;
		height: 150px;
	}
	
	#mypage_title_btn1{
		border-radius: 10px;
		width: 150px;
		height: 35px;
		border: 1px solid #94CCC4;
		background-color: #94CCC4;
		color: #ffffff;
		font-weight: bold;
		margin-top: 55px;
	}
	
	#mypage_title_btn2{
		border-radius: 10px;
		width: 150px;
		height: 35px;
		border: 1px solid #94CCC4;
		background-color: #ffffff;
		color: #94CCC4;
		font-weight: bold;
		margin-top: 55px;
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
	.swal-button 
   {
   background-color: #94CCC4;
   font-size: 12px;
   text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.3);
   }   
</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	
	//확인 버튼을 누르면
	$("#mypage_title_btn1").click(function(){
		var id = $("#id").val()
		var pwd = $("#pwd").val()

		$.ajax({	
			url: "/checkPwd.ajax",
			method: 'POST',
			data: {id:id, pwd:pwd},	
			async : false,						
			success: function(data) {					// 돌려받은 데이터는 맵
				var num = data
			    if(num !== "1"){	
			    	swal("","입력하신 비밀번호는 잘못된 비밀번호입니다.","warning")
			    	return false
			    	
			    }else{
			    	window.location.href = "/myPage_7";
				}
			}
		});
	})	
})

</script>
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
			  	<div id="mypage_box">
	                <a href="/myPage_2"> <div id="mypage_box_div1">개인정보수정</div></a>
	                 <div id="mypage_box_empty"></div>
	                  <a href="/myPage_3"><div id="mypage_box_div2">비밀번호 변경</div></a>
	              </div>
		  		<div id="mypage_title">
		  			<h2>개인정보수정</h2>
		  		</div>
		  	<div class="mypage_detail_under">
		  		<div id="mypage_title_sub">

		  			<h3>개인정보를 안전하게 보호하기 위해 비밀번호를 재확인 합니다.</h3>
		  			<input type="hidden" name="member_no" value="${m.member_no }">
		  			<span id="mypage_title_sub_span1">아이디</span>
		  			<input type="hidden" id="id" name="id" value="${m.id }">
		  			<span id="mypage_title_sub_span2"> ${m.id } </span><br><br>
		  			<span id="mypage_title_sub_span3">비밀번호</span>
		  			<span><input type="text" class="pw_input" id="pwd" name="pwd"></span>
		  		</div>
		  		<div id="mypage_title_btn">
		  			<input type="submit" id="mypage_title_btn1" value="확인">

		  			<button id="mypage_title_btn2">취소</button>
		  		</div>
		  		  	
		  	</div>
		  	</div>	
		  	
	  	</div>
	  		
	</div>
	</div>
	  	
	  
	
	
	<jsp:include page="footer1.jsp"></jsp:include>
	

	

</body>
</html>