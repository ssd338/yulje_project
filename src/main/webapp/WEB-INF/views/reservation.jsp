<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>예약</title>
<meta charset="utf-8">
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
<link rel="stylesheet" href="./resCal/cal.css">
<link rel="stylesheet" href="./css/reservation/reservation.css">
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="./resCal/cal.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<script type="text/javascript">
function departMent(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
function doctor(evt, cityName) {
	  var i, tabcontent, tablinks;
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablinks");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace(" active", "");
	  }
	  document.getElementById(cityName).style.display = "block";
	  evt.currentTarget.className += " active";
	}
</script>
<script type="text/javascript">

$(function(){
  	$(document).ready(function(){
	    var token = $("meta[name='_csrf']").attr("content");
	    var header = $("meta[name='_csrf_header']").attr("content");
	    $(document).ajaxSend(function(e, xhr, options) {
	        xhr.setRequestHeader(header, token);
	    });
	});
	
	show();
	function show(){
	        if(ampm != null){
	            $('#confirm_btn').show();
	        }else{
	            $('#confirm_btn').hide();
	        }
	}

	
	//진료과 선택
	$(document).on("click",".res_dept",function(){
		$("#cal_btn").empty();
		$("#calendarDiv").empty();
		ampm = null;
		show();
		var dept_no = $(this).val();
		dept_num = $(this).val();
		var dname = $(this).attr("dname");
		$("#deptname").html(dname);
		$("#res_doc").html("");
		$.ajax({
		    url: "/resDoc",
		    method: "POST",
		    dataType: "json",
		    data: {dept_no:dept_no},
		    success: function(data) {
// 				alert(data);
				for(var doc of data){
					var li = $("<li></li>");
					
					var img = $("<img>").attr("src","./docimage/"+doc.doc_fname);
					var doc_img = $("<div></div>").addClass("doc_img").html(img);
					
					var doc_info = $("<div></div>").addClass("doc_info");
					var name = $("<h3></h3>").html(doc.doc_name);
					var major = $("<p></p>").html(doc.major+" "+doc.position);
					var sc1 = $("<p></p>").append($("<span></span>").html("오전"));
					var sc2 = $("<p></p>").append($("<span></span>").html("오후"));
					var btn = $("<button></button>").html("진료예약").addClass("r_btn");
					$(btn).attr({doc_no:doc.doc_no, doc_name:doc.doc_name});

					var doc_no = doc.doc_no;
					$.ajax({
					    url: "/resSche",
					    method: "POST",
					    dataType: "json",
					    async: false,
					    data: {doc_no:doc_no},
					    success: function(data) {
						    for(var sche of data){
								if(sche.am_pm == "오전"){
									$(sc1).append(" "+sche.workday);
								}
								if(sche.am_pm == "오후"){
									$(sc2).append(" "+sche.workday);
								}
							}
					    }
					});

					
					$(doc_info).append(name,major,sc1,sc2,btn);

					$(li).append(doc_img,doc_info)
					
					$("#res_doc").append(li);
				}
		    }
		});
	});

	//의사 선택
	$(document).on("click",".r_btn",function(){
		$("#cal_btn").empty();
		ampm = null;
		show();
		var doc_no = $(this).attr("doc_no");
		doctor_num = $(this).attr("doc_no");
		var doc_name = $(this).attr("doc_name");
		$("#docname").html(doc_name);
		getCal();

		$.ajax({
		    url: "/resSche",
		    method: "POST",
		    dataType: "json",
		    async: false,
		    data: {doc_no:doc_no},
		    success: function(data) {
			    for(var sche of data){
				    var workday = sche.workday;
				    var am = sche.am_pm;
// 				    alert(am)
					switch(workday){
						case "일" : // 일요일
							$(".sunday").addClass("today");
							$(".sunday").removeClass("sunday");
							if (am == "오전") {
// 								alert("ok")
								$(".sunday").attr("am",am);
							}
							if (am == "오후") {
								$(".sunday").attr("pm",am);
							}
	                    	break;
						case "월" : // 월요일
							$(".monday").addClass("today");
							$(".monday").removeClass("day");
							if (am == "오전") {
// 								alert("ok")
								$(".monday").attr("am",am);
							}
							if (am == "오후") {
								$(".monday").attr("pm",am);
							}
	                    	break;
						case "화" : // 화요일
							$(".tuesday").addClass("today");
							$(".tuesday").removeClass("day");
							if (am == "오전") {
// 								alert("ok")
								$(".tuesday").attr("am",am);
							}
							if (am == "오후") {
								$(".tuesday").attr("pm",am);
							}
	                    	break;
						case "수" : // 수요일
							$(".wednesday").addClass("today");
							$(".wednesday").removeClass("day");
							if (am == "오전") {
// 								alert("ok")
								$(".wednesday").attr("am",am);
							}
							if (am == "오후") {
								$(".wednesday").attr("pm",am);
							}
	                    	break;
						case "목" : // 목요일
							$(".thursday").addClass("today");
							$(".thursday").removeClass("day");
							if (am == "오전") {
// 								alert("ok")
								$(".thursday").attr("am",am);
							}
							if (am == "오후") {
								$(".thursday").attr("pm",am);
							}
	                    	break;
						case "금" : // 금요일
							$(".friday").addClass("today");
							$(".friday").removeClass("day");
							if (am == "오전") {
// 								alert("ok")
								$(".friday").attr("am",am);
							}
							if (am == "오후") {
								$(".friday").attr("pm",am);
							}
	                    	break;
						case "토" : // 토요일
							$(".saturday").addClass("today");
							$(".saturday").removeClass("saturday");
							if (am == "오전") {
// 								alert("ok")
								$(".saturday").attr("am",am);
							}
							if (am == "오후") {
								$(".saturday").attr("pm",am);
							}
	                    	break;
					}
				}
		    }
		});
	});

	//예약시 필요한 전역번수
	var year;
	var month;
	var day;
	var ampm;
	var doctor_num;
	var dept_num;
	var resdate
	
	//날짜 선택
	$(document).on("click",".today",function(){
		ampm = null;
		show();
		day = $(this).html();
		$("#cal_btn").html("");
		var am = $(this).attr("am");
		var pm = $(this).attr("pm");

		if (am != null){
			var resbtn = $("<button></button>").html("오전예약").addClass("res_am ampm_btn");
			$("#cal_btn").append(resbtn);
		}
		if (pm != null){
			var resbtn = $("<button></button>").html("오후예약").addClass("res_pm ampm_btn");
			$("#cal_btn").append(resbtn);
		}
	});

	//오전예약 선택
	$(document).on("click",".res_am",function(){
// 		alert(dept_num);
// 		alert(doctor_num);
// 		alert(day);
		year = $("#year").html();
		month = $("#month").html();
		month = month.substring(0,month.length-1);
		ampm = "오전";
		resdate = (year+"/"+month+"/"+day);
// 		resdate = new Date(year+"/"+month+"/"+day);
// 		var aa = confirm("gg");
// 		alert(aa)
		show();
	});
	
	//오후예약 선택
	$(document).on("click",".res_pm",function(){
		year = $("#year").html();
		month = $("#month").html();
		month = month.substring(0,month.length-1);
		ampm = "오후";
		resdate = (year+"/"+month+"/"+day);
		show();
	});

	//예약확정버튼
	$(document).on("click","#confirm_btn2",function(){
		if (ampm == null){
			alert("예약일을 정해주세요.");
			return false;
		}
		
		$.ajax({
		    url: "/insertRes",
		    method: "POST",
		    dataType: "json",
		    async: false,
		    data: {reser_date:resdate, reser_time:ampm, doc_no:doctor_num, dept_no:dept_num},
		    success: function(data) {
			    if(data.no > 3){
					alert("예약이 종료되었습니다. 다른날짜를 선택해주세요.");
					return false;
				}
				if (data.re >0){
					alert("예약에 성공하였습니다.");
					location.href="/resOk";
				} else {
					alert("예약에 실패하였습니다. 다시 예약해주세요.");
					return false;
				}
		    }
		});
	});
	
	$.ajax("/resDept",{success:function(data){
		$("#deptul").html("");
		for(let de of data){
			var li = $("<li></li>");
			var input = $("<input>").val(de.dept_no).attr({type:"radio",name:"dept_no",dname:de.dept_name}).addClass("res_dept");
			var text = $("<span></span>").html(" "+de.dept_name);
			$(li).append(input,text);
			$("#deptul").append(li);
		}
	}});
});
</script>
<body>


<!-- Header Start -->
<%--      <jsp:include page="/header.jsp"></jsp:include> --%>
<!-- 	Header End -->

<div class="row">
  <div class="column side">
  		<div>
  		<ul class="side_ul">
  		<h1 style="font-size: 23px;" class="leftTop">진료	예약</h1>		<!-- 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">진료과</a></li>			<!-- 서브 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">의료진</a></li>
		  <li class="side_li"><a href="">예약확인</a></li>
		  <li class="side_li"><a href="">마이페이지</a></li>
		</ul>
  	</div>
  </div>
  <div class="column middle">
  	
  	<div class="m1">
  		<h2>인터넷 진료예약</h2>
  		<img src="">
  	</div>
	
	<div class="m2">
		
		<div class="m2_1">
			<div class="tab">
			  <button class="tablinks" onclick="departMent(event, 'depart')">진료과 선택</button>
			  <button class="tablinks" onclick="doctor(event, 'doc')">의료진 검색</button>
			 
			</div>
			<div id="depart" class="tabcontent">
				<ul id="deptul">

			  	</ul>
			</div>
		
			<div id="doc" class="tabcontent">
				<div id="input">
				<p>찾으시는 의료진명을 입력해 주세요.</p>
				<input type="text">
				<button>찾기</button>
				</div>
			</div>
			
		</div>
		
		<div class="m2_2">
			<h3>예약하실 정보</h3>
			<p>환자명 : ${m.name }</p>
			<div class="m2_2btn">
			<button class="m2_2btn_1">환자정보확인</button>
			<button>최근예약</button>
			</div>
			<p>진료과 : <span id="deptname"></span></p>
			<p>의료진 : <span id="docname"></span></p>
			<p>진료일시 : <span id="resdate"></span></p>
			<p></p>
		</div>
	</div>
	
	<div class="m3">
		<div class="m3_1">
			<h3>의료진 선택</h3>
			<div class="doc_box">
				<ul id="res_doc">				
				</ul>
			</div>
		</div>
		<div class="m3_2">
			<h3>진료일정</h3>
			<div class="calendar">
				<div id="calendarDiv" style= "font-weight:bold;font-size:15pt;"></div>
			</div>
			<div id="cal_btn"></div>
			<div id="confirm_btn">
			<button class="confirmation_btn" id="confirm_btn2">
				예약확정하기
			</button>
			</div>
		</div>
	</div>  
  
  </div>
  <div class="column side"></div>
</div>

<!-- footer -->
 
<!-- //footer -->

</body>
</html>