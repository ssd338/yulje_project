<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="./css/header.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
<!-- Header Start -->
	<header>
	
		<div class="header">
		
			<div class="header_top">
				<ul>
					<li>
						<a href="login.jsp"><img src="./menu/login.png"></a>
					</li>
				
					<li>
						<a href="/join-allow"><img src="./menu/insertMember.png"></a>
					</li>			
					
					<li>
						<a href="#"><img src="./menu/map.png"></a>
					</li>
				</ul>
			</div>
		
			<div id="header_row">
			<div class="bar_logo">
				<a href="main.jsp"><img src="./menu/logo.png" width="400"></a>
			</div>
			
			<div id="bar_menu">
			<nav>
				<ul>
					<li><a href="#">예약/조회/발급</a>
						<ul>
						<li><a href="Reservation.jsp">진료예약</a></li>
						<li><a href="#">예약안내</a></li>
						<li><a href="#">온라인예약</a></li>
						<li><a href="reserconfirm">예약조회/취소</a></li>
						<li><a href="#">1:1전문의 상담</a></li>
						<li><a href="#">진료과별 상담</a></li>
						</ul>
					
					</li>
					<li><a href="#">의료진/의료과</a>
						<ul>
						<li><a href="/listDoctor">의료진</a></li>
						<li><a href="listDept6.jsp">진료과</a></li>
						<li><a href="#">의료과 검색</a></li>
						</ul>
					</li>
					
					<li><a href="#">이용안내</a>
						<ul>
						<li><a href="main.jsp">메인페이지</a></li>
						<li><a href="#">병문안 안내</a></li>
						<li><a href="#">편의시설 안내</a></li>
						<li><a href="#">층별 안내</a></li>
						<li><a href="#">찾아오시는 길 안내</a></li>
						<li><a href="listCompliment.jsp">칭찬 게시판</a></li>
						<li><a href="listNotice.jsp">공지사항</a></li>
						<li><a href="#">병원소개</a></li>
						<li><a href="#">병원소식</a></li>
						</ul>
					</li>
					
					<li><a href="#">고객 서비스</a>
						<ul>
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="/join-allow">회원가입</a></li>
						<li><a href="myPage_1.jsp">마이페이지</a></li>
						<li><a href="#">증명서 발급 안내</a></li>
						<li><a href="#">증명서 발급</a></li>
						<li><a href="#">온라인 신청</a></li>
						<li><a href="#">건강 정보</a></li>
						<li><a href="listTV.jsp">건강TV</a></li>
						<li><a href="listMedicine.jsp">약정보</a></li>
						<li><a href="#">이달의 강좌</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			</div>
				
			<div id="menu_links">
				<a href="#"><i class="fas fa-bars"></i></a>
			</div>
			</div>
		</div>
	</header>
	<!-- Header End -->
</body>
</html>