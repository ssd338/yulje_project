<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="./css/header.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	
  	$('.reser_board').mouseenter(function(){
 		$('.menu_drop_area').addClass('on');
		$('.menu_drop_wrap').addClass('on');
		$('.menu_drop_list_area1').addClass('on');
		$('.menu_drop_list_area2').addClass('close');
		$('.menu_drop_list_area3').addClass('close');
		$('.menu_drop_list_area4').addClass('close');
		$('.drop_board_list1').addClass('on');
		$('.menu_drop_list_wrap').addClass('on');
		
		$('.menu_drop_area').removeClass('close'); 
 		$('.menu_drop_wrap').removeClass('close'); 
		$('.menu_drop_list_area1').removeClass('close');
		$('.drop_board_list1').removeClass('close');
		$('.menu_drop_list_wrap').removeClass('close');
	});
 

  	$('.doctor_board').mouseenter(function(){
 		$('.menu_drop_area').addClass('on');
		$('.menu_drop_wrap').addClass('on');
		$('.menu_drop_list_area2').addClass('on');
		$('.menu_drop_list_area1').addClass('close');
		$('.menu_drop_list_area3').addClass('close');
		$('.menu_drop_list_area4').addClass('close');
		$('.drop_board_list2').addClass('on');
		$('.menu_drop_list_wrap').addClass('on');
		
		$('.menu_drop_area').removeClass('close'); 
 		$('.menu_drop_wrap').removeClass('close'); 
		$('.menu_drop_list_area2').removeClass('close');
		$('.drop_board_list2').removeClass('close');
		$('.menu_drop_list_wrap').removeClass('close');
	});

   	$('.util_board').mouseenter(function(){
 		$('.menu_drop_area').addClass('on');
		$('.menu_drop_wrap').addClass('on');
		$('.menu_drop_list_area3').addClass('on');
		$('.menu_drop_list_area2').addClass('close');
		$('.menu_drop_list_area1').addClass('close');
		$('.menu_drop_list_area4').addClass('close');
		$('.drop_board_list3').addClass('on');
		$('.menu_drop_list_wrap').addClass('on');
		
		$('.menu_drop_area').removeClass('close'); 
 		$('.menu_drop_wrap').removeClass('close'); 
		$('.menu_drop_list_area3').removeClass('close');
		$('.drop_board_list3').removeClass('close');
		$('.menu_drop_list_wrap').removeClass('close');
	});


  	$('.service_board').mouseenter(function(){
 		$('.menu_drop_area').addClass('on');
		$('.menu_drop_wrap').addClass('on');
		$('.menu_drop_list_area4').addClass('on');
		$('.menu_drop_list_area2').addClass('close');
		$('.menu_drop_list_area3').addClass('close');
		$('.menu_drop_list_area1').addClass('close');
		$('.drop_board_list4').addClass('on');
		$('.menu_drop_list_wrap').addClass('on');
		
		$('.menu_drop_area').removeClass('close'); 
 		$('.menu_drop_wrap').removeClass('close'); 
		$('.menu_drop_list_area4').removeClass('close');
		$('.drop_board_list4').removeClass('close');
		$('.menu_drop_list_wrap').removeClass('close');
	}); 


  	
  	$('.menu_drop_area').mouseleave(function(){

		$('.menu_drop_area').addClass('close');
		$('.menu_drop_wrap').addClass('close');
		$('.menu_drop_list_area1').addClass('close');
		$('.drop_board_list1').addClass('close');
		$('.menu_drop_list_wrap').addClass('close');
		
		$('.menu_drop_area').removeClass('on'); 
 		$('.menu_drop_wrap').removeClass('on'); 
		$('.menu_drop_list_area1').removeClass('on');
		$('.drop_board_list1').removeClass('on');
		$('.menu_drop_list_wrap').removeClass('on');
	}); 



  	$('.menu_drop_area').mouseleave(function(){
 		
		$('.menu_drop_area').addClass('close');
		$('.menu_drop_wrap').addClass('close');
		$('.menu_drop_list_area2').addClass('close');
		$('.drop_board_list2').addClass('close');
		$('.menu_drop_list_wrap').addClass('close');
		
		$('.menu_drop_area').removeClass('on'); 
 		$('.menu_drop_wrap').removeClass('on'); 
		$('.menu_drop_list_area2').removeClass('on');
		$('.drop_board_list2').removeClass('on');
		$('.menu_drop_list_wrap').removeClass('on');
	}); 



  	$('.menu_drop_wrap').mouseleave(function(){
 		
		$('.menu_drop_area').addClass('close');
		$('.menu_drop_wrap').addClass('close');
		$('.menu_drop_list_area3').addClass('close');
		$('.drop_board_list3').addClass('close');
		$('.menu_drop_list_wrap').addClass('close');
		
		$('.menu_drop_area').removeClass('on'); 
 		$('.menu_drop_wrap').removeClass('on'); 
		$('.menu_drop_list_area3').removeClass('on');
		$('.drop_board_list3').removeClass('on');
		$('.menu_drop_list_wrap').removeClass('on');
	}); 



  	$('.menu_drop_wrap').mouseleave(function(){
 		
		$('.menu_drop_area').addClass('close');
		$('.menu_drop_wrap').addClass('close');
		$('.menu_drop_list_area4').addClass('close');
		$('.drop_board_list4').addClass('close');
		$('.menu_drop_list_wrap').addClass('close');
		
		$('.menu_drop_area').removeClass('on'); 
 		$('.menu_drop_wrap').removeClass('on'); 
		$('.menu_drop_list_area4').removeClass('on');
		$('.drop_board_list4').removeClass('on');
		$('.menu_drop_list_wrap').removeClass('on');
	});  


})
</script>
<style>
	.on{
		display:block;
	}
	.close{
		display:none;
	}
</style>
</head>
<body>
<!-- Header Start -->
	<div  class="header" style="top: 0px;">
		<div class="header_wrap" >
			<div class="header_area">
				
				<div class="header_top">
					<ul class="sub_menu">
					<c:if test="${m eq '' || m eq null}">
						<li>
							<a href="/login"><img src="./menu/login.png"></a>
						</li>
					
						<li>
							<a href="/checkMember"><img src="./menu/insertMember.png"></a>
						</li>
						
					</c:if>		
					<c:if test="${m != null }">
						<li>
							<a href="/logout"><img src="./menu/logout_icon.jpg"></a>
						</li>
					
						<li>
							<a href="/myPage_1"><img src="./menu/mypage_icon.jpg"></a>
						</li>
					</c:if>	
						
						<li>
							<a href="map.jsp"><img src="./menu/map.png"></a>
						</li>
					</ul>
				</div>
				
				<div class="header_logo">
					<a href="/main"><img src="./menu/logo.png" width="400"></a>
				</div>
									<div id="menu_bar">
						<ul class="menu_bar_menu">
<!-- 							<li class="menu_bar_menu_1">예약/조회/발급</li>													
							<li class="menu_bar_menu_2">의료진/진료과</li>
							<li class="menu_bar_menu_3">이용안내</li>
							<li class="menu_bar_menu_4">고객 서비스</li> -->
						 	<li class="reser_board">예약/조회/발급</li>													
							<li class="doctor_board">의료진/진료과</li>
							<li class="util_board">이용안내</li>
							<li class="service_board">고객 서비스</li>
						</ul>
						
						<div class="menu_links">
						<a href="#"><i class="fas fa-bars"></i></a>
						</div>
					</div>

			</div>
			
			<div class="menu_bar">
					<div class="menu_drop_wrap" >
					<!-- <img src="./menu/background_banner.png"> -->
						<div class="menu_drop_area">
							<div class="menu_drop_list_wrap">
								<div class="menu_drop_list_area1">
									<div class="img_area">
											<img src="./menu/reser_baner.jpg" width="300" height="169">
									</div>
									<div class="drop_detail_area">
										<ul class="drop_board_list1">
											<!-- <li><a href="#">예약안내</a></li> -->
											<li><a href="/reservation">온라인예약</a></li>
											<li><a href="#">예약조회/취소</a></li>
											<li><a href="#">1:1전문의 상담</a></li>
											<li><a href="#">진료과별 상담</a></li>
										</ul>
									</div>
								</div>
								
								<div class="menu_drop_list_area2">
									<div class="img_area">
											<img src="./menu/doctor2_baner.jpg" width="300" height="169">
									</div>
									<div class="drop_detail_area">
										<ul class="drop_board_list2">
											<li><a href="/listDoctor">의료진</a></li>
											<li><a href="/listDept">진료과</a></li>
<!-- 										<li><a href="#">의료과 검색</a></li> -->
										</ul>
									</div>
								</div>
								
								<div class="menu_drop_list_area3">
									<div class="img_area">
											<img src="./menu/util_banner.jpg" width="300" height="169">
									</div>
									<div class="drop_detail_area">
										<ul class="drop_board_list3">
											<li><a href="visit.jsp">병문안 안내</a></li>
<!-- 											<li><a href="#">편의시설 안내</a></li> -->
											<li><a href="floorGuide.jsp">층별 안내</a></li>
											<li><a href="map.jsp">찾아오시는 길 안내</a></li>
											<li><a href="/listNotice">공지사항</a></li>
											<li><a href="/listG_Board.do">칭찬합시다</a></li>
											<li><a href="#">상담 게시판</a></li>
											<li><a href="/listFaq">자주묻는 질문</a></li>											
											<li><a href="hosInfo.jsp">병원소개</a></li>
										</ul>
									</div>
								</div>
								
								<div class="menu_drop_list_area4">
									<div class="img_area">
											<img src="./menu/service_baner.png" width="300" height="169">
									</div>
									<div class="drop_detail_area">
										<ul class="drop_board_list4">
									<!-- 		<li><a href="/login">로그인</a></li>
											<li><a href="/checkMember">회원가입</a></li>
											<li><a href="/myPage_1">마이페이지</a></li> -->
											<!-- <li><a href="#">증명서 발급 안내</a></li> -->
											<li><a href="/document">증명서 발급</a></li>
											<li><a href="/listFaq">자주묻는질문</a></li>
											<li><a href="#">건강 정보</a></li>
											<li><a href="/listMedicalTV">건강TV</a></li>
											<li><a href="/listMedicine">약정보</a></li>
											<li><a href="course.jsp">이달의 강좌</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
		</div>
	</div>
	<!-- Header End -->
</body>
</html>