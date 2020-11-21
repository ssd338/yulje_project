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
   
   .mypage_title{
      text-align: center;
      height: 80px;
      padding-top: 20px;
      
   
   }
   
   .mypage_detail_under{
      width: 760px;
      height: 375px;
      margin-left: 26px;
      margin-top: 1px;
      border: 1px solid #EAEAEA;
      border-top: 3px solid #94CCC4;
      
      
   }
   
   .mypage_detail_under h3{
      margin-top: 30px;
      margin-left : 10px;
   
   }
   
   .mypage_detail_under li{
      font-size: 14px;
      margin-top: 25px;
      margin-bottom: 25px;
      margin-left : 10px;
      font-weight: normal;
   
   }
   
   
   textarea{
      border: 1px solid #EAEAEA;
      margin-left: 60px;
   }
   
   .agreement_radio{
      margin-top:15px;
      justify-content: center;
      display: flex;
   
   }
   
   #mypage_detail_myinfo_information{
      margin-top: 25px;
   }
   
   
   .mypage_detail_myinfo{
      margin-top:50px;
      border: 1px solid #EAEAEA;
      width: 760px;
      height: 200px;
      text-align: center;
      
   }
   
   .pw_input{
      width: 300px;
      height: 40px;
      border: 1px solid #EAEAEA;
   }
   
   #mypage_detail_myinfo_btn1{
      border-radius: 10px;
      width: 150px;
      height: 35px;
      border: 1px solid #94CCC4;
      background-color: #94CCC4;
      color: #ffffff;
      font-weight: bold;
      margin-top: 17px;
   }
   
   #mypage_detail_myinfo_btn2{
      border-radius: 10px;
      width: 150px;
      height: 35px;
      border: 1px solid #94CCC4;
      background-color: #ffffff;
      color: #94CCC4;
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
   
   .swal-button 
   { 
   background-color: #94CCC4;
   font-size: 12px;
   text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.3);
   }   
   
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src = " https://unpkg.com/sweetalert/dist/sweetalert.min.js "></script>
<link rel="styleseet" href="https://unpkg.com/sweetalert/dist/sweetalert.min.js">
<script type="text/javascript">
$(function(){

   $(document).on("click","#mypage_detail_myinfo_btn1", function() {
        var radio_check01 = $(':input[name=radio_check01]:radio:checked').val();
         if( radio_check01 === 'agree' ){
               return true;
           }else{
              swal("","동의가 필요합니다.","error");
                 return false;
           }
    })

       /* 입력부분에 입력했는지 */
   $(document).on("click","#mypage_detail_myinfo_btn1",function check() {
      
       var name = $("#name").val().trim();
       if(name == ""){
          swal("","이름을 입력하세요.","warning");
            return false;
      }   
       var reser_no = $("#reser_no").val().trim();
       if(reser_no == ""){
          swal("","예약 번호를 입력해주세요.","warning");
            return false;
         } 
         
   })
   
});   
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
                 <h2>진료예약현황</h2>
              </div>
              
              <div class="mypage_detail_under">
                 <div>
                    <ul>
                       <h3>환자등록번호 확인</h3>
                     <li><h4>환자등록번호란 진료시 발급해드린 환자번호(8자리 숫자)로 진료 예약 조회 시 본인 확인을 위해 필요합니다.</h4></li>
                  </ul>
               </div>
               <div id="mypage_detail_agreement">
               <textarea rows="10" cols="100" readonly="readonly">
인터넷 진료예약 시 개인정보 수집, 이용 동의
1. 수집하는 개인정보 항목 
성명, 환자등록번호

2. 수집이용 목적
진단 및 치료를 위한 진료 예약

3. 보유 및 이용 기간
수집된 개인정보는 현재 페이지에서 병원 환자정보를 조회하고 즉시 폐기됩니다.


4. 개인정보의 수집, 이용에 대한 동의 거부
본인은 위와 같이 개인정보를 수집, 이용하는데 대한 동의를 거부할 권리가 있습니다. 단, 동의를 거부할 경우 진료예약 조회가 불가하오니 참고하시기 바랍니다.
               </textarea>
               <form action="/myPage_4" method="post">
               <div class="mypage_detail_agreement_radio">
                       <div class="agreement_radio">
                           <div class="input_radio">
                                 <input type="radio" name="radio_check01" id="rdAgree1_1" value="agree"/>
                                 <label for="rdAgree1_1">동의합니다.</label>
                        </div>
                        <div class="input_radio">
                            <input type="radio" name="radio_check01" id="rdAgree1_2" value="NOagree"/>
                            <label for="rdAgree1_2">동의하지 않습니다.</label>
                        </div>
                       </div>
                   </div>

                   <div class="mypage_detail_myinfo">
                   
                      <div id="mypage_detail_myinfo_information">
                         <span id="mypage_detail_myinfo_span1"><input type="text" class="pw_input" name="name" id="name" placeholder="성함"></span><br><br>
                       <span id="mypage_detail_myinfo_span2"> <input type="text" class="pw_input" name="reser_no" id="reser_no" placeholder="진료예약번호"></span><br>
                    </div>
                      <div id="mypage_detail_myinfo_btn">
                         <button id="mypage_detail_myinfo_btn1">확인</button>
                         </form>
                         <button id="mypage_detail_myinfo_btn2" type="button" onClick="location.href='/myPage_4'">취소</button>

                      </div>
                   </div>

               </div>
              </div>
                   
           </div>
              
           
        </div>
           
   </div>
   </div>
        
     
   
   <jsp:include page="footer1.jsp"></jsp:include>

   

</body>
</html>