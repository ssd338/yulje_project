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
      margin: 0px 35px 0px 35px;
      padding:0px 35px 0px 35px;
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
   
   table{
   margin-top : 25px;
   border: 1px solid #f2f2f2;
   margin-left: 80px;
}

td {
   width: 180px;
   height: 50px;
}

.title{
   background-color: #f2f2f2;
   width: 150px;
   font-size: 15px;
   text-align: center;
   
}
   /* 진료기록 각 칼럼의 너비 */
  .regi_no{
     width: 150px;
  } 
  .patients_name{
     width: 120px;
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
  
    #ul li span{
     display: inline-block;
     margin: 0px 35px 0px 35px;
     padding:0px 35px 0px 35px;
     text-align: center;
  }
    
#member h3{
	display: inline;
}

#clinicBtn{
	margin-left: 10px;
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
          url: "/listRegister.ajax",
          method: "POST",
          data: {totalData:totalData, dataPerPage:dataPerPage,currentPage:currentPage},
          async:false,
          success: function(data) {            //data는 map을 담은 list이고 list안에는 해당 페이지에 맞는 레코드의 수가 들어있다
            if(data.length>0){                  //들어온 예약이 있다면
               //접수번호 환자명 진료과 담당의 진료날짜   
               var th = $("<span><h4 class='regi_no'>접수번호</h4><h4 class='patients_name'>환자명</h4><h4 class='dept_name'>진료과</h4><h4 class='doc_name'>담당의</h4><h4 class='date'>진료날짜</h4></span>");
               var ul = $("<ul></ul>");
               $.each(data, function(idx, item){         
                  var li = $("<li class='regiList'></li>");
                  var formatdate = new Date(item.date);          //예약일을 DATE포맷을 적용
                  formatdate = getFormatDate(formatdate)  
                  var regi_no = $("<span class='regi_no'></span>").html(item.regi_no)
          		  var hidden = $("<input type='hidden'>").attr("value",item.regi_no).addClass("regin")
          		  regi_no.append(hidden)
          		  
                  var patients_name = $("<span class='patients_name'></span>").html(item.member_name);
                  hidden = $("<input type='hidden'>").attr("value",item.member_name).addClass("patientsn")
          		  patients_name.append(hidden)
          		  
                  var dept = $("<span class='dept_name'></span>").html(item.dept_name);
                  var hidden = $("<input type='hidden'>").attr("value",item.dept_no).addClass("deptno")
          		  dept.append(hidden)
          		  
                  var doc = $("<span class='doc_name ddn'></span>").html(item.doc_name);
                  hidden = $("<input type='hidden'>").attr("value",item.doc_no).addClass("docno")
          		  doc.append(hidden)
          		  
                  var date = $("<span class='date'></span>").html(formatdate);
                  hidden = $("<input type='hidden'>").attr("value",formatdate).addClass("regid")
          		  date.append(hidden)
                  

                  $(li).append(regi_no,patients_name,dept,doc,date);
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
            listClick();
            clinicBtn1()
         });
    }

   
    
    $("document").ready(function(){
        paging(totalData, dataPerPage, pageCount, 1);                  //첫 화면의 페이징 처리 [이전]12345[다음]
        pagingAjax(totalData,dataPerPage,1);                        //첫 화면의 레코드   총데이터의 수, 한페이지에 나타낼데이터 수, 현재 선택된 페이지
        listClick();
        clinicBtn1()
      });
     
    function getFormatDate(date){
        var year = date.getFullYear();              //yyyy
        var month = (1 + date.getMonth());          //M
        month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
        var day = date.getDate();                   //d
        day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
        return  year + '-' + month + '-' + day;     //'-' 추가하여 yyyy-mm-dd 형태 생성 가능
    }

    function listClick(){							//진료 접수 목록을 눌렀을때 진료기록을 남기는 폼으로 값이 가도록 하는 메소드
	    $(".regiList").click(function(){
	    	$("#register_no").html($(this).find('.regin').val())	    	
	    	$("#member_name").html($(this).find('.patientsn').val())
	    	var input = $("<input type='hidden'>").attr("value",$(this).find('.deptno').val()).addClass("dept_no")
	    	$("#department_name, #docter_name").empty()
	    	$("#department_name").append($(this).find('.dept_name').text(),input)
	    	
	    	input = $("<input type='hidden'>").attr("value",$(this).find('.docno').val()).addClass("doc_no")	
	    	$("#docter_name").append($(this).find('.doc_name').text(), input)
	    	$("#register_date").html($(this).find('.regid').val())
	    }) 
    }

	function clinicBtn1(){							//진료기록 등록버튼 눌렀을때
		$("#clinicBtn").click(function(){			//진료기록을 적는 폼의 값을 변수에 담아서 ajax통신으로 보냄
			var NO = $("#register_no").text()
			var Mname = $("#member_name").text()
			var DEPTname = $("#department_name").text()
			var DOCname = $("#docter_name").text()
			var DATE = $("#register_date").text()
			var CONTENT = $("#cli_content").val()
			var MEDI = $("#medicine").val()
			var DOCNO = $(".doc_no").val()
			var DEPTNO = $(".dept_no").val()
			$.ajax({
	          	url: "/adminInsertClinic.ajax",
	          	method: "POST",
	          	data: {no:NO, mname:Mname,deptname:DEPTname,docname:DOCname,date:DATE,content:CONTENT,medi:MEDI,docno:DOCNO,deptno:DEPTNO},
	          	async:false,
	          	success: function(data) {
		          	alert(data)
	          	}
			})
		})
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
           <span><h2 id="name">진료접수창</h2></span>
           </div>
         <div class="main_top">
              <input type="hidden" id="cnt" value="${cnt }">
              <div id="member"><h3>진료접수</h3><button id="clinicBtn">진료기록 등록</button></div>
           </div>
           <div class="main_middle">
                <table>
                 <tr>
                  <td class="title">진료번호</td><td id="register_no"></td>
                  <td class="title">환자명</td><td id="member_name"></td>
                  <td rowspan="3" class="title" height="50px">진료내용</td>
                  <td rowspan="3"><textarea rows="10" cols="25" id="cli_content" name="cli_content"></textarea></td>            
                 </tr>
                 <tr> 
                  <td class="title">담당의</td><td id="docter_name"></td>
                  <td class="title">날짜</td><td id="register_date"></td>
                 </tr>
                 <tr> 
                 <td class="title">진료과</td><td id="department_name"></td>
                 <td class="title">약품번호</td><td><textarea rows="3" cols="22" id="medicine" name="medicine"></textarea></td>      
                 </tr>
               </table>
              <div id="th">

              </div>
              
              <div id="ul">
              
              </div>
         </div>
         <div class="main_under">
            
     </div>      
     <div class="column side" id="column_side_right"> </div>
  </div>
</div>  
   <!-- footer -->
   <jsp:include page="/footer.jsp"></jsp:include>
   <!-- //footer -->
</body>
</html>