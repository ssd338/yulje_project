<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="newfooter.css">
<link rel="stylesheet" href="header.css">

<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

   * {
     box-sizing: border-box;
     font-family: "맑은 고딕";
   }

/* 로그인 윗 박스 */
   .login_top {
      justify-content: center;
      display: flex;
      margin-top: 10px; 
   }

/* 로그인 윗 박스 안 */   
   #login_top1 {
      width: 650px;
      height: 400px;
      margin: 10px;
      text-align: center;
   }
 
 
/* 로그인  밑 박스 */    
   .login_under {
      justify-content: center;
      display: flex;      
   }   

/* 로그인  밑 박스안 */    
   #login_under1 {   
      border: 1px solid #ccc;
      width: 200px;
      height: 150px;
      margin: 10px; 
      text-align: center;
      padding-top: 30px;

      border-top-color: #94CCC4;;

   	  border-top-width: 5px;
   }
   
   #login_under2 {   
      border: 1px solid #ccc;
      width: 200px;
      height: 150px;
      margin: 10px; 
      text-align: center;
      padding-top: 30px;

      border-top-color: #94CCC4;;

  	  border-top-width: 5px;
   }
   
   #login_under3 {   
      border: 1px solid #ccc;
      width: 200px;
      height: 150px;
      margin: 10px; 
      text-align: center;
      padding-top: 30px;

      border-top-color: #94CCC4;
   	  border-top-width: 5px;
          
   }
   
/* 회원로그인 text 박스 크기 */    
   .text{
   	width:200px;
  	height: 25px;
    font-size: 16px;
   }
   
/* 공백주기 */    
   #enter01{
	border: 1px solid #ffffff;
	height: 102px;
	visibility: hidden;
	}
	
   #enter02{
	border: 1px solid #ffffff;
	height: 5px;
	visibility: hidden;
	}
   

/* 라벨 색상 지정 */
#tab-1:checked ~ .tab label:nth-child(1),
#tab-2:checked ~ .tab label:nth-child(2)
{

  background-color: #94CCC4;

  box-shadow: none;
}

.content > div {
  display: none;
	
}

/* 라벨 틀, 색상지정 */
#tab-1:checked ~ .content div:nth-child(1),
#tab-2:checked ~ .content div:nth-child(2) {
   display: block;
   border: 1px solid #ccc;

   border-top-color: #94CCC4;
   border-top-width: 5px;
}


.tab {
  overflow: hidden;
  
}

/* 라벨 속성 */
.tab label {
    font-size: 18px;
    cursor: pointer;
    float: left;
    width: 50%;
    text-align: center;
    padding: 10px 0;
    text-transform: uppercase;
    font-weight: bold;
    letter-spacing: 2px;
    user-select: none;
    -webkit-user-select: none;   
}

/* 박스 안 내용 */
  .content {
  background-color: ffffff;
  min-height: 250px;
}

   .content > div{
   padding: 30px;
   line-height: 1.5;
   font-size: 17px;
}
	
 /* 라디오 버튼 가려두기 */ 
    .radio_btn{
    opacity: 0;
    }
  
/* 로그인 윗 박스 로그인버튼 */     
   #login_btn_1 {
      display: block;

      border: 1px solid #94CCC4;

      width: 200px;
      height: 35px;
      cursor: pointer;
      margin-right: 5px;
      margin: 0 auto;

      background-color: #94CCC4;

      color: white;
      font-weight: bold; 
   }
   
    #login_btn_2 {
      display: block;
      border: 1px solid #1EC800;
      width: 200px;
      height: 35px;
      cursor: pointer;
      margin-right: 5px;
      margin: 0 auto;
      background-color: #1EC800;
      color: white;
      font-weight: bold; 
   }
   
     #login_btn_3 {
      display: block;
      border: 1px solid #ccc;
      width: 200px;
      height: 35px;
      cursor: pointer;
      margin-right: 5px;
      margin: 0 auto;
      background-color: #ccc;
      color: white;
      font-weight: bold; 

   }
   
 /* 회원가입 */
   #sign_up h3 {
      margin: 0px;
   }
 
   #sign_up_btn {
      display: block;
      border-radius: 10px;

      border: 1px solid #94CCC4;

      width: 110px;
      height: 35px;
      cursor: pointer;
      margin-right: 5px;
      margin: 0 auto;

      background-color: #94CCC4;


   }
   
/* 아이디찾기 */  
   #find_id h3 {
      margin: 0px;
   }
     
   #find_id_btn {
      display: block;
      border-radius: 10px;

      border: 1px solid #94CCC4;

      width: 110px;
      height: 35px;
      cursor: pointer;
      margin-right: 5px;
      margin: 0 auto;

      background-color: #94CCC4;


   }
   
 /* 비밀번호찾기 */  
   #find_pwd h3 {
      margin: 0px;
   }
     
   #find_pwd_btn {
      display: block;
      border-radius: 10px;

      border: 1px solid #94CCC4;

      width: 110px;
      height: 35px;
      cursor: pointer;
      margin-right: 5px;
      margin: 0 auto;

      background-color: #94CCC4;


   }

   body {
     
   }
   
/* Style the header */
.row{
	width:1600px;
	margin:0 auto;
	padding-top: 140px;
	position: relative;
}


/* Create three unequal columns that floats next to each other */
.column {
  float: left;
  padding: 10px;
  height: 1000px; /* Should be removed. Only for demonstration */
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

a{
	text-decoration:none;
}

</style>
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>

 <!-- Header Start -->

     <jsp:include page="header.jsp"></jsp:include>
<!-- 	Header End -->
   
   <div class="row">
   
     	<div class="column side" id="column_side_left"></div>
     
      	<!-- 메인부분 -->
  		<div class="column middle">
   
        <div class="login_top"><!-- 가운데 -->          
           <div id="login_top1"> <!-- 안에 박스 -->
          <input type="radio" class="radio_btn" id="tab-1" name="show" checked/>
		  <input type="radio" class="radio_btn" id="tab-2" name="show" />
		  <div class="tab">
		    <label for="tab-1">회원로그인</label>
		    <label for="tab-2">비회원로그인</label>
		  </div>
    	<div class="content">
   		<div class="content-dis">
   		<!-- 로그인 폼 -->
   		<form action="/login" method="post">
      	   <span>회원 서비스를 이용하시려면 로그인이 필요합니다.</span><br>
           <span>아이디와 비밀번호를 입력 후 로그인 부탁드립니다.</span><br><br>
		   <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
           <span id="id"><input class="text" type="text" name="username" placeholder="아이디"></span><br>
           <span id="pwd"><input class="text" type="password" name="password" placeholder="비밀번호"></span><br><br>
           <button id="login_btn_1" type="submit">로그인</button>
        </form>
           <div id="enter02"></div>
           <!-- 네이버로그인 -->
           <a href="/oauth2/authorization/naver"><button id="login_btn_2">네이버로그인</button></a>	<!-- API 설정시 이미지 파일로 변경  -->
       
    	</div>
    	
   		 <div class="content-dis">
  	       <span>예약을 하시려면 로그인이 필요합니다.</span><br>
           <span>휴대폰으로 본인인증 부탁드립니다.</span><br>
           <div id="enter01"></div>
           <button id="login_btn_3">본인인증(휴대폰)</button> <!-- API 설정  -->
           <div id="enter02"></div>
           <button id="login_btn_1">로그인</button>
           
    	</div>
	
 
	</div>      
           </div> <!-- 안에 박스 닫기 -->    
        </div> <!-- 가운데 닫기-->
        
        
        <div class="login_under"> <!-- 밑 박스 -->
           <div id="login_under1">
           <span id="sign_up"><h3>회원가입</h3></span>
           <img src="./image/sign.JPG" height="30" width="35">
           <button id="sign_up_btn"><a href="/join-allow">회원가입하기</a></button>
           </div>
           <div id="login_under2">
           <span id="find_id"><h3>아이디 찾기</h3></span>
           <img src="./image/find.JPG" height="30" width="35">
          <button id="find_id_btn"> <a href="/findId">아이디찾기</a></button>
           </div>
           <div id="login_under3">
           <span id="find_pwd"><h3>비밀번호 찾기</h3></span>
           <img src="./image/find.JPG" height="30" width="35">
           <button id="find_pwd_btn"><a href="/findPwd">비밀번호 찾기</a></button>
           </div>  
  		 </div><!-- 밑 박스 닫기-->
           
      </div>
          		<div class="column side" id="column_side_right"></div>
      </div>  <!-- 메인 닫기-->

 <!-- footer -->
전화번호안내</a></li>
					<li><a href="">오시는길</a></li>
				</ul>
				<a href="" class="btn-home">HOME</a>
				<button type="button" class="btn-top">TOP</button>
			</div>
		</div>
		<!--// footer_menu -->
	</footer>

   <jsp:include page="/footer.jsp"></jsp:include>

	
	<!-- //footer -->
  
<!--   <script type="text/javascript">
	$('#login_btn_1').click(function(){
		var formData = $('#loginForm').serialize();
	
		$.ajax({
			type:"POST",
            url:"/loginCheck",
            data:formData,
            success : function(data) {
            	if(data.msg == 'success'){
            		alert("로그인성공");
    				location.href="/main.jsp";
    				
    			} else {
    				alert("회원정보를 확인해주세요.");
    			}
            },
            error : function(xhr, status, error) {
                alert("error");
            }
		})
	})
  </script>  -->

</body>
</html>