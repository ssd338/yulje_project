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
    color: #94CCC4;   /* 각 페이지 색으로 지정*/
    font-family: 'noto-sans';
    text-align: center;
    margin-bottom: 10px;
}

.side_ul li a:hover,
.side_ul li a:focus {
   background-color:#94CCC4;   /* 각 페이지 색으로 지정*/
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
  
  /* 진료기록 목록 */
   .main_middle {
        clear: both;
      justify-content: center;     
      margin-bottom: 30px;
          
   }
   #th{ 
      margin-top:20px;
      border-top: solid 3px #CBE2B8;
      border-bottom: solid 3px #CBE2B8;
    padding: 10px 0px 10px 0px;
    height: 50px;
   }
   
   #th h4{
      float: left;
      margin: 0px 60px 0px 18px;
      padding:0px 40px 0px 10px;
      text-align: center;
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
   
   
   /* 진료기록 각 칼럼의 너비 */
  .date{
     width: 150px;
  } 
  .content{
     width: 250px;
  }
  .dept_name{
     width: 130px;
  }
  .doc_name{
     width: 130px;
  }
  
  #ul li span{
     display: inline-block;
     margin: 0px 60px 0px 18px;
      padding:0px 40px 0px 10px;
      text-align: center;
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
  
</style>
<link rel="stylesheet" href="newfooter.css">
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="header.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
   $(document).on("mouseenter",".btn_next",function(){
      $(this).addClass("btn_push");
   })
   $(document).on("mouseleave",".btn_next",function(){
      $(this).removeClass("btn_push");
   })

   //리스트를 생성하도록 ajax을 호출하는 함수
   function pagingAjax(totalData,dataPerPage,currentPage){   //매개변수로 총데이터의 수, 한페이지에 나타낼데이터 수, 현재 선택된 페이지
      $.ajax({
          url: "/allListClinic.ajax",
          method: "POST",
          data: {totalData:totalData, dataPerPage:dataPerPage,currentPage:currentPage},
          success: function(data) {            //data는 map을 담은 list이고 list안에는 해당 페이지에 맞는 레코드의 수가 들어있다
            if(data.length>0){               //진료 기록이 있다면
               var th = $("<span><h4 class='date'>진료날짜</h4><h4 class='content'>진료내용</h4><h4 class='dept_name'>진료과</h4><h4 class='doc_name'>담당의</h4></span>");
               var ul = $("<ul></ul>");
               $.each(data, function(idx, item){         
                  var li = $("<li></li>");
                  var date = $("<span class='date'></span>").html(item.cli_date);
                  var a = $("<a></a>").attr("href","/detailClinic?cli_no="+item.cli_no).html(item.cli_content);
                  var content = $("<span class='content'></span>").html(a);
                  var dept = $("<span class='dept_name'></span>").html(item.dept_name);
                  var doc = $("<span class='doc_name'></span>").html(item.doc_name);
            
                  $(li).append(date,content,dept,doc);
                  $(ul).append(li);
               });
               
               $("#th").html(th);
               $("#ul").html(ul);
            }
          }
      })
   }   
   
    var totalData = $("#cnt").val();    // 총 진료기록 수      6
    var dataPerPage = 5;    // 한 페이지에 나타낼 데이터 수
    var pageCount = 5;        // 한 화면에 나타낼 페이지 수
    
    function paging(totalData, dataPerPage, pageCount, currentPage){
        
        var totalPage = Math.ceil(totalData/dataPerPage);    // 총 페이지 수   2      올림(총 진료기록의 수 / 한페이지에 나타낼 데이터의 수)
        var pageGroup = Math.ceil(currentPage/pageCount);    // 페이지 그룹      1         (현재페이지/한화면에 나타낼 페이지수)
        
        var last = pageGroup * pageCount;    // 화면에 보여질 마지막 페이지 번호         //5
        if(last > totalPage)               //2
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
        if(totalData>0){                 //진료기록이 있는 경우
           $("#paging").html(html);    // 페이지 목록 생성
           $("#paging a").css("color", "black");
           $("#paging a#" + currentPage).css({"text-decoration":"none", 
                                              "color":"#CBE2B8", 
                                              "font-weight":"bold"});    // 현재 페이지 표시
        }else{                        //진료기록이 없는 경우
        	$("#ul").html("진료 이력이 없습니다.")
        } 

                                            
        $("#paging a").click(function(){         //숫자를 (a태그)를 눌렀을때 동작
            var $item = $(this);
            var id = $item.attr("id");
            var selectedPage = id;
            
            if(id === "next")    selectedPage = next;      //다음 혹은 이전이 눌렸는지 체크
            if(id === "prev")    selectedPage = prev;
            
            pagingAjax(totalData,dataPerPage,selectedPage);               //페이지에 맞는 레코드를 가져오는 ajax을 호출
            paging(totalData, dataPerPage, pageCount, selectedPage);      //밑에 페이징 번호표 [이전]12345[다음]이거 생성
            
        });
    }
    
    $("document").ready(function(){        
        paging(totalData, dataPerPage, pageCount, 1);                  //첫 화면의 페이징 처리 [이전]12345[다음]
        pagingAjax(totalData,dataPerPage,1);                        //첫 화면의 레코드   총데이터의 수, 한페이지에 나타낼데이터 수, 현재 선택된 페이지
         });

});
</script>
</head>
<body>

   
 <!-- Header Start -->
<%--      <jsp:include page="/header.jsp"></jsp:include> --%>
<!--    Header End -->
   
   <div class="row">
   
        <div class="column side" id="column_side_left">
           <!-- sidebar -->
     <div>
        <ul class="side_ul">
        <h1 style="font-size: 23px;" class="leftTop">진료기록 확인</h1>      <!-- 메뉴 이름 (페이지마다 다르게 지정) -->
        <li class="side_li"><a href="http://localhost:8080/haha/Reservation.html">진료예약</a></li>         <!-- 사이드 메뉴 이름 (페이지마다 다르게 지정) -->
        <li class="side_li"><a href="">진료예약 확인</a></li>
        <li class="side_li"><a href="http://localhost:8080/haha/listDept6.jsp">진료과</a></li>
        <li class="side_li"><a href="">문의게시판</a></li>
      </ul>
     </div>
     
     <!-- //sidebar -->
        
        </div>
        <!-- 메인부분 -->
        <div class="column middle">
           <div id="nameDiv">
           <span><h2 id="name">진료 기록</h2></span>
           </div>
         <div class="main_top">
              <div id="image"><img src='./image/doc.jpg' class='icon'></div>
              <input type="hidden" value="${cnt }" id="cnt">
              <div id="member"><h3>${name }님 | <span id="count">[<h4 style="color: pink;"> ${cnt } </h4>]</span>건의 진료기록이 있습니다</h3></div>
              <div id="announce"><ul>
              <li>진료기록확인은 최근 1년까지 조회가 가능합니다.</li>
              <li>단, 그 이전의 기록을 확인하실 경우 직접 방문, 전화로 문의주세요</li>
              <li>진료기록 문의: 02 - 3486 - 9600</li>
              </ul></div>
           </div>
           
           <div class="main_middle">
              <div id="th">
              
              </div>
              
              <div id="ul">
              
              </div>
         </div>
         <div class="main_under">
            <div class="next">
               <div id="paging"></div>
               <!-- <div id="next_span"><button class="btn_next">&lt;</button><button class="btn_next">1</button><button class="btn_next">2</button><button class="btn_next">&gt;</button></div> -->
            </div>
         </div>
     </div>      
     <div class="column side" id="column_side_right"> </div>
  </div>
   <!-- footer -->

   <!-- //footer -->
   

</body>
</html>