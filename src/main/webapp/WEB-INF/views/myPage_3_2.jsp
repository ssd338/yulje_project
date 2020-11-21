<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   
   #mypage_title{
      text-align: center;
      height: 80px;
      padding-top: 20px;
      
         
   }
   
   #mypage_box{
      width: 816px;
      height: 80px;
      background-color: #FCF8F2;
      z-index: 0px;
      text-align: center; 
      display: flex;
      justify-content: center;
      padding-top: 25px;
         
   }
   
   #mypage_box_div1{            
      height: 30px;
      width: 150px;
      color: #5D5D5D;
      text-align: center;
      
   }
   
   #mypage_box_div2{            
      height: 30px;
      width: 150px;
      text-align: center;
      color : #94CCC4;
      font-weight: bold;
      border-bottom: 3px solid #94CCC4;
   }
   
   #mypage_box_empty{
      height: 30px;
      border-right: 2px solid #EAEAEA;
      margin-left: 10px;
      margin-right: 10px;
   
   }
   
    #mypage_box_empty img{
      margin-right: 10px;
   
   }
   
   #mypage_box_div1:hover{
      color : #94CCC4;
        font-weight: bold;
        border-bottom: 3px solid #94CCC4;
   }
   
   #mypage_box_div2:hover{
      color : #94CCC4;
        font-weight: bold;
        border-bottom: 3px solid #94CCC4;
   }
   
   
      
   .mypage_detail_under{
      width: 817px;
      margin-left: 26px;
      margin-top: 1px;
      
   }
   
   
   #mypage_title_sub{
      width: 760px;
      height: 400px;
      border: 1px solid #EAEAEA;
      border-top: 3px solid #94CCC4;
      border-bottom: 3px solid #94CCC4;
   }
   
   ul, li{
      font-size: 14px;
      margin-left: 10px;
      margin-top: 10px;
   }
   
   
   
   #mypage_title_sub h3{
      text-align: center;
      color: #5D5D5D;
      font-weight: bold;
      padding-top: 30px;
      padding-bottom: 30px;
   
   }
   
   #mypage_title_idpw{
      margin-top: 80px;
      
   
   }
   
   
   #mypage_title_sub_span1{
      margin-left: 220px;
      color: #5D5D5D;
            
   }
   
   #mypage_title_sub_span2{
      margin-left: 220px;
      color: #5D5D5D;
         
   }
   
   #mypage_title_sub_span3{
      margin-left: 220px;
      color: #5D5D5D;
         
   }
   
   .pw_input{
      width: 300px;
      height: 40px;
      border: 1px solid #EAEAEA;
   }
   
   #mypage_title_btn{
      text-align: center;
      width: 760px;
      height: 150px;
   }
   
   #mypage_title_btn1{
      border-radius: 10px;
      width: 150px;
      height: 35px;
      border: 1px solid #94CCC4;
      background-color: #94CCC4;
      color: #ffffff;
      font-weight: bold;
      margin-top: 55px;
   }
   
   #mypage_title_btn2{
      border-radius: 10px;
      width: 150px;
      height: 35px;
      border: 1px solid #94CCC4;
      background-color: #ffffff;
      color: #94CCC4;
      font-weight: bold;
      margin-top: 55px;
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

</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
   
   function checkPassword(password,id){      //비밀번호 문자열 체크 
      //자리수 부족
      if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{10,15}$/.test(password)){
         alert('숫자와 영문자, 특수문자 조합으로 10~15자리를 사용해야 합니다.');
         return false;
      }
      // 올바른 조합인지
      var specail = password.search(/[!@#$%^*+=-]/g);
      var checkNumber = password.search(/[0-9]/g);
      var checkEnglish = password.search(/[a-z]/ig);
      if(checkNumber <0 || checkEnglish <0 || specail <0){
         alert("숫자와 영문자, 특수문자를 혼용하여야 합니다.");
         return false;
      }
      //연속된 문자
      if(/(\w)\1\1\1/.test(password)){
         alert('같은 문자를 연속으로 4번 이상 사용하실 수 없습니다.');
         return false;
      }
      if(password.search(id) > -1){
         alert("비밀번호에 아이디가 포함되었습니다.");
         return false;
         }
      return true;
   }
   
   //수정 버튼이 눌렸을때 -새비밀번호와 비밀번호 확인이 일치하는지 체크
   $("#mypage_title_btn1").click(function(){            //#newpwd1는 새비밀번호 /#newpwd2는 새비밀번호 확인
      if($("#newpwd1").val() !== $("#newpwd2").val()){   //입력된 새로운 비밀번호와 비밀번호 확인의 값이 같은지 비교해서 다를경우
         alert("입력하신 새비밀번호와 비밀번호 확인이 일치하지 않습니다.")   
         return false;
      }
      if($("#newpwd1").val() === $("#newpwd2").val()){   //입력된 새로운 비밀번호와 비밀번호 확인의 값이 일치
         
         return checkPassword($("#newpwd1").val(),$("#id").val());               //비밀번호 형식체크 함수 호출
      }
   })
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
              <div id="mypage_box">
                   <a href="/myPage_2"><div id="mypage_box_div1">개인정보수정</div></a>
                    <div id="mypage_box_empty"></div>
                    <a href="/myPage_3"><div id="mypage_box_div2">비밀번호 변경</div></a>
                 </div>
              <div id="mypage_title">
                 <h2>비밀번호 변경</h2>
              </div>
           <div class="mypage_detail_under">
              <div id="mypage_title_sub">
              <ul>
                 <li>비밀번호는 영문 대소문자, 숫자, 특수문자를 조합하여 10~15자리입니다.</li>
                 <li>아이디와 동일한 비밀번호를 사용하는 것을 제한하고 있습니다.</li>
                 
            </ul>
            <form ation="/myPage_3" method='post'>
               <div id="mypage_title_idpw">
                  <input type="hidden" value="${id }" id="id">
                    <span id="mypage_title_sub_span1"><input type="text" class="pw_input" placeholder="현재 비밀번호" name='oldpwd'></span><br>
                    <span id="mypage_title_sub_span2"> <input type="text" class="pw_input" placeholder="새 비밀번호" name='newpwd1' id="newpwd1"></span><br>
                    <span id="mypage_title_sub_span3"><input type="text" class="pw_input" placeholder="새 비밀번호 확인" name="newpwd2" id="newpwd2"></span><br>
                    
                 </div>
              </div>
              <div id="mypage_title_btn">
                 <button id="mypage_title_btn1">확인</button>
              </form>
                 <button id="mypage_title_btn2">취소</button>
              </div>
                   
           </div>
           </div>   
           
        </div>
           
   </div>
   </div>
        
     
   
   <jsp:include page="footer1.jsp"></jsp:include>

   

</body>
</html>