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
   display: center; 
   display:inline-block;
   margin:5px 0 5px 0;
   width:886px; 
   border-left: 5px solid #94CCC4;
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

/* Style the footer */
.footer {
  background-color: #f1f1f1;
  padding: 10px;
  text-align: center;
  height: 20%;
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

 /*병원소개 목록*/
 
 .main_top{
 	margin-top : 30px;
 	margin-left: 55px
 }
 
 p {
    margin-top : 10px;
    margin-left: 55px;
    line-height: 1.63;
    font-size: 18px;
}

 .intro {
    color: #000;
    font-size: 28px;
    letter-spacing: -1.6px;
    line-height: 1.4;
    margin-left: 50px;
    margin-bottom: 20px;
}

#vision_img{
	 display: inline-block;
	 padding-top : 50px;
	 margin-left: 120px;
}

#vision > h2{
	margin-top: 70px;
	margin-left: 50px;
	font-size: 28px;
}

.ethics{
    margin-top : 10px;
    margin-left: 55px;
    line-height: 1.63;
    font-size: 18px;
}

 /*병원소개 목록 끝*/
</style>
<title>병원소개</title>
<link rel="stylesheet" href="./css/sidebar.css">
</head>
<body>

<!-- Header Start -->
      <jsp:include page="/header.jsp"></jsp:include>
<!--    Header End -->
   
   <div class="row">
        <div class="column side" id="column_side_left">
           <!-- sidebar -->
     <div>
        <ul class="side_ul">
        <h1 style="font-size: 23px;" class="leftTop">병원소개</h1>      <!-- 메뉴 이름 (페이지마다 다르게 지정) -->
        <li class="side_li"><a href="hosInfo.jsp">병원소개</a></li>		  <!-- 사이드 메뉴 이름 (페이지마다 다르게 지정) -->
        <li class="side_li"><a href="">병원소식</a></li>
      </ul>
     </div>
     
     <!-- //sidebar -->
        
        </div>
        <!-- 메인부분 -->
        <div class="column middle">
          	<div id="nameDiv">
     		<span><h2 id="name">병원 소개</h2></span>
     		</div>
     		<div class="main_top">
     		<img src="./main_img/doctor02.png" height="200" width="800"> 
           </div>       
           <div class="main_middle">      
	         <div id="ul">
	         		<p class="intro">지난 한세기 율제대학교병원은 국민의 건강과 생명을 지키고,<br> 우리나라 의학발전을 선도해 왔습니다.</p>
	         		<p>한국 최초의 서양식 국립병원인 제중원에서 출발하여 율제대학교 의과대학을 거쳐</p>
	         		<p>특수법인 율제대학교병원으로 개편해 오늘에 이르고 있습니다.</p>
	         		<p>현재 율제대학교병원은 본원을 비롯한 어린이병원, 암병원 그리고 의생명연구원으로 구성되어 있습니다.</p>
	         		<p>율제대학교병원은 인류의 건강을 수호하는 세계 속의 병원으로 힘차게 전진해 나가고 있으며,</p>
	         		<p>특히 환자중심의 병원으로 거듭나고자 한뜻으로 매진하고 있습니다.</p>

	         		<span id="vision"><h2>비전</h2></span>
	         		<span id="vision_img"><img src="./img/vision.JPG" height="200" width="650"></span> 
	         		<span id="vision"><h2>병원윤리강령</h2></span>
	         		<p class="intro">우리 병원은 인간생명의 존엄성을 인식하고 박애와 봉사정신으로,<br> 우리의 강령을 다음과 같이 다짐한다.</p>
	         		<p class="ethics">하나, 병원은 의료가 제1의 의무임을 인식하고 모든 환자에게 최선의 진료를 제공한다.</p>
	         		<p class="ethics">둘, 병원은 항시 구급 진료 태세를 완비하고 사랑과 정성으로 환자를 보호한다.</p>
	         		<p class="ethics">셋, 병원은 직원의 인화와 협동적 노력으로 친절하고 윤리적인진료 분위기를 조성한다.</p>
	         		<p class="ethics">넷, 병원은 부단한 연구와 교육훈련으로 의료 발전에 기여하고 환자의 신뢰를 높인다.</p>
	         		<p class="ethics">다섯, 병원은 진료환경을 청결히 유지하고 감염 및 화재예방 등안전 관리에 주의의무를 다한다.</p>
	         	</ul>
	         </div>
	      </div>
           
          
         <div class="main_under">
        
               
         </div>
     </div>      
     <div class="column side" id="column_side_right"> </div>
  </div>
  
   <!-- footer -->
	<jsp:include page="/footer.jsp"></jsp:include>
   <!-- //footer -->
   

</body>
</html>