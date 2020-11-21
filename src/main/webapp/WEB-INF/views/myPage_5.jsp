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
	
	.mypage_title{
		text-align: center;
		height: 80px;
		padding-top: 20px;
		
	
	}
	
	.mypage_box{
		width: 816px;
		height: 150px;
		background-color: #FCF8F2;
		z-index: 0px;
		padding-top: 5px;
	}
	
	.mypage_box li{
		color: #747474;
		padding-top: 12px;
		
	}
	
	.mypage_answer{
		justify-content: center;
		display: flex;
		margin-left: 0px;
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
		width: 760px;
		height: 350px;
		margin-left: 26px;
		margin-top: 10px;
		border-top: 3px solid #94CCC4;
		text-align: center;
		
	}
	
	.mypage_qna_notice img{
		margin-top: 110px;
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
		margin-right: 450px;
	}
 
 /* 진료기록 없을때 */
    .noRecode{
    	margin-top: 70px;
    	font-size: 20px;
    }
	/* 진료기록 있음 */
	/*더보기 버튼 */
#nextClinic_btn{
		border-radius: 10px;
		width: 70px;
		height: 20px;
		border: 1px solid #94CCC4;
		background-color: #ffffff;
		color: #94CCC4;
		font-weight: bold;
		
	}
   
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

  .title{
  	width: 290px;
  }
  .date{
  	width: 170px;
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
  .swal-button 
   {
   background-color: #94CCC4;
   font-size: 12px;
   text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.3);
   }   
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	//상담 내역을 ajax통신을 통해서 가져온다.
	$.ajax("/myAdivice.ajax",{success:function(data){
		var arr = data;
	      if(arr.length >= 1){			//나의 상담내역이 있는 경우
	    	  var div_th = $("<div id='th'><span><h4 class='title'>제목</h4><h4 class='date'>작성일</h4><h4 class='dept_name'>진료과</h4><h4 class='doc_name'>담당의</h4></span></div>") 
	    	  var div_ul = $("<div id='ul'></div>");
       		  var ul = $("<ul></ul>")
			  $.each(arr, function(idx,item){		//응답받은 데이터를 루프를 돌면서 <td>태그에 넣는다
				  var li = $("<li></li>")
		          var span = $("<a href='/detailAdvice?no="+item.no+"'><span class='title'>"+item.title+"</span><span class='date'>"+item.regdate+"</span><span class='dept_name'>"+item.dept_name+"</span><span class='doc_name'>"+item.doc_name+"</span></a>")
		          $(li).append(span)
		          $(ul).append(li);
		          
	          })
	           	$(div_ul).append(ul);
	            $(div_th).addClass("recode");
	            $("#advice_board").append(div_th);
	            $("#advice_board").append(div_ul);
		}else{				// 상담내역이 없을 경우
			var img = $("<img src='./img/answer.png' width='65' height='65'>");
			var text = $("<div>상담내역이 없습니다.</div>");
			$("#advice_board").append(img)	
			$("#advice_board").append(text)	
		}
	}/*,	//ajax통신이 실패했을경우 나오는 내용
		error:function(data,status,er) {
		alert("error: "+data+" status: "+status+" er:"+er);
	}*/
	});
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
		  		
		  		<div class="mypage_title">
		  			<h2>1:1 상담내역</h2>
		  		</div>
		  		<div class="mypage_box">
		  			<ul>
		  				<li>의료상담, 건강상담 ‘1:1 전문의 상담’을 이용해 주십시오.</li>
						<li>병원의 이용 관련된 문의는 고객의 소리에 문의하여 주십시오.</li>
						<li>031-782-8300으로 문의 부탁 드립니다</li>
		  			</ul>
		  		</div>
		  		<div class="mypage_answer">
		  		<a href="/listClinic.jsp"><button id="nextClinic_btn">더 보기</button></a>
		  			<div>답변중 : 0개</div>
		  			<div id="mypage_box_empty"></div>
		  			<div>답변완료 : 0개</div>
		  		</div>
		  		<div class="mypage_qna_notice" id="advice_board">
		  			
		  		</div>
		  		<div id="mypage_qna_notice_btn">
		  			<button id="mypage_qna_notice_btn1">전문의 상담하기</button>
		  		</div>
		  		  	
		  	</div>
		  		
		  	
	  	</div>
	  		
	</div>
	</div>
	  	
	  
	
	
	<jsp:include page="footer1.jsp"></jsp:include>

	

</body>
</html>