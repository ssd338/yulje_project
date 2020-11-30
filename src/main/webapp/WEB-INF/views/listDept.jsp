<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>


.texta:visited { color:white; }

#test{
	display:inline-block;
	margin:5px 23px 0 0px;
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

/*사이드바 end*/


   * {
     box-sizing: border-box;
   }
   /* 최종 상단에 진료과 라고 적힌 부분*/
   #name{
   	font-size: 30px;
   	border-left: 5px solid #CBE2B8;
   	padding-left: 40px;
   }
   
   /* 왼쪽에 외과 내과 일반과 팻말있는 부분 */
	.main_left{
	display: inline;
	float: left;
  	margin: 20px 0px 10px 10px;
  	height: 500px;
  	/*border: 1px solid pink; */
	}
	
	/* 상단에 검색, 정렬 있는 부분 */
	.main_search{
	 display: block;
	 height:70px;
	 padding-top:15px;
	 border-bottom: solid 3px #CBE2B8;
	}
	
   .main_top {
   	  margin-top:20px;
      justify-content: center;
      display: flex;     
   }
   .main_under, .main_middle {
      justify-content: center;
      display: flex;      
   }
   
  
   /* 아이콘 밑 글자 */
   .main_top h2{
   	 margin: 10px 0px 0px 0px;
   	/* 이미지 범위를 넘지 않는 폰트사이즈*/
   	font-size: 20px;
   }
   /* 아이콘 안의 글자들 h3태그 h4태그*/
   h3{
    margin: 0px;
   	padding-top:30px;
   	/* 이미지 범위를 넘지 않는 폰트사이즈*/
   	font-size: 20px;
   	color: white;
   }
   h4{
    display:inline;
    margin: 0px
   	padding:0px;
   	/* 이미지 범위를 넘지 않는 폰트사이즈*/
   	font-size: 15px;
   	color: white;
   }
   
   /* 아이콘 밑 글자 */
   .main_middle h2{
   	 margin: 10px 0px 0px 0px;
   	font-size: 20px;
   }
   /* 아이콘 밑 글자 */
   .main_under h2{
   	margin: 10px 0px 0px 0px;
   	font-size: 20px;
   }
   
   
   .main_hover{
   	  background-color: #94CCC4;
      width: 160px;
      height: 170px;
      margin: 10px;
   }
   
   .main_block{
      border: 1px solid #94CCC4;
      width: 165px;
      height: 170px;
      margin: 0px 20px 20px 0px;
       /* 이미지를 가운데에 넣으려고 해봄 */
      text-align:center;
   }
   
   
   

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
     clear: both;
     */
   }
   
   /* Create three unequal columns that floats next to each other */
   .column {
    float: left;
  padding: 10px;
  height: 1000px;

   }
   .column.side {
   		 width: 300px;
	  
	}
	/* Middle column */
	.column.middle {
	width: 1000px;
	}
   
   
   
  
   

}   
	/*main_search 속 - 진료과 목록 위에 정렬*/
	.search_radio{
		float: left;
		margin-top:8px;
		padding-top:10px;
		height:40px;
	}
	
	.container{
	 font-size: 19px;
	 margin: 0px 18px 0px 8px;
	}

	/*main_search 속 - 진료과 목록 위에 검색창*/
	.search{
	float: right;
	height:50px;
	margin: 0px;
	padding:5px 0px 0px 0px;
	}
	
	
	/*main_search 속 - 진료과 목록 위에 검색창*/
	.text{
	width:280px;
	height: 35px;
    padding-right: 10px;
    padding-left: 10px;
    border: 1px solid #ccc;
    color: #666;
    font-size: 16px;
	}
	.btnSearch{
	 background-color: #CBE2B8;
	 width: 70px;
     height: 35px;
     padding: 0 10px;
     color: #fff;
     font-size: 16px;
     letter-spacing: -.8px;
     line-height: 1.5;
	}
	.a{
		
	}
	
	/*진료과 아이콘 설정*/
   .icon{
    width:100px;
    height:100px;
   }  
	.icon2{
	display:inline;
	margin:20px 10px 0px 15px;
	}
	
	/* 왼쪽 main_left의 메뉴들 (내과 외과 )*/
   .main_left_item{
   	border: solid 1px #CBE2B8;
   	width: 95px;
    height: 50px;
    background-color: #CBE2B8;
   }
   .main_left_item h2{
   	padding-top:8px;
   	text-align: center;
   	margin:0px;
   	color: white;
   }
   .none{
   	margin-top:140px;
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
   
  
 

</style>
<link rel="stylesheet" href="newfooter.css">
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="header.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	var deptname = new Array();
	var span1 = new Array();
	var span2 = new Array();
	var search = $("#search").val();    // 검색어

	$(".btnSearch").click(function(){
		$(".main_top").empty();
		$(".main_middle").empty();
		$(".main_under").empty();
		
		search = $("#search").val();								// 검색어를 가져옴
		listDeptfunction(search);
	})

	 $("document").ready(function(){  			//시작시 화면에 부서목록을 띄워주도록 ajax메소드를 호출
		listDeptfunction(search)    
	  });
	 

	function listDeptfunction(search){				// 모든 부서의 목록을 띄워주는 ajax
		$.ajax({
	        url: "/listDept.ajax",
	        method: "POST",
	        data: {search:search},
	        dataType : "json",
	        async:false,
	        success: function(data) {
				$.each(data, function(idx,item){
					var layer = new Array(".main_top",".main_middle",".main_under")	//부서의 위치 class를 담은 배열
					var where						//해당 부서가 위치할 자리(class)를 담는 변수
					if(item.dept_group == '내과'){	//어느 부서인지에 따라서 위치를 정함
						where = layer[0]
					}else if(item.dept_group == '외과'){
						where = layer[1]
					}else if(item.dept_group == '일반과'){
						where = layer[2]
					}
					var no = item.dept_no
					deptname[no] = item.dept_name
					
					var dname = $("<h2></h2>").html(deptname[no])
					var deptimg = $("<img>").attr("src","./image/"+item.icon).addClass("icon")
					span1[no] = $("<span></span>").append(dname)
					span2[no] = $("<span></span>").append(deptimg)
					var div = $("<div></div>").addClass("main_block")
					div.append(span1[no], span2[no])
					$(div).attr("dept_no",no);			// 부서번호-마우스 호버와 의료진목록,예약을 연결하기 위해 담음 
					$(where).append(div);
	
				}) //반복문끝
	        }
		}) //ajax끝
	}

		$(document).on("mouseenter",".main_block",function(){
			
			 $(this).empty();
			 $(this).addClass("main_hover");
			 var no = $(this).attr("dept_no");
			 $(this).append("<span><h3>"+deptname[no]+"</h3></span>");
			 $(this).append("<span><a href='listDoctor'><img src='./image/doc22.jpg' class='icon2'></a></span>");
			 $(this).append("<span><a href='#'><img src='./image/r.jpg' class='icon2'></a></span>");
			 $(this).append("<span id='test'><h4><a class='texta' href='listDoctor'>의료진</a></h4></span>");
			 $(this).append("<input type='hidden' class='deptname' value='"+deptname[no]+"'>");
			 $(this).append("<span><a class='texta' href='#'><h4>예약</h4></a></span>");
			
		});
	
		$(document).on("mouseleave",".main_hover",function(){
			$(this).empty();
			
			var no = $(this).attr("dept_no");
			$(this).append(span1[no], span2[no])
			$(this).removeClass("main_hover");
		});	
});
			
</script>
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
  		<h1 style="font-size: 23px;" class="leftTop">진료과/의료진</h1>		<!-- 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="/listDept">진료과</a></li>			<!-- 사이드 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="/listDoctor">의료진</a></li>
		  
		  

		</ul>
  	</div>
  	
  	<!-- //sidebar -->
     	
     	</div>
     
     <!-- 메인 -->
     <section>
     <div class="column middle">
     	<div id="nameDiv">
     	<span><h1 id="name">진료과</h1></span>
     	</div>
     	<!-- 진료과 위에 검색이랑 정렬 놓는 부분 -->
     	<div class="main_search">
     		<div class="search">
     			<input type="text" name="search" class="text" id="search">
     			<button class="btnSearch">검색</button>
     		</div>
     	</div>
     	
	     	<div class="main_left">
	     	<!-- 왼쪽에 외과,내과,일반과 팻말 -->
	     		<div class="main_left_item">
	     			<span><h2>내과</h2></span>
	     		</div>
	     		<!-- none은 그냥 빈 공간용 -->
	     		<div class="none">
	     			<span></span>
	     		</div>
	     		<div class="main_left_item">
	     			<span><h2>외과</h2></span>
	     		</div>
	     		<div class="none">
	     			<span></span>
	     		</div>
	     		<div class="main_left_item">
	     			<span><h2>일반과</h2></span>
	     		</div>
	     		</div>
	        <div class="main_top">
	        </div>
	        <div class="main_middle">
	        </div> 
	        <div class="main_under">
	        </div>   
	  </div>
	        
	     
   <div class="column side" id="column_side_right" > </div>
   </section>
   </div>
   <!-- footer -->
   <jsp:include page="/footer.jsp"></jsp:include>
   <!-- //footer -->
   
   

</body>
</html>