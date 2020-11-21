<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="header.css">
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
	
	.mypage_chart{
		border-top: 3px solid #94CCC4;
		border-bottom: 3px solid #94CCC4;
		border-left: 1px solid #EAEAEA;
		border-right: 1px solid #EAEAEA;
		justify-content: center;
		display: flex;
		width: 760px;
		height : 225px;
		margin-left: 26px;
		
	
	}
	
	#mypage_reserve{
		background-color: #94CCC4;
		color : #ffffff;
		text-align: center;
		width: 253px;
		
		
	}
	
	#mypage_reserve h2{
		padding-top: 0px;
		height: 5px;
	}
	
	#mypage_reserve h3{
		padding-top: 0px;
		height: 5px;
	}
	
	#btn_mypage_reserve{
		border-radius: 10px;
		width: 100px;
		height: 35px;
		border: 1px solid #ffffff;
		background-color: #ffffff;
		color: #94CCC4;
		font-weight: bold;
		margin-top: 50px;
		
	
	}
	
	#mypage_notice{
		width: 253px;
		text-align: center;
		margin-top: 0px;
		
		
	
	}
	#mypage_notice_chart{
		height: 108px;
	}
	#mypage_notice_chart img{
		margin-right: 5px;	
		margin-top: 20px;
		width: 70px;
		height: 70px;	
		
	}
	
	#mypage_notice_chart span{
		vertical-align: 25px;
		margin-top: 20px;
	}
	
	#mypage_notice_class{
		height: 108px;
	}
	#mypage_notice_class img{
		margin-top : 15px;
		margin-right: 5px;
		
	}
	
	#mypage_notice_class span{
		vertical-align: 30px;
		
		
	}
	
	#mypage_certificate{
		background-color: #EAEAEA;
		width: 253px;
		text-align: center;
		
	
	}
	
	#btn_mypage_certificate_1{
		border-radius: 10px;
		width: 150px;
		height: 35px;
		border: 1px solid #94CCC4;
		background-color: #94CCC4;
		color: #ffffff;
		font-weight: bold;
		margin-top: 55px;
	
	}
	
	#btn_mypage_certificate_2{
		border-radius: 10px;
		width: 150px;
		height: 35px;
		border: 1px solid #ffffff;
		background-color: #ffffff;
		color: #94CCC4;
		font-weight: bold;
		font-size: 13px;
		margin-top: 30px;
	
	}
	
	#mypage_mydoc_chart{
		width: 760px;
		height: 340px;
		border-top: 3px solid #94CCC4;
		border-bottom: 3px solid #94CCC4;
		border-left: 1px solid #EAEAEA;
		border-right: 1px solid #EAEAEA;
		margin-left: 26px;
		margin-top: 30px;
	
	
	}
	
	#mypage_mydoc_chart_title{
		padding-left: 10px;
		margin-top:7px;
		border-bottom: 2px solid #94CCC4;
		width: 759px;
		height: 33px;
		
	}
	
	#mypage_mydoc_chart_detail{
		text-align: center;
		vertical-align: 100px;
		width: 760px;
		height: 307px;
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
	/* 마우스가 올라갔을때*/
	.mouseOn{
	background-color: #F2F2F2;
	}
/*============= 진료기록 조회  =====================*/
 /*진료기록 더보기 버튼*/
	#nextClinic_btn{
		border-radius: 10px;
		width: 70px;
		height: 20px;
		border: 1px solid #94CCC4;
		background-color: #ffffff;
		color: #94CCC4;
		font-weight: bold;
		margin-left: 550px;
	}
 
 /* 진료기록 없을때 */
    .noRecode{
    	margin-top: 70px;
    	font-size: 20px;
    }
	/* 진료기록 있음 */

   
   #ul{		/* 진료내역 목록의 div임 아이디가 ul */
   border-top: 10px;
   clear: both;
   align-items: center;
   
   }
   #ul ul{	/* 진료내역 목록의 div안의 ul태그 */
    padding:0px;
    margin:0px;
   }
   #ul li{	/* 진료내역 목록의 레코드 li */
   	list-style: none;
   	margin:10px 0 10px 0;
   	padding: 0 0 10px 0;
   	font-size:16px;
   	font-weight:normal;
   	border-bottom: dotted 1px #F6F7DD; 
   }

   #th{ 	/* 제목부분 */
    width:758px;
    height: 40px;
    font-size: 18px;
    padding-top: 8px;
    border-bottom: 1px solid #EAEAEA;
   }
    #th h4{		/* 제목부분 */
   	float: left;
   }
  /* 진료기록 각 칼럼의 너비 */
  .date{
  	width: 230px;
  } 
  .content{
  	width: 230px;
  }
  .dept_name{
  	width: 149px;
  }
  .doc_name{
  	width: 149px;
  }
  span{
  	display: inline-block;
  }
  #mypage_reserve h2{
      padding-top: 20px;
      height: 5px;
   }
   
   #mypage_reserve h3{
      padding-top: 20px;
      height: 5px;
   }
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	
	
	//매개변수로 총데이터의 수, 한페이지에 나타낼데이터 수, 현재 선택된 페이지
	//진료 내역을 ajax통신을 통해서 가져온다.
	var totalData = 5;
	var dataPerPage = 5;
	var currentPage = 1;
	   $.ajax({
        url: "/allListClinic.ajax",
        method: "POST",
        data: {totalData:totalData, dataPerPage:dataPerPage,currentPage:currentPage},
        success: function(data) {
        	 var arr = data;
   	      	 if(arr.length >= 1){   //진료기록이 있는경우
		      //분류(제목)부분
		      var div_th = $("<div id='th'><span><h4 class='date'>진료날짜</h4><h4 class='content'>진료내용</h4><h4 class='dept_name'>진료과</h4><h4 class='doc_name'>담당의</h4></span></div>") 
	    	  var div_ul = $("<div id='ul'></div>");
       		  var ul = $("<ul></ul>")
       	
	           $.each(arr, function(idx,item){      //응답받은 데이터를 루프를 돌면서 <td>태그에 넣는다
	              var li = $("<li></li>")	// 리스트의 레코드들을 가져와서 넣음
	              var span = $("<span class='date'>"+item.cli_date+"</span><span class='content'>"+item.cli_content+"</span><span class='dept_name'>"+item.dept_name+"</span><span class='doc_name'>"+item.doc_name+"</span>")
	              $(li).append(span)
	              $(ul).append(li);
	            })
	           	  $(div_ul).append(ul);
	           	  
	            $("#mypage_mydoc_chart_detail").append(div_th);
	            $("#mypage_mydoc_chart_detail").append(div_ul);
	            
			}else{				//조회된 진료 기록이 없는 경우
				var div = $("<div class='noRecode'></div>")
				var p = $("<p>조회된 진료 내역이 없습니다.</p>")
				$(div).append(p)
				$("#mypage_mydoc_chart_detail").append(div)	
			}
				
		}});



	


	
	/* 호버  */
	$(document).on("mouseenter","#mypage_notice_chart",function(){
		$(this).addClass("mouseOn");
	})
	$(document).on("mouseleave","#mypage_notice_chart",function(){
		$(this).removeClass("mouseOn");
	})
	$(document).on("mouseenter","#mypage_notice_class",function(){
		$(this).addClass("mouseOn");
	})
	$(document).on("mouseleave","#mypage_notice_class",function(){
		$(this).removeClass("mouseOn");
	})
});
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
		  		<div class="mypage_title">
		  		<h2>나의 차트</h2>
		  		</div>
		  		<div class="mypage_chart">
		  		<div id="mypage_reserve">
		  			<h2>예약현황</h2><br>
		  			<h3>${cnt }건</h3>
		  			<div>
		  				<button id="btn_mypage_reserve"><a href="/myPage_4">예약확인</a></button>
		  			</div>
		  		</div>
		  		<div id="mypage_notice">
		  		
		  			<div id="mypage_notice_chart" onclick="location.href='/myPage_5'">
		  			<img src="./img/chart.png" width="65" height="65">
		  			<span>1:1상담내역</span>
		  			</div>
		  		
		  			<div id="mypage_notice_class"  onclick="location.href='/myPage_6'">
		  			<img src="./img/class.png" width="70" height="70">
		  			<span>강좌 신청 내역</span>
		  			</div>
		  		</div>
		  		<div id="mypage_certificate">
		  			<button id="btn_mypage_certificate_1"><a href="/myPage_2">개인정보수정</a></button>
		  			<button id="btn_mypage_certificate_2">인터넷증명서 발급</button>
		  		</div>
		  		</div>		  	
		  	</div>
		  		<div id="mypage_mydoc_chart">
		  			<div id="mypage_mydoc_chart_title">	
		  		  		최근 진료 내역
		  		  		<a href="/listClinic"><button id="nextClinic_btn">더 보기</button></a>
		  			</div>
		  			<div id="mypage_mydoc_chart_detail">
		  			
		  			</div>
		  		</div>
		  	
	  	</div>
	</div>
	</div>
	  	
	  
	
	
	<jsp:include page="footer1.jsp"></jsp:include>

	

</body>
</html>