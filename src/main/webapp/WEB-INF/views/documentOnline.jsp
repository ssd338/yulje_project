<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


/* Create three unequal columns that floats next to each other */
.column {
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Middle column */
.column.middle {
  width: 100%;
  height: auto;
   border: 1px solid;
  border-radius: 5px;
   margin:20px 0 0 0;
   
  
}
.main {
width: 100%;
  height: auto;
  padding:0px 50px 0px 50px;
}
/* Clear floats after the columns */
.row{
	padding:130px 200px 0px 230px;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}


/* 페이지이름 */
.part_title{
	padding-top: 20px;
	text-align: center;
	font-size: 40px;
	font-family: bold;
}

.part_title img{
	width:200px;
	height: 200px;
		
}

/* 내용부분(메인) */
.part_content{
	width: 100%;
	border: 5px solid #94CCC4;
	border-radius:4px;
	margin-bottom: 50px;
}



/* 상단 안내 */
#explain{
background-color: #EAEAEA;
}

#guidTitle{
	padding:17px;
	padding-left: 10px;
	font-size: 24px;
}
.guidBox{
	border:solid 3px #A6A6A6;
	border-radius: 8px;
	margin:10px 0 0 55px;
}
.duidBlocks{
	float:left;
	width:280px;
	height:100px;
	margin-top:10px;
	padding-top:5px;
	display: inline-block;
}
.step{
	font-size: 12px;
    font-weight: 500;
    color: #fff;
    display: block;
    margin-left:5px;
    width: 50px;
    height: 20px;
    text-align: center;
    background: #94CCC4;
    border-radius: 8px;
    padding-top: 2px;
}
.imgAndText{
	padding-left:0px;
}
.imgAndText div{
	float: left;
	margin-top: 15px;

}
.imgAndText img{
	float: left;
	width: 50px;
	height: 50px;
}
/* 하단 안내 내용*/
/* 내용부분(메인) */
.guidBox{
	display: inline-block;
	padding: 0 10px 0 10px;
}
.allow{
	float: left;
	height: 120px;
	width:45px;
	margin-left: 60px;
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
.guidBox2{
	border:solid 3px #A6A6A6;
	border-radius: 8px;
	margin:20px 55px 40px 55px;
	padding:14px 0 14px 14px;
}

.file{
	display: inline-block;
	border: 1px solid;
	border-radius: 2px;
	width: 380px;
	height:57px;
	margin:0 20px 0 70px;
	cursor: pointer;
	
}
.file1{
	float: left;
	background-color:#EAEAEA;
	width: 220px; 
	height:55px;
	font-size: 17px;
	font-weight:bold;
	text-align:center;
	padding: 15px 2px 3px 2px;
}
.file2{
	float: left;
	padding: 15px 20px 3px 30px;
	font-size: 17px;
	text-align:center;
}
#guidList{
	width:900px;
	height:50px;
	margin-bottom: 15px;
	display: inline-block;
}
#listTitle{
	font-size: 25px;
	margin-bottom: 20px;
	margin-left:20px;
	float: left;
}
.file1 span{
	font-size: 13px;
}
#myPapper{
	 float:right;
 	 width:200px;
	 height:45px;
	 background-color:#94CCC4;
	 color:white;
   	 font-size: 18px;
   	 border: 1px solid #747474;
   	 border-radius:3px;
   	 padding: 5px;
   	 cursor: pointer;
}  
</style>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	var Mname
	var email
	var tel
	var addr1
	var addr2
	$.ajax({
        url: "/findMyInfo.ajax",
        method: "GET",
        dataType : "json",
        async:false,
        success: function(data) {   
           Mname=data.name
           email=data.email
           tel=data.tel
           addr1 = data.addr.split("/")[0]
       	   addr2=data.addr.split("/")[1]
        }
	})		
		
	 $(".file").click(function(){
		 var name = $(this).find('.name').val()
		 var price = $(this).find('.price').val()
		 
		pay(name,price,Mname,email,tel,addr1,addr2);
		 
	 })
	
	var IMP = window.IMP; // 생략가능
	IMP.init('imp75517402'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	
	function pay(name,price,Mname,email,tel,addr1,addr2){
		IMP.request_pay({
		    pg : 'inicis', // version 1.1.0부터 지원.
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : name,
		    amount : price,
		    buyer_email : email,
		    buyer_name : Mname,
		    buyer_tel : tel,
		    buyer_addr : addr2,
		    buyer_postcode : addr1,
		    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
		}, function(rsp) {
		    if ( rsp.success ) {
		        var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		    }
		    swal('',msg,'')
		});
	}
})
</script>
<title>증명서 발급 안내</title>
</head>
<body>
  <!-- Header Start -->
     <jsp:include page="/header.jsp"></jsp:include>
<!-- 	Header End -->

<div class="row">

  
  	<!-- 중간 -->
  <div class="column middle">
  <!-- 페이지의 이름. -->
  	<div class="part_title">
  		<p>인터넷증명서 발급 서비스</p>
  		<img src="./img/wmdaudtj.jpg">
  	</div>
  <div class="main">
  	
  	
  	<!-- 페이지의 내용 -->
  	<div class="part_content">
  	
  		<div id="top">
	    	<div id="explain">
	    		<div><h4 id="guidTitle">진단서 및 증명서 발급 절차</h4></div>
	    	</div>
	    	
			<div class="guidBox">
				<div class="duidBlocks">
					<div>
						<span class="step">STEP1</span>
						<div class="imgAndText">
							<img src="./img/tjfb.jpg">
							<div><span>증명서를 선택</span></div>
						</div>
					</div>
					<div class="allow">
						<img src="./img/arrow.jpg">
					</div>
				</div>
				<div class="duidBlocks">
					<div>
						<span class="step">STEP2</span>
						<div class="imgAndText">
							<img src="./img/cnffur.jpg">
							<div><span>결제진행</span></div>
						</div>
					</div>
					<div class="allow">
						<img src="./img/arrow.jpg">
					</div>
				</div>
				<div class="duidBlocks">
					<div>
						<span class="step">STEP3</span>
						<div class="imgAndText">
							<img src="./img/rPtks.jpg">
							<div><span>발급된 증명서를 다운로드</span></div>
						</div>
					</div>
				</div>
			</div>
		</div><!-- top끝 -->
		<div id="middle">
			<div class="guidBox2">
				<div id="guidList">
					<div id="listTitle">
						발급 가능한 증명서
					</div>
					<div>
						<a href="/checkMember">
						<button id="myPapper">발급된 증명서 조회</button>
						</a>
					</div>
				</div>
				<div class="file" >
					<div class="file1">의무기록사본</div> 
					<div class="file2">1건당 1000원</div>
					<input type="hidden" value="1000" class="price">
					<input type="hidden" value="의무기록사본" class="name">
				</div>
				<div class="file">
					<div class="file1">납입확인서</div> 
					<div class="file2">1건당 1000원</div>
					<input type="hidden" value="1000" class="price">
					<input type="hidden" value="납입확인서" class="name">
				</div><br>
				<div class="file">
					<div class="file1">입퇴원 영수증</div> 
					<div class="file2">1건당 1000원</div>
					<input type="hidden" value="1000" class="price">
					<input type="hidden" value="입퇴원 영수증" class="name">
				</div>
				<div class="file">
					<div class="file1">입퇴원 <span>진료비 세부내역서</span></div> 
					<div class="file2">1건당 2000원</div>
					<input type="hidden" value="2000" class="price">
					<input type="hidden" value="입퇴원(진료비 세부내역서)" class="name">
				</div><br>
				<div class="file">
					<div class="file1">진단서</div> 
					<div class="file2">1건당 4000원</div>
					<input type="hidden" value="4000" class="price">
					<input type="hidden" value="진단서" class="name">
				</div>
				<div class="file">
					<div class="file1">외래 영수증</div> 
					<div class="file2">1건당 1000원</div>
					<input type="hidden" value="1000" class="price">
					<input type="hidden" value="외래 영수증" class="name">
				</div><br>
				<div class="file">
					<div class="file1">외래진료 확인서</div> 
					<div class="file2">1건당 5000원</div>
					<input type="hidden" value="5000" class="price">
					<input type="hidden" value="외래진료 확인서" class="name">
				</div>
				<div class="file">
					<div class="file1">외래</div> 
					<div class="file2">1건당 1000원</div>
					<input type="hidden" value="1000" class="price">
					<input type="hidden" value="외래" class="name">
				</div><br>
				<div class="file">
					<div class="file1">소견서</div> 
					<div class="file2">1건당 1000원</div>
					<input type="hidden" value="1000" class="price">
					<input type="hidden" value="소견서" class="name">
				</div>
				<div class="file">
					<div class="file1">영문 진단서</div> 
					<div class="file2">1건당 5000원</div>
					<input type="hidden" value="5000" class="price">
					<input type="hidden" value="영문 진단서" class="name">
				</div><br>
				<div class="file">
					<div class="file1">출생증명서</div> 
					<div class="file2">1건당 3000원</div>
					<input type="hidden" value="3000" class="price">
					<input type="hidden" value="출생증명서" class="name">
				</div>
				<div class="file">
					<div class="file1">납입확인서 <span>(연말정산용)</span></div> 
					<div class="file2">1건당 1000원</div>
					<input type="hidden" value="1000" class="price">
					<input type="hidden" value="납입확인서" class="name">
				</div><br>

			</div>
		</div>
		
	</div><!-- part_content 끝 -->
  </div><!-- 가운데 레이아웃 끝 -->
  </div>
</div>

  <!-- footer -->
   <jsp:include page="/footer.jsp"></jsp:include>
   <!-- //footer -->
   

</body>
</html>