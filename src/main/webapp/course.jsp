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
   }
   /* 제목 부분 */
	#nameDiv{
	
	clear:both;
	justify-content: center; 
	display: flex; 
	display:inline-block;
	margin:5px 0 5px 0;
	width:886px; 
   	border-left: 5px solid #CBE2B8;
   	padding-left: 40px;
	}
	#name{
		margin:5px 0 5px 0;
		padding:0px;
		font-size: 30px;
	}
	#nameDiv h1{
	vertical-align: 25px;
	}
	/*제목부분 끝*/
	
	/* 기록수와 안내부분 */
   .main_top {
   	  clear:both; 
      background-color: #F6F7DD;
      justify-content: center;
      display: flex; 
      display:inline-block;  
      margin-top:20px;
      width:960px;  

   }
   #image{
   	float: left;
   	margin: 20px 0px 10px 20px;
   }
   #member{
   float: left;
   margin: 20px 0px 0px 20px;
   border-bottom: 3px solid #CBE2B8;
   }
   #count h4{
   display: inline;
   }
   #announce{
   	float: left;
   	margin: 10px 0 20px 40px;
   }
  /* 기록수와 안내부분 끝 */
  
  
   #th{ 
   	margin-top:20px;
   	border-top: solid 3px #CBE2B8;
   	border-bottom: solid 3px #CBE2B8;
    padding: 10px 0px 10px 0px;
    height: 50px;
   }
   #th h4{
   	float: left;
   	margin: 0px 80px 0px 0px;
   	padding:0px 0px 0px 50px;
   }
   
   #ul{
   border-top: 10px;
   clear: both;
   align-items: center;
   
   }
   #ul ul{
    padding:0px;
    margin:0px;
   }
   #ul li{
   	list-style: none;
   	margin:10px 0 10px 0;
   	padding: 0 0 10px 0;
   	font-size:16px;
   	font-weight:normal;
   	border-bottom: dotted 1px #F6F7DD; 
   }
   
   
   #ul li span{
   	margin: 0px 30px 0px 18px;
   	padding:0px 40px 0px 10px;
   	
   }
   
   
    /* 진료기록 목록 끝 */
    
    
    /* 진료기록 리스트 태그 */
     .main_under {
      clear:both;
      justify-content: center;
      display: flex; 
      display:inline;  
      background-color: #F6F7DD;
      margin-top:20px;  

   }
    
    .next{
		text-align:center;
    	height: 40px;
    	padding:0px;
    	
    }
    .next div{
    margin:0px;
    float:left;
    margin:7px 5px 5px 365px;
    }
       
    
   /* 다음(이전) 버튼 */

	
	/* 버튼이 눌렸을때*/
	.btn_push{
	background-color: white;
	color:#CBE2B8;
	}
    /**/
   body {
     margin:0;
  	font-family: Arial, Helvetica, sans-serif;
   
   }
   
   /* Style the header */
   .header {
     /*background-color: #f1f1f1;
     padding: 30px;
     text-align: center;
     font-size: 35px;
     */
   }
   

/* Create three unequal columns that floats next to each other */
.column {
  float: left;
  padding: 10px;
  height: 1000px;
}

/* Left and right column */
.column.side {
   width: 300px;
}

/* Middle column */
.column.middle {
	 width: 1000px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}



   #column_side_left {
   /*width: 160px;
   padding: 20px;
   margin-right: 20px;
   border: 1px solid #bcbcbc;*/
   }
   
   #column_side_right {
    /*width: 160px;
   padding: 20px;
    margin-bottom: 20px;
 	 border: 1px solid #bcbcbc;*/
}
   
  

   .row{
    width:1600px;
	margin:0 auto;
	padding-top: 140px;
	position: relative;
   }
   /* Clear floats after the columns */
   .row:after {
   
     content: "";
     display: table;
     clear: both;
     
   }
   
   /* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
   @media (max-width: 600px) {
     .column.side, .column.middle {
       width: 100%;
     }  
     
   }
   
  /* =================================================================================*/
  /* 기록수와 안내부분 */
   .main_top {
   	  clear:both; 
      background-color: #F6F7DD;
      justify-content: center;
      display: flex; 
      display:inline-block;  
      margin-top:50px;
      margin-left: 100px;
      width:700px;

   }
   
   .main_top > ul {  
    display: inline-block;
   	font-size: 20px;
   	font-weight: bold;
   	padding: 50px 50px 50px 50px;
   }
   
   .main_middle {
   	  clear: both;
      justify-content: center;
	  padding-top: 50px;
	  margin-left: 100px;
          
   }
   
     .btn_next{  
     text-align: center;
	 background-color: #CBE2B8;
	 border: solid 3px #CBE2B8;
	 width: 100px;
     height: 30px;
     padding: 0 8px 0 5px;
     margin: 0px 3px 5px 0px;
     color: #fff;
     font-size: 16px;
     letter-spacing: -.8px;
     line-height: 1.5;
	}
	
	.edu {
	display : inline-block;
	width: 150px;
	}
	
	.content{
	display : inline-block;
	width: 350px;
	}
  
</style>
<title>건강 강좌</title>
<link rel="stylesheet" href="./css/sidebar.css">
</head>
<body>

   
 <!-- Header Start -->
     <jsp:include page="/header.jsp"></jsp:include>
<!-- 	Header End -->
   
   <div class="row">
   
     	<div class="column side" id="column_side_left">
     		<!-- sidebar -->
  	<div>
  		<ul class="side_ul">
  		<h1 style="font-size: 23px;" class="leftTop">안내</h1>		<!-- 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="course.jsp">이달의 강좌</a></li>			<!-- 서브 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">서류발급 안내</a></li>
		  <li class="side_li"><a href="floorGuide.jsp">층별 안내</a></li>
		  <li class="side_li"><a href="map.jsp">찾아오시는 길</a></li>
		  <li class="side_li"><a href="visit.jsp">병문안 안내</a></li>
		</ul>
  	</div>
  	
  	<!-- //sidebar -->
     	
     	</div>
     	<!-- 메인부분 -->
  		<div class="column middle">
  			<div id="nameDiv">
     		<span><h2 id="name">건강 강좌</h2></span>
     		</div>
			<div class="main_top">
			<div id="image"><img src='./image/7.jpg' class='icon'></div>
			<ul>
	        	<li>▶ 기능성 소화불량증는 왜 걸리는 걸까?</li>
	        	<li>▶ 알콜성 간질환에 대하여</li>
	        	<li>▶ 췌장암 예방법</li>
	        	</ul>
	        </div>
	        
	        <div class="main_middle">      
	         	<div id="ul">
	         	<ul>
	         	<li><span class="edu">교육대상</span><span class="content">율제대학병원 회원 누구나 참석 가능</span></li>
	         	<li><span class="edu">교육일시</span><span class="content">2020년 12월 1일</span></li>
	         	<li><span class="edu"> 교육비</span><span class="content">무료</span></li>
	         	<li><span class="edu">교육장소</span><span class="content">율제대학병원 5층 휴게실</span></li>
	         	<li><span class="edu">교육강사</span><span class="content">소화기내과 전문의 김형규 교수</span></li>
	         	<li><span class="edu">교육등록</span><span class="content">하단의 인터넷 신청</span></li>
	         	<li><span class="edu">교육문의</span><span class="content">율제대학병원 대표번호(02-707-1480)</span></li>
	         	</ul>
	         	</div>
	      </div>
	      <div class="main_under">
	      	<div class="next">
	      		<div id="next_span"><button class="btn_next">신청하기</button></div>
	      	</div>
	      </div>
  	</div>		
  	<div class="column side" id="column_side_right"> </div>
  </div>
   <!-- footer -->
   	<jsp:include page="/footer.jsp"></jsp:include>
	<!-- //footer -->
   

</body>
</html>