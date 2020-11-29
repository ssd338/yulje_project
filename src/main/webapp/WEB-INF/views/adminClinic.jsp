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
   
   table{
   margin-top : 25px;
   border: 1px solid #f2f2f2;
   margin-left: 100px;
}

td {
   width: 200px;
   height: 50px;
}

.title{
   background-color: #f2f2f2;
   font-size: 15px;
   text-align: center;
   
}

</style>
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
              <div id="member"><h3>관리자님 진료접수 부탁드립니다.</h3></div>
           </div>
           <div class="main_middle">
                <table>
					  <tr>
					   <td class="title">진료번호</td><td id="cli_no"></td>
					   <td class="title">진료과</td><td id="dept_name"></td>			   
					  </tr>
					  <tr> 
					   <td class="title">담당의</td><td id="doc_name"></td>
					   <td class="title">날짜</td><td id="date"></td>
					  </tr>
					  <tr>
					   <td class="title">환자명</td><td id="member_name"></td>
					   <td class="title" height="200px">진료내용</td>
					   <td colspan="2"><textarea rows="10" cols="50" id="cli_content" name="cli_content"></textarea></td>
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