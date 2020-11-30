<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
<%-- <meta name="_csrf" th:content="${_csrf.token}"> --%>
<%-- <meta name="_csrf_header" th:content="${_csrf.headerName}"> --%>
<title>Insert title here</title>
<link rel="stylesheet" href="./css/temp.css">
<style type="text/css">

.side {
/* 	border: solid 1px black; */
}

/* 타이틀 */
#title {
	text-align: center;
	border-bottom: 2px solid #94CCC4;
}

/* 메인 */
#main {
	color: #5d5d5d;
	justify-content: center;
 	width: 100%; 
 	padding-right: 10%;
 	padding-left: 10%;
}

.maintitle {
	margin-bottom: 20px;
}

.mtitle {
	margin-top: 30px;
	border-left: 5px solid #94CCC4;
	padding-left: 10px;
}
.ptitle {
	color: #94CCC4;
	margin-top: 30px;
	border-bottom: solid 1px #CBE2B8;
	padding-bottom: 20px;
}

/* 테이블 */
.table {
 	width: 100%; 
 	border-collapse: collapse;
}

.table tr {
	padding-bottom: 20px;
	margin-bottom: 20px;
}

.table th {
	text-align: left;
	padding-right: 50px;
	padding-bottom: 20px;
	padding-top: 20px;
	margin-right: 0px;
	width: 30%;
	border-bottom: 1px solid #ddd;
}
.table td {
	text-align: left;
	padding-left: 30px;
	padding-bottom: 20px;
	padding-top: 20px;
	margin-left: 0px;
	border-bottom: 1px solid #ddd;
	width: 70%;
}

.tel {
	width: 60px;
}

.table .input {
	height: 30px;
 	width: 230px; 
}

.select {
	height: 30px;
	width: 150px;
}

.table button {
	margin-left: 10px;
	height: 30px;
	background-color: #94CCC4;
	
	  border: none;
	  color: white;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  transition-duration: 0.4s;
	  cursor: pointer;
}

.table button:hover {
  background-color: white;
  color: #94CCC4;
}

.table span {
	color: #94CCC4;
	font-size: 12px;
	padding-top: 10px;
}

#sex {
	height: 30px;
	width: 50px;
	text-align: center;
}

#addr1 {
	height: 30px;
	width: 150px;
	margin-bottom: 5px;
}

#addr2 {
	height: 30px;
	width: 400px;
	margin-bottom: 5px;
}
#addr3 {
	height: 30px;
	width: 400px;
}


/* 버튼 */
.btn {
	margin-left: 10px;
	height: 30px;
	background-color: #94CCC4;
	
	  border: none;
	  color: white;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  transition-duration: 0.4s;
	  cursor: pointer;
	  width: 100px;
}

.btn:hover {
  background-color: white;
  color: #94CCC4;
}

#bot {
	margin-top: 50px;
	justify-content: center;
	display: flex;
	margin-bottom: 50px;
}

.choice {
	margin-top: 30px;
	padding-top: 30px;
}

#tel, #name, #rr_no{
	border: none;
}

</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">


// 	    var token = $("meta[name='_csrf']").attr("content");
// 	    var header = $("meta[name='_csrf_header']").attr("content");
// 	    $(document).ajaxSend(function(e, xhr, options) {
// 	        xhr.setRequestHeader(header, token);
// 	    });
	


var checkP = true;

	function checkPassword(password){		//비밀번호 문자열 체크 
		//자리수 부족
		if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{10,15}$/.test(password)){
			alert('비밀번호는 숫자와 영문자, 특수문자 조합으로 10~15자리를 사용해야 합니다.');
			return false;
		}
		// 올바른 조합인지
		var specail = password.search(/[!@#$%^*+=-]/g);
		var checkNumber = password.search(/[0-9]/g);
		var checkEnglish = password.search(/[a-z]/ig);
		if(checkNumber <0 || checkEnglish <0 || specail <0){
			alert("비밀번호는 숫자와 영문자, 특수문자를 혼용하여야 합니다.");
			return false;
		}
		//연속된 문자
		if(/(\w)\1\1\1/.test(password)){
			alert('비밀번호는 같은 문자를 연속으로 4번 이상 사용하실 수 없습니다.');
			return false;
		}

		checkP = false;
		
		/*if(password.search(id) > -1){
			alert("비밀번호에 아이디가 포함되었습니다.");
			return false;
			}*/
	}
	
$(function(){
	//가입버튼을 눌렀을때 적용할 기능
	$("#btnJoin").click(function(){

		var pwd1 = $("#pwd1").val();
		var pwd2 = $("#pwd2").val();
		checkPassword(pwd1);

		//비밀번호 정규식 적용여부
		if(checkP){
			return false;
		}

		//비번확인 같은지 체크
		if(pwd1 != pwd2){
			alert("비밀번호를 확인해주세요.")
			return false;
		} else{
			$("#pwd").val(pwd1);
		}
		
	});


	$("#name_show").html($("#name").val());



});
</script>
</head>
<body>

<!-- Header Start -->
<%--      <jsp:include page="/header.jsp"></jsp:include> --%>
<!-- 	Header End -->

<div class="row">
  <div class="column side"></div>
  <div class="column middle">
  	<div id="title">
  		<h1>비밀번호 변경</h1>
  	</div>
  	<div id="main">
  		<div class="maintitle">
  			<h2 class="mtitle">개인정보입력</h2>
  		</div>
  		
  		<form id="form" action="/changePwd" method="post">
  		<div class="essential">
  			<h3 class="ptitle">필수입력사항</h3>
  			<div>
  				<table class="table">
  					<tr>
  						<th>이름</th>
  						<td><strong id="name_show"></strong>
  						<input type="hidden" id="name" name="name" class="input" value="${m.name }" readonly="readonly"></td>
  					</tr>
  					<tr>
  						<th>비밀번호</th>
  						<td><input type="password" id="pwd1" name="pwd1" class="input" minlength="10" maxlength="15" required="required"><br><span>* 10~15자의 숫자와 영문자, 특수문자 조합</span></td>
  					</tr>
  					<tr>
  						<th>비밀번호 확인</th>
  						<td><input type="password" id="pwd2" name="pwd2" class="input" minlength="10" maxlength="15"></td>
  						<td><input type="hidden" id="pwd" name="pwd" class="input"></td>
  						<td><input type="hidden" id="rr_no" name="rr_no" class="input" value="${m.rr_no }"></td>
  					</tr>
  					
  				</table>
  			</div>
  		</div>
  		
  		
  		<input type="hidden" name="roles" value="USER">
  		<div id="bot">
  			<button id="btnJoin" class="btn">변경하기</button>
  			<button id="cancel" class="btn" type="reset">취소</button>
  		</div>
  		</form>
  		
  	</div>  
  </div>
  <div class="column side"></div>
</div>

<%-- <jsp:include page="/footer.jsp"></jsp:include> --%>

</body>
</html>
