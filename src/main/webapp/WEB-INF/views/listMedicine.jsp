<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;	
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
.column.side {
  width: 25%;
  
}

/* Middle column */
.column.middle {
  width: 50%;
  height: auto;
}

.row{
	padding-top: 130px;
}

/* Clear floats after the columns */
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


/*사이드바 end*/



/*footer start*/
#footer .family-site dd li {
    margin-bottom: 12px;
}


#footer .family-site {
    float: left;
    width: 250px;
    height: 184px;
    padding: 15px 28px;
    border-left: 1px solid #4e5157;
}

#hos_ul > li {
    list-style: none;
    display: list-item;
    text-align: -webkit-match-parent;
    
}

.clearfix > li {
    list-style: none;

}

#hos_ul {
    list-style-type: disc;
    display: block;
    padding: 0px;
    font-size: 13px;
    text-align: left;
}

#footer .btn-home {
    position: absolute;
   
    font-size: 11px;
    text-align: center;
    text-decoration:none;
    display: block;
    padding-top: 13px;

}

*, *:before, *:after {
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -o-box-sizing: border-box;
}
.inner > a {
    color: #333;
    text-decoration: none;
    font-family: "NotoSans-Regular";
    vertical-align: middle;
}


.inner > a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#footer {
    padding: 35px 0 88px 0;
   /* background: #7A9AA0;*/
    font-size: 16px;
    color: #5D5D5D;
    text-align: center;
}

#footer .info {
    float: left;
    width: 700px;
    height: 184px;
    padding-top: 15px;
}

#footer .tel-num {
    float: left;
    width: 295px;
    height: 184px;
    padding-top: 15px;
    border-left: 1px solid #4e5157;
    text-align: center;
}

#footer .family-site {
    float: left;
    width: 305px;
    height: 184px;
    padding: 15px 28px;
    border-left: 1px solid #4e5157;
}

#footer a{
	text-decoration:none;
	color: #5D5D5D;
	text-align:center;
}

.inner {
    max-width: 1300px;
    margin: 0 auto;
    position: relative;
}



footer{
    display: block\9;
    margin: 0\9;
    padding: 0\9;
    display: block;
}

.btn-top{
	border: 1px solid #ccc;
}

/*footer end*/





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

/* 약품 목록 리스트 */
.medi{
	padding: 5px;
	border-top: 2px solid #EAEAEA;
	height: 180px;
}

.medi img{
	float: left;
	width: 220px;
	height: 120px;
	margin-right: 40px;
	margin-top: 30px;
}

.m_title{
	font: bold;
	font-size: 20px;
	margin-top: 40px;
}

.m_detail{
	padding-bottom: 10px;
	margin-top: 0px;
	font-size: 14px;
}

.bottom{
	text-align: center;
	height: 100px;
}

.num{
	border: 2px solid #94ccc4;
	padding-left: 6px;
	padding-right: 6px;
	padding-top: 3px;
	padding-bottom: 3px;
}

.div_num{
	margin-bottom: 10px;
}

/* 검색*/
.search{
	height: 60px;
	text-align: center;
}

#ser_css{
	padding-top: 30px;
}


.searchText{
	width:220px;
	height: 25px;
    padding-right: 10px;
    padding-left: 10px;
    border: 1px solid #ccc;
    color: #666;
    font-size: 14px;
	}
	.search button{
	 background-color: #94ccc4;
	 width: 70px;
     height: 28px;
     padding: 0 10px;
     color: #fff;
     font-size: 16px;
     letter-spacing: -.8px;
     line-height: 1.5;
	}


.center {
  margin: auto;
  width: 700px;
  padding: 20px;
}
 /* 다음(이전) 버튼 */
    .btn_pn{ 
     text-align: center;
    background-color: #CBE2B8;
    border: solid 3px #CBE2B8;
    width: 50px;
     height: 30px;
     padding: 0 8px 0 5px;
     margin: 0px 3px 5px 0px;
     color: #fff;
     font-size: 16px;
     letter-spacing: -.8px;
     line-height: 1.5;
   }

</style>
<link rel="stylesheet" href="newfooter.css">
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="header.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
function pagingAjax(dataPerPage,currentPage,search){   //매개변수로 한페이지에 나타낼데이터 수, 현재 선택된 페이지,검색어
    $.ajax({
        url: "/listMedicine.ajax",
        method: "POST",
        data: {dataPerPage:dataPerPage,currentPage:currentPage,search:search},
        dataType : "json",
        async:false,
        success: function(data) {    					  //map - MedicinVo가 담긴 list와 검색어에 따른 레코드수가 들어있는 cnt       
			var list = data.list
			$("#cnt").val(data.cnt)
			
            if(list.length>0){
            var divlist = $("<div></div>")
        	  $.each(list, function(idx, item){
        		  var div = $("<div class='medi' style='cursor: pointer;'></div>")
            	  var img = $("<img>").attr("src","./mediImg/"+item.medi_fname)
            	  var p = $("<p class='m_title'></p>").html(item.medi_name)
            	  var p2 = $("<p class='m_detail'></p>").html(item.medi_detail)
            	  var div2 = $("<div></div>").append(p,p2)
            	  var a = $("<a></a>").attr("href","/detailMedicine?no="+item.medi_no).append(img,div2);

                  $(div).html(a)
                  $(divlist).append(div)
                  
        	  })  
        	$("#center").html(divlist)
           }
        }
    })
 }   
 
  var totalData = $("#cnt").val();    // 총 약품 수      6
  var dataPerPage = 5;   			  // 한 페이지에 나타낼 데이터 수
  var pageCount = 5;        		  // 한 화면에 나타낼 페이지 수
  var search = $("#search").val();    // 검색어

 
  function paging(totalData, dataPerPage, pageCount, currentPage){				//페이징 번호표 [이전]12345[다음]이거 생성해주는 메소드
      
      var totalPage = Math.ceil(totalData/dataPerPage);    // 총 페이지 수    올림(총 약품 수 / 한페이지에 나타낼 데이터의 수)
      var pageGroup = Math.ceil(currentPage/pageCount);    // 페이지 그룹(1번페이지면 1번 그룹, 6페이지면 2번그룹) (현재페이지/한화면에 나타낼 페이지수)
      
      var last = pageGroup * pageCount;    // 화면에 보여질 마지막 페이지 번호       페이지그룹/한 화면에 나타낼 페이지 수
      if(last > totalPage)                 // 총 페이지 수보다 last가 큰 경우
          last = totalPage;
      
      var first = (pageGroup * pageCount) - (pageCount-1);    // 화면에 보여질 첫번째 페이지 번호
      if(first <1){                  // 현재 총 페이지의 수가 5보다 적으면  fist는 1
       first = 1
      }
      var next = last+1;   //다음
      var prev = first-1;   //이전
      
      var html = "";
      
      if(prev > 0)
          html += "<a href=# id='prev'><button class='btn_pn'>이전</button></a> ";
      
      for(var i=first; i <= last; i++){
          html += "<a href='#' id=" + i + ">" + i + "</a> ";
      }
      
      if(last < totalPage)
          html += "<a href=# id='next'><button class='btn_pn'>다음</button></a>";

      if(totalData>0){                 //약품이 있는 경우
         $("#paging").html(html);    // 페이지 목록 생성
         $("#paging a").css("color", "black");
         $("#paging a#" + currentPage).css({"text-decoration":"none", 
                                            "color":"#CBE2B8", 
                                            "font-weight":"bold"});    // 현재 페이지 표시
      }else{                        //약품이 없는 경우
    	  $("#center").val("검색된 약품이 없습니다.")
      } 
                                          
      $("#paging a").click(function(){         //숫자를 (a태그)를 눌렀을때 동작
          var $item = $(this);
          var id = $item.attr("id");
          var selectedPage = id;
          
          if(id === "next")    selectedPage = next;      //다음 혹은 이전이 눌렸는지 체크
          if(id === "prev")    selectedPage = prev;
          pagingAjax(dataPerPage,selectedPage,search);               //페이지에 맞는 레코드를 가져오는 ajax을 호출
          paging(totalData, dataPerPage, pageCount, selectedPage);      //밑에 페이징 번호표 [이전]12345[다음]이거 생성
          
      });
  }

  $("#btn").click(function(){         							// 검색 버튼을 눌렀을때
	  search = $("#search").val();								// 검색어를 가져옴
      pagingAjax(dataPerPage,1,search);                         // ajax으로 레코드를 가져온다(한페이지에 보여줄데이터 수(5),현재페이지,검색어)
      totalData = $("#cnt").val();								// 검색어에 따른 데이터의 수 - ajax에서 cnt에 담아놓음
      paging(totalData, dataPerPage, pageCount, 1);             // 페이징버튼 메소드호출
     });
  
  $("document").ready(function(){ 								// 처음 화면 켰을때
	  pagingAjax(dataPerPage,1,search);                         // 첫 화면의 레코드  한페이지에 나타낼데이터 수, 현재 선택된 페이지, 검색어 => 검색어는 "%%"
	  totalData = $("#cnt").val();
	  paging(totalData, dataPerPage, pageCount, 1);             // 페이징버튼 메소드호출 [이전]12345[다음]
	});

});
</script>
<title>의약품목록</title>
</head>



<body>
<!-- Header Start -->
     <jsp:include page="/header.jsp"></jsp:include>
<!-- 	Header End -->

<div class="row">
	<!-- 양쪽 빈공간중에 왼쪽. 메뉴바 들어옴. -->
  <div class="column side">
  	<div>
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
  </div>
  
  	<!-- 컨텐츠 -->
  <div class="column middle">
  
  <!-- 페이지의 이름. -->
  	<div class="part_title"> 
  		<p>의약품 정보</p>
  	</div>
  	
  	<!-- 페이지의 내용 -->
  	<div class="part_content"> 
  	
  	<!-- 검색 -->
  	<div class="search">
				<div id="ser_css">
					<input type="text" size="40" name="search" class="searchText" id="search">
					<button id="btn">검색</button>
				</div>
			</div>
 
  	<!--약품 리스트 -->
  	<input type="hidden" value="${cnt }" id="cnt">				<!-- 약품의 수: 페이징 처리를 위해 검색어에 따라 갱신됨 -->
  		<div class="center" id="center">
  		</div>
  	</div>
  	
  	<!-- 리스트번호 -->
	<div class="bottom">
		<div class="div_num" id="paging">
		</div>
	</div>
  	
  </div>
  
  
  <div class="column side">
  </div>
</div>

<!-- footer -->
   <footer id="footer">
		<div class="inner">
			<div class="info">
				<ul class="footer-link">
					<li><a href="#" onclick="ajaxPopup('.ajaxPopup', '', '/ilsan/etc/privacy_policy.asp', this, '.popup-privacyList'); return false;"><span class="white fs14">개인정보처리방침</span></a></li>
					<li class="link-policy"><a href="#popupVideoPolicy" onclick="ajaxPopup('.ajaxPopup', '', '/ilsan/etc/video_policy.asp', this,'.popup-videoPolicy'); return false;">영상정보처리기기운영방침</a></li>
					<li><a href="" onclick="ajaxPopup('.ajaxPopup', '', this.href, this,'.popup-popRights'); return false;">환자권리장전</a></li>
					<!--<li><a href="#">사이트맵</a></li>-->
				</ul>
				<div class="copyright">
					<address>04108 서울 마포구 백범로 23 구프라자 3층</address>
					<span>HELLJAVA COPYRIGHT (C)2018 YULJE UNIVERSITY HOSPITAL.ALL RIGHTS RESERVED.</span>
				</div>
				<div class="etc">
					<i class="ico ico-certify">보건복지부 인증 의료기관</i>
					<div class="sns-link">
						<a href="" target="_blank" title="새창"><i class="">facebook</i></a>
						<a href="" target="_blank" title="새창"><i class="">blog</i></a>
                        <a href="" target="_blank" title="새창"><i class="">YouTube</i></a>
					</div>
				</div>
			</div>
			<div class="tel-num">
				<dl>
					<dt>대표전화(안내)</dt>
					<dd>02-707-1480</dd>
				</dl>
			</div>
			<div class="family-site">
				<dl>
					<dt><em>FAMILY SITE</em></dt>
					<dd>
						<ul id="hos_ul">
							<li><a href="">율제중앙의료원</a></li>
							<li><a href="">서울대병원</a></li>
							<li><a href="">일산백병원</a></li>
							<li><a href="" target="_blank" title="새창열림">율제대학교</a></li>
						</ul>
					</dd>
				</dl>

			</div>
		</div>
		<!-- footer_menu -->
		<div class="footer-menu">
			<div class="inner">
				<ul class="clearfix">
					<li><a href="">예약/조회/발급</a></li>
					<li><a href="" onclick="open(this.href, '_swin_', 'width=1120,height=800,scrollbars,resizable');return false;"></i>의료진/의료과</a></li>
					<li><a href="">이용안내</a></li>
					<li><a href="">건강정보</a></li>
					<li><a href="">병원소개</a></li>
					<li><a href="">전화번호안내</a></li>
					<li><a href="">오시는길</a></li>
				</ul>
				<a href="" class="btn-home">HOME</a>
				<button type="button" class="btn-top">TOP</button>
			</div>
		</div>
		<!--// footer_menu -->
	</footer>
	
	<!-- //footer -->
</body>
</html>