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
   }
   /* 제목 부분 */
   #nameDiv
   { 
   clear:both;
   justify-content: center; 
   display: flex; 
   display:inline-block;
   margin:5px 0 5px 0;
   width:886px; 
   border-left: 5px solid #CBE2B8;
   padding-left: 40px;
   }
   
   #name
   {
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
      justify-content: center;
      display: flex; 
      display:inline-block;  
      margin-top:20px;
      width:960px;  

   }
   #member{
   float: left;
   margin: 20px 0px 0px 20px;
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
      margin: 0px 5px 0px 5px;
      padding:0px 5px 0px 5px;
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
  .reser_no{
     width: 90px;
  } 
  .patients_name{
     width: 120px;
  }
  .patients_tel{
     width: 150px;
  }
  .dept_name{
     width: 200px;
  }
  .doc_name{
     width: 120px;
  }
  .date{
     width: 200px;
  } 
  .time{
     width: 120px;
  }
  .register{
   width: 100px;
  }

  
  #ul li span{
     display: inline-block;
     margin: 0px 5px 0px 5px;
     padding:0px 5px 0px 5px;
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
   
  

/* Create three unequal columns that floats next to each other */
.column {
  float: left;
  padding: 10px;
  height: 1000px;
}

/* Left and right column */
.column.side {
   width: 200px;
}

/* Middle column */
.column.middle {
    width: 1200px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
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
</style>
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
          url: "/listReservation.ajax",
          method: "POST",
          data: {totalData:totalData, dataPerPage:dataPerPage,currentPage:currentPage},
          async:false,
          success: function(data) {            //data는 map을 담은 list이고 list안에는 해당 페이지에 맞는 레코드의 수가 들어있다
            if(data.length>0){                  //들어온 예약이 있다면
                                        //예약번호,  환자이름, 환자 연락처, 진료과, 의료진, 예약일, 예약시간
               var th = $("<span><h4 class='reser_no'>예약번호</h4><h4 class='patients_name'>환자이름</h4><h4 class='patients_tel'>환자연락처</h4><h4 class='dept_name'>진료과</h4><h4 class='doc_name'>담당의</h4><h4 class='date'>예약일</h4><h4 class='time'>예약시간</h4><h4 class='register'>진료접수</h4></span>");
               var ul = $("<ul></ul>");
               $.each(data, function(idx, item){         
                  var li = $("<li></li>");
                  var date = new Date(item.reserDate);          //예약일을 DATE포맷을 적용
                  date = getFormatDate(date)         
                  var reser_no = $("<span class='reser_no'></span>").html(item.reser_no);
                  var patients_name = $("<span class='patients_name'></span>").html(item.member_name);
                  var patients_tel = $("<span class='patients_tel'></span>").html(item.member_tel);
                  var dept = $("<span class='dept_name'></span>").html(item.dept_name);
                  var doc = $("<span class='doc_name'></span>").html(item.doc_name);
                  var date = $("<span class='date'></span>").html(date);
                  var time = $("<span class='time'></span>").html(item.reserTime);
                  var regisertBtn = $("<span class='register'><button class='regibtn' value='"+item.reser_no+"'>진료접수</button></span>")

                  

                  $(li).append(reser_no,patients_name,patients_tel,dept,doc,date,time,regisertBtn);
                  $(ul).append(li);
               });
               
               $("#th").html(th);
               $("#ul").html(ul);

               
            }
          }
      })
     
   }   
   
    var totalData = $("#cnt").val();    // 총 진료기록 수      6
    var dataPerPage = 10;    // 한 페이지에 나타낼 데이터 수
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
            regiBtn()
        });
    }

   
    
    $("document").ready(function(){
        paging(totalData, dataPerPage, pageCount, 1);                  //첫 화면의 페이징 처리 [이전]12345[다음]
        pagingAjax(totalData,dataPerPage,1);                        //첫 화면의 레코드   총데이터의 수, 한페이지에 나타낼데이터 수, 현재 선택된 페이지
        regiBtn()
    });
    
    function regiBtn(){                                       //진료접수 버튼 동작
       $(".regibtn").click(function(){                           //버튼에 있는 예약번호를 가져옴
         var reserno = $(this).val();
         alert(reserno)
         $.ajax({
             url: "/insertRegister.ajax",                        //진료접수해줌(register에 등록)
             method: "POST",
             data: {reserno:reserno},
             async:false,
             success: function(data) {
            alert(data)                                    //접수 메세지
             }
         })
       })
    } 
    
    function getFormatDate(date){
        var year = date.getFullYear();              //yyyy
        var month = (1 + date.getMonth());          //M
        month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
        var day = date.getDate();                   //d
        day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
        return  year + '-' + month + '-' + day;       //'-' 추가하여 yyyy-mm-dd 형태 생성 가능
    } 
});
</script>
</head>
<body>

   
 <!-- Header Start -->
      <jsp:include page="/header.jsp"></jsp:include>
<!--    Header End -->
   
   <div class="row">
   
        <div class="column side" id="column_side_left">

        
        </div>
        <!-- 메인부분 -->
        <div class="column middle">
           <div id="nameDiv">
           <span><h2 id="name">예약접수창</h2></span>
           </div>
         <div class="main_top">
              <input type="hidden" value="${cnt }" id="cnt">
              <div id="member"><h3>관리자님 | <span id="count">[<h4 style="color: pink;"> ${cnt } </h4>]</span>건의 진료접수 대기가 있습니다</h3></div>
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
     <div class="column side" id="column_side_right"> </div>
  </div>
</div>  
   <!-- footer -->
   <jsp:include page="/footer.jsp"></jsp:include>
   <!-- //footer -->
   

</body>
</html>