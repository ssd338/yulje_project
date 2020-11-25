<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 건강티비 페이지 -->
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
* {
  box-sizing: border-box;
  font-family: "맑은 고딕";
}
body {
  font-family: Arial, Helvetica, sans-serif;	
}




/* Style the header */


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

/* Clear floats after the columns */
.row{
	padding-top: 130px;
}

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

/* 제목 메뉴*/
.faq_menu {
   display: flex;
   text-align: center;
   width: 950px;
   padding-left: 0px;
}

.faq_bottom_menu {
   border: 1px solid #D5D5D5;
   width: 370px;
   height: 50px;
   line-height: 50px;
   background-color: white;
   paddin:0px;
   margin:0px;
}

.faq_bottom_menu:hover {
   color: #ffffff;
   background-color: #D5D5D5;
}
/* 제목 메뉴*/

/* 상단 안내 */
#explain{
margin-top: 30px;
background-color: #EAEAEA;
padding: 20px 20px 20px 20px;
}
#explain span p{
	padding-left: 180px;
}
/* 상단 안내 */

/* 하단 안내 내용*/
#guidTitle{
	margin-top:20px;
	padding-left: 10px;
	border-left: solid 3px #94CCC4;
	font-size: 24px;
}
.duidBlocks{
	float:left;
	width:216px;
	height: 230px;
	border:solid 1px;
	border-top:solid 4px #94CCC4;
}
.step{
	font-size: 12px;
    font-weight: 500;
    color: #fff;
    display: block;
    margin: 20px 0px 0px 80px;
    padding: 6px 0;
    width: 60px;
    text-align: center;
    line-height: 1;
    background: #94CCC4;
    border-radius: 8px;
}
.imgAndText{
	padding-left:0px;
}

.duidBlocks li{
	list-style: none;
	margin-top:10px;
	line-height: 20px;
    text-align: center;
    font-size: 14px;
}
.deptName{
	text-align:center;
	font-size: 19px;
	font:bold;
	margin-top: 8px;
}
.imgAndText img{
	width: 80px;
	height: 73px;
	margin-left: 68px;
}
/* 하단 안내 내용*/
/* 내용부분(메인) */
.guidBox{
	display: inline-block;
}
.allow{
	float: left;
	height: 246px;
	width:45px;
	padding:90px 0px 0px 2px;
}
.allow img{
	width: 45px;
	height: 60px;
}
#guidMessage{
	margin-top: 80px;
}
.guidTitle2{
	color:#00315c;
	font-size: 18px;
	margin:35px 0px 5px 0px;
	font-weight: bold;
}
#guidMessageList{
	list-style: disc;
	margin-left: 20px;
}
#guidMessageList2{
	margin: 2px 0px 0px 10px;
}
.downloadCase1{
	 border-collapse: collapse;
	 width:738px;
}

.downloadCase1 th{
	padding:10px 0px 10px 20px;
	width: 380px;
	text-align: left;
	font-size: 15px;
	color:#4C4C4C;
}
.downloadCase1 td{
	width: 340px;
	padding:10px 0px 10px 20px;
}
.downloadCase1 td div{
	font-size: 14px;
	color:#4C4C4C;
}
.downloadCase1 a{
	padding-left:30px;
}
.download{
	margin: 10px 0px 20px 0px;
}
.download p{
	font-size: 17px;
	margin-bottom: 5px;
	padding-left: 10px;
	border-left: 3px solid #94CCC4;
	font-weight: bold;
	color:#212121;
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
.downloadButton{
	 width:70px;
	 height:30px;
	 background-color:white;
	 color:#94CCC4;
   	 font-size: 12px;
   	 font-weight:bolder;
   	 border: 1px solid #747474;
   	 border-radius:3px;
}

/*사이드바 end*/

</style>
<meta charset="UTF-8">
<link rel="stylesheet" href="newfooter.css">
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="header.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

</script>
<title>증명서 발급 안내</title>
</head>
<body>
  <!-- Header Start -->
     <jsp:include page="/header.jsp"></jsp:include>
<!-- 	Header End -->

<div class="row">
	<!-- 양쪽 빈공간중에 왼쪽. 메뉴바 들어옴. -->
  <div class="column side">
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
  
  	<!-- 중간 -->
  <div class="column middle">
  
  	<!-- 페이지의 이름. -->
  	<div class="part_title"> 
  		<p>증명서 발급 안내</p>
  	</div>
  	
  	<!-- 페이지의 내용 -->
  	<div class="part_content">
	  	<div id="page_menu">
	  		<div class="faq_menu">
		      <button class="faq_bottom_menu" name="category" >진단서 및 증명서</button>
		      <a href='/documentOnline'><button class="faq_bottom_menu" name="category" >온라인 신청</button></a>
	    	</div>
	    	<div>
	    		<div id="explain"><span><p>각종 증명서의 발급 방법과 관련 안내입니다.</p><p>관련문의 원무고객지원팀 02-111-1111</p></span></div>
	    	</div>
		</div> 	
			<!-- 리스트번호, 검색 -->
		<div class="bottom">
			<div class="guid">
				<div><h4 id="guidTitle">진단서 및 증명서 발급 절차</h4></div>
				<div> 
					<div class="guidBox">
						<span><p class="guidTitle2">외래발급</p></span>
						<div class="duidBlocks">
							<div>
								<span class="step">STEP1</span>
								<div class="imgAndText">
									<div class="deptName"><h3>원무팀</h3></div>
									<img src="./img/tjfb.jpg">
								</div>
								<ol>
									<li>주치의 외래 <br>
									진료일에 접수</li>
								</ol>
							</div>
						</div>
						<div class="allow">
							<div>
								<img src="./img/arrow.jpg">
							</div>
						</div>
						<div class="duidBlocks">
							<div>
								<span class="step">STEP2</span>
								<div class="imgAndText">
									<div class="deptName"><h3>진료실</h3></div>
									<img src="./img/cnffur.jpg">
								</div>
								<ol>
									<li>주치의 증명서 내용 입력 후<br>
									진료실에서 출력</li>
								</ol>
							</div>
						</div>
						<div class="allow">
							<div>
								<img src="./img/arrow.jpg">
							</div>
						</div>
						<div class="duidBlocks">
							<div>
								<span class="step">STEP3</span>
								<div class="imgAndText">
									<div class="deptName"><h3>원무팀</h3></div>
									<img src="./img/rPtks.jpg">
								</div>
								<ol>
									<li>진단서 비용수납 및 직인 날인</li>
								</ol>
							</div>
						</div>
					</div>
					<div class="guidBox">
						<span><p class="guidTitle2">입원시 발급</p></span>
						<div class="duidBlocks">
							<div>
								<span class="step">STEP1</span>
								<div class="imgAndText">
									<div class="deptName"><h3>발급신청</h3></div>
									<img src="./img/tjfb.jpg">
								</div>
								<ol>
									<li>병동 간호사에게 퇴원<br>
									 1, 2일 전에 미리 신청</li>
								</ol>
							</div>
						</div>
						<div class="allow">
							<div>
								<img src="./img/arrow.jpg">
							</div>
						</div>
						<div class="duidBlocks">
							<div>
								<span class="step">STEP2</span>
								<div class="imgAndText">
									<div class="deptName"><h3>원무팀</h3></div>
									<img src="./img/rPtks.jpg">
								</div>
								<ol>
									<li>직인날인 퇴원 시 수납</li>
								</ol>
							</div>
						</div>

					</div>
				</div>
				<div id="guidMessage">
					<div>
						<div>
							<div><h4 id="guidTitle">증명서 발급 관련 발급 가능한 서류</h4></div>
							<span><p class="guidTitle2">환자 본인 외 대리인이 발급하러 오실 경우 다음의 구비서류를 지참해야 합니다.</p></span>
						</div>
						<div>
							<ol id="guidMessageList">
								<li>동의서, 위임장은 원본이어야 하며, 동의서, 위임장의 서명은 반드시 자필서명이어야 합니다.</li>
								<li>구비서류(가족관계증명서, 주민등록등본 등) 유효기간: 발급일로부터 6개월 이내</li>
								<li>의료법 제 17조에 따른 진단서 발급 절차와 의료법 시행규칙 제 13조3항에 의거하여 구비서류가 완전히 갖춰져 있지 않은 경우 발급이 불가능함을 알려드립니다.</li>
								<li>신분증 인정범위</li>
							</ol>
							<div id="guidMessageList2">
								-주민등록증, 여권, 운전면허증 등 공공기관에서 발급한 것으로, 사진이 있으며 본인확인이 가능한 것이어야 한다.<br>
								-만 17세 미만 : 여권, 학생증, 청소년증 또는 주민등록번호가 모두 표기된 가족관계증명서 및 주민등록 등·초본으로 본인
											확인되어야 한다.
							</div>
						</div>
						<div>
							<span><p class="guidTitle2">구비 서류 다운로드</p></span>
							<div>
								<div class="download">
								<span><p>본인동의를 받을 수 있는 경우</p></span>
									<table class="downloadCase1" border="1">
										<tr>
											<th>친족<br>(환자의 배우자, 부모,<br> 조부모,자녀, 손자녀, 배우자의 부모)</th>
											<td>환자 자필 서명한 동의서 <a href="./upload/consent_form.pdf" download><button class="downloadButton" value="consent_form">다운로드</button></a></td>
										</tr>
										<tr>
											<th rowspan="2">대리인<br>(형제·자매, 보험회사 등)</th>
											<td>환자 자필 서명한 동의서 <a href="./upload/consent_form.pdf" download><button class="downloadButton" value="consent_form">다운로드</button></a></td>
										</tr>
										<tr>
											<td>환자 자필 서명한 위임장 <a href="./upload/entrust.pdf" download><button class="downloadButton" value="entrust">다운로드</button></a></td>
										</tr>
									</table>
								</div>
								<div class="download">
								<span><p>환자 동의를 받을 수 없는 경우 (반드시 환자의 친족만이 신청 가능)</p></span>
									<table class="downloadCase1" border="1">
										<tr>
											<th>사망환자<br></th>
											<td rowspan="4">추가 제출할 서류가 있음 <a href="./upload/confirmation.pdf" download><button class="downloadButton">다운로드</button></a>
												<div>
												1.형제·자매 <br>
												-가족관계증명서<br>
												-진료기록열람 및 사본발급을 위한 확인서<br>
												2.법정대리인 또는 임의 대리인<br>
												-대리인의 신분증 사본<br>
												-친족과 대리인 간의 위임장
												</div>
											</td>
										</tr>
										<tr>
											<th>환자가 중증질환(부상)<br>의식불명으로 자필서명을 할 수 없는 경우</th>
										</tr>
										<tr>
											<th>행방불명자</th>
										</tr>
										<tr>
											<th>의사무능력자</th>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
			</div>
				
		</div>
		
	</div><!-- part_content 끝 -->
  </div><!-- 가운데 레이아웃 끝 -->
  
  <div class="column side"></div>
</div>

  <!-- footer Start -->
     <jsp:include page="/footer2.jsp"></jsp:include>
<!-- 	footer End -->


</body>
</html>