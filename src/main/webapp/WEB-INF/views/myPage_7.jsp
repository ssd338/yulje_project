<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- myPage_7 회원정보 수정 -->
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
   
   a{
      text-decoration: none;
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
      color: #5D5D5D;
      text-align: center;
   }
   
   #mypage_box_empty{
      height: 30px;
      border-right: 2px solid #EAEAEA;
      margin-left: 10px;
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
      height: 280px;
      border: 1px solid #EAEAEA;
      border-top: 3px solid #94CCC4;
      border-bottom: 3px solid #94CCC4;
   }
   
   
   #mypage_title_sub h4{
      text-align: center;
      float:left;
      color: #5D5D5D;
      font-weight: bold;
      margin:0px;
      padding: 5px 0 0 10px;
   }
   
   
   .mypage_title_sub_div1{
      border-bottom: 1px solid #94CCC4;
      height: 35px;
   }
   
   .mypage_title_sub_span2{
      float:right;
      margin:5px 10px 0 0;
   }
   
 /* 정보수정 입력창 부분 */  
   .table_area{
      margin: 20px 20px 20px 20px;
      
   }
   .table_input{
   display: inline;
   }
   .table_tr{
      margin:5px 0 10px 5px;
   }
   
   #table_span1{
      margin-left:110px;
   }
   #table_span2{
      margin-left:95px;
   }
   #table_span3{
      margin-left:35px;
   }
   #table_span4{
      margin-left:70px;
   }
   #table_span5{
      margin-left:109px;
   }
   #table_span6{
      margin-left:145px;
   }
    #table_span7{
      margin-left:85px;
   }
   .text-2{
   width: 100px;
   font-size: 14px;
}
/* 정보수정 입력창 부분 끝 */   

/* 입력확인 버튼 */  
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
   #mypage_title_btn3{
     border-radius: 3px;
      width: 70px;
      height: 26px;
      border: 1px solid #94CCC4;
      background-color: #94CCC4;
      color: #ffffff;
      font-weight: bold;
      margin: 0 0 0 10px;
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
   
   
   #addr1 {
   width: 100px;
   }

   #addr2 {
   width: 333px;
   }
   
   #addr3 {
   width: 333px;
   }
   
   /*삭제 버튼*/
    #delete_btn{
        border-radius: 5px;
      width: 70px;
      height: 25px;
      border: 1px solid red;
      background-color: #ffffff;
      color: red;
      font-weight: bold;
      margin-left: 670px;
      margin-top: 80px;
   } 
     /* 경고 모달 끝*/ 
   
      /* 경고 모달 */   
   .white_content {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.8);
    opacity:0;
    -webkit-transition: opacity 400ms ease-in;
    -moz-transition: opacity 400ms ease-in;
    transition: opacity 400ms ease-in;
    pointer-events: none;
   }
   
   .white_content:target {
    opacity:1;
    pointer-events: auto;
   }
   
   .white_content > div {
   position: absolute;
   top: 25%;
   left: 25%;
   width: 50%;
   height: 40%;
   padding: 16px;
   border: 2px solid black;
   background-color: white;
   overflow: auto;   
   }
   
   #delete{
      margin-bottom: 10px;
      color: black;
      font-size: 18px;
      text-align: center;
   }  
   
   #red{
      color: red;
      font-size: 20px;
      text-align: center;
      font-weight: bold;
      margin-bottom: 10px;
      
   }
   
   #Xbtn{
     width: 20px;
     height: 20px;
     border: 1px solid red;
     background-color: #ffffff;
     color: red;
     font-weight: bold;
     margin-left: 700px;  
   }  
   
   /* 탈퇴안내 모달 끝*/  
</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
//이메일 입력방식 선택
$(function() {
   /* 회원의 기존 정보를 hidden태그에서 가져와서 폼에 맞게 쪼개서 입력해준다 */
   var tel = $("#tel").val().split("-");
   $("#tel1").val(tel[0])
   $("#tel2").val(tel[1])
   $("#tel3").val(tel[2])
   
   var email = $("#email").val().split("@");
   $("#str_email01").val(email[0])
   $("#str_email02").val(email[1])
   
   var addr = $("#addr").val().split("/")
   $("#addr1").val(addr[0]);
   $("#addr2").val(addr[1]);
   $("#addr3").val(addr[2]);
//=============================================   
 
   /*   이메일 직접입력, 선택입력    */
   $('#selectEmail').change(function(){
         $("#selectEmail option:selected").each(function () {         
            
            if($(this).val()== '1'){ //직접입력일 경우
                $("#str_email02").val('');                         //값 초기화
                $("#str_email02").attr("disabled",false);          //활성화
                $("#str_email02").attr("self","self");            //직접입력임을 표시하는 코드
            }else{ //직접입력이 아닐경우
                $("#str_email02").val($(this).text());            //선택값 입력
                $("#str_email02").attr("disabled",true);          //비활성화
            }
         });
   });
//====================================================
   
   /*수정버튼 눌렀을때 동작 */ 
   $(document).on("click","#mypage_title_btn1",function check() {
      // 입력부분에 다 입력했는지 */
       var tel1 = $("#tel1").val()
       var tel2 = $("#tel2").val().trim()
       var tel3 = $("#tel3").val().trim()
       
       if(tel2 == "" || tel3 == ""){
          swal('',"전화번호를 입력하세요",'')
           return false;
      }   
       if(isNaN(tel2) || isNaN(tel3)){
          $("#tel2").val("")
          $("#tel3").val("")
          swal('',"전화번호는 숫자로 입력하세요",'')
            return false;
      } 
       
       var str_email01 = $("#str_email01").val().trim();
       var str_email02 =$("#str_email02").val();
       if(str_email01 == ""){
          swal('',"이메일을 입력하세요",'')
            return false;
      }
       if($("#str_email02").attr("self") == "self"){   //이메일 직접입력
          str_email02 =$("#str_email02").val().trim();
          if((str_email02) ==""){
             swal('',"이메일을 입력하세요",'')
            return false;
          }
      }
       
       
    // 입력부분에 다 입력했는지 끝 -> 그럼 무사히 입력 다 된걸로 보고 입력값을 합쳐준다. */
      $("#tel").val(tel1+"-"+tel2+"-"+tel3);   // -> 컨트롤러에서 가져가기 위한 hidden 태그에 입력받은 값을 넣음
      $("#email").val(str_email01+"@"+str_email02);
      
      var addr1 = $("#addr1").val();
      var addr2 = $("#addr2").val();
      var addr3 = $("#addr3").val();
      $("#addr").val(addr1+"/"+addr2+"/"+addr3);
     
   });

      //주소를 찾기위하여 api를 적용
      $("#mypage_title_btn3").click(function(){
      new daum.Postcode({
      oncomplete: function(data) {
      $("#addr1").val(data.zonecode);
      var bname = "";
      if(data.buildingName != ""){
         bname = " ("+data.buildingName+")";
         }
         $("#addr2").val(data.address+bname);
         }
      }).open();
   });
      
      //탈퇴확인버튼이 눌렸을때 
      $("#delete_btn").click(function(){   
         $(".delete_text").remove();
         $("#open2").append(
         "<div class='delete_text'><p id='delete'>저희 율제병원 홈페이지는 실제 진료의 예약 등과 연계되기에</p><p id='red'>고객님이 직접 탈퇴처리 할 수 없습니다.</p><p id='delete'>만약 회원 탈퇴를 원하실 경우 ‘상담 게시판’ 페이지를 통하여</p><p id='delete'>본인의 ID, 주민번호, 연락 가능한 전화번호를 적어주십시오.</p><p id='red'>본인확인 후 탈퇴처리 해드립니다.</p><p id='delete'>탈퇴하실 경우 그 동안 받으셨던 의료 상담 내역이나 진료 내역 등</p><p id='delete'>본인과 관련된 모든 정보는 자동 삭제 됩니다.</p><a href='#close'><button id='Xbtn'>X</button></a></div>"
         );
         window.location.href = "#open";
         return false;
         
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
             <a href="/document"><div id="under_menu_2"><p>인터넷증명서 발급</p></div></a>
              <a href="/myPage_6"><div id="under_menu_3"><p>강좌신청내역</p></div></a>
           </div>
           
           <div class="mypage_detail">
              <div id="mypage_box">
                    <a href="/myPage_2"><div id="mypage_box_div1">개인정보수정</div></a>
                    <div id="mypage_box_empty"></div>
                    <a href="/myPage_3"><div id="mypage_box_div2">비밀번호 변경</div></a>
                 </div>
              <div id="mypage_title">
                 <h2>개인정보수정</h2>
                 <button id="delete_btn" type="button">탈퇴안내</button>   
              </div>
           <div class="mypage_detail_under">
           
           <form action="/myPage_7" method="post" >
              <div id="mypage_title_sub">
                 <div class="mypage_title_sub_div1">
                     <span class="mypage_title_sub_span1"><h4>기본정보 입력</h4></span>
                   <span class="mypage_title_sub_span2"><font color="orange">*</font> 필수입력항목입니다</span>
                 </div>
                 <div class="mypage_title_sub_div2">
                    <div class="table_area">
                       <tbody>
                          <div class="table_tr">
                             <tr>
                                <th><input type="hidden" value="${m.member_no }" name="member_no"></th>
                                <th>이름</th>
                                <td><div class="table_input">
                                   <span id="table_span1">${m.name }</span>
                                </div></td>
                             </tr>
                          </div>
                          
                          <div class="table_tr">
                             <tr>
                                <th>아이디</th>
                                <td><div class="table_input">
                                   <span id="table_span2">${m.id }</span>
                                </div></td>
                             </tr>
                          </div>
                          <div class="table_tr">
                             <tr>
                                <th>휴대전화<font color="orange">*</font></th>
                                <td>
                                   <div class="table_input"><span id="table_span4">
                                   <select class="text-2" name="tel1" id="tel1">
                                    <option>010</option>
                                    <option>011</option>
                                    <option>016</option>
                                 </select></span>
                                  - <input type="text" id="tel2">
                                  - <input type="text" id="tel3">
                                  <input type="hidden" id="tel" name="tel" class="tel_input" value="${m.tel}">
                                  </div>
                               </td>
                             </tr>
                          </div>
                          <div class="table_tr">
                          <tr>
                             <th>주소</th>
                             <td><div class="table_input">
                                   <span id="table_span5">
                                   <input type="text" id="addr1" readonly="readonly">
                                   <button type="button" id="mypage_title_btn3">주소검색</button>
                                   </span>
                            </div></td>
                          </tr>
                          <tr>
                             <div class="table_input">
                                <span id="table_span6"> 
                                <input type="text" id="addr2" readonly="readonly">
                                </span><br>
                             </div>
                          </tr>
                          <tr>
                             <div class="table_input">
                                <span id="table_span6"> 
                                <input type="text" id="addr3">
                                </span>
                             </div>
                          </tr>
                          <tr>
                             <div class="table_input">
                                <span id="table_span6"> 
                                <input type="hidden" name="addr" id="addr" value="${m.addr }">
                                </span>
                             </div>
                          </tr>
                          </div>
                          <div class="table_tr">
                          <tr>
                             <th>이메일<font color="orange">*</font></th>
                             <td>
                                <div class="table_input">
                                   <span id="table_span7"> 
                                      <input type="text" id="str_email01" style="width:100px">
                                       @
                                      <input type="text" id="str_email02" style="width:100px">
                                    <!-- select 옵션의 값이 input 'str_email02'으로감 -->
                                    <select style="width:100px;margin-right:10px" id="selectEmail">
                                        <option value="1" selected>직접입력</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="hanmail.net">hanmail.net</option>
                                        <option value="hotmail.com">hotmail.com</option>
                                        <option value="nate.com">nate.com</option>
                                        <option value="yahoo.co.kr">yahoo.co.kr</option>
                                        <option value="empas.com">empas.com</option>
                                        <option value="dreamwiz.com">dreamwiz.com</option>
                                        <option value="freechal.com">freechal.com</option>
                                        <option value="lycos.co.kr">lycos.co.kr</option>
                                        <option value="korea.com">korea.com</option>
                                        <option value="gmail.com">gmail.com</option>
                                        <option value="hanmir.com">hanmir.com</option>
                                        <option value="paran.com">paran.com</option>
                                      </select>
                                   </span>
                              </div>
                             <input type="hidden" id="email" name="email" class="input" value="${m.email}">
                          </td>
                          </tr>
                          </div>                      
                       </tbody>
                    </div>
                 </div>
              </div>
              <div id="mypage_title_btn">
                 <input type="submit" id="mypage_title_btn1" value="완료하기">
                 <input type="reset" value="취소" id="mypage_title_btn2">
              </div>
              </form>     
           </div>
           </div>   
           <!-- 모달 -->
         <div class="white_content" id="open">
              <div>
                 <p id="open2"></p> 
           </div>
        </div>
          <!-- 모달끝 -->
          
         
        
        </div>
    
    
   </div>
   </div>
        
     
   <!-- footer -->
   <jsp:include page="/footer.jsp"></jsp:include>
   <!-- //footer -->

   

</body>
</html>