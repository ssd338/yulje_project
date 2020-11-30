<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
			var category = "%";
			getCategory(category); // 처음 화면켰을때 ajax적용
// 			alert(category);
		$(document).on("click",".faq_bottom_menu",function(){ // 버튼을 누르면 ajax이 작동
			category = $(this).val();
			// category buttom의 value를 가져와서 String category에 지정

			getCategory(category); //위에 있는 this.val의 값을 가져와서 버튼을 클릭하면 ajax 적용
			
			})
		
	function getCategory(category){
			$.ajax({	url :"/listFaq.do",
						dataType : "json",
						data : {
							category : category // category 값을 넘겨줌
						},
						success : function(data) {
							console.log(category);
							let content = "";
							for (var j = 0; j < data.length; j++) {

								// 					alert(typeof(data[j].title));
								console.log(data);
								console.log(data[j]);
								/*
								var main_input = $("<input>").attr( { "type":"radio", "name":"accordion", "id":"answer"+j } );

								var title_label = $("<label></label>").html(data[j].title).attr("for","answer"+j);
								var content_p = $("<p></p>").html(data[j].content);
								var content_div = $("<div></div>");

									
								$(content_div).append(content_p);
								$(main_input).append(title_label);
								$(".accordion").append(main_input);
								$(".accordion").append(content_div);
								 */
								// 					alert(data[j].content);
								// 					content += '<input type="radio" name="accordion" id="answer'+j+'">\
								//                     <label for="answer'+j+'">"+data[j].title"+"</label><div><p>+data[j].content+</p></div>';

								content += '<input type="radio" name="accordion" id="answer'+j+'">\<label for="answer'+j+'">'
										+ data[j].title
										+ '</label><div><p>'
										+ data[j].content + '</p></div>';

							}
							document.getElementById("acco").innerHTML = content;
						}
					}

			)
			}
		
				
	})

</script>
<style type="text/css">
* {
	font-family: "맑은 고딕";
}

.main_input_menu {
	font-size: 25px;
	width: 950px;
	height: 80px;
	text-align: center;
	padding-top: 250px;
	margin-left: 405px;
	padding-bottom: 95px;
	
}

.faq_menu {
	display: flex;
	text-align: center;
	width: 1500px;
	padding-left: 405px;
}

.faq_bottom_menu {
	border: 1px solid #D5D5D5;
	width: 180px;
	height: 50px;
	line-height: 50px;
	background-color: white;
	outline: 0;
}

.faq_bottom_menu:hover {
	color: #ffffff;
	background-color: #94CCC4;
}

#search_form {
	text-align: right;
	width: 920px;
	margin-left: 385px;
}

.search_btn {
	border-radius: 5px;
	width: 60px;
	height: 30px;
	border: 1px solid #94CCC4;
	background-color: #94CCC4;
	color: white;
	font-weight: bold;
	outline: 0;
}

/* .search_btn:hover { */
/* 	border: 1px solid #94CCC4; */
/* 	background-color: #D5D5D5; */
/* 	color: white; */
/* } */

.insert_btn {
	border-radius: 5px;
	width: 60px;
	height: 30px;
	border: 1px solid #D5D5D5;
	background-color: white;
	color: black;
	margin-left: 1250px;
}

#search_input_form {
	width: 200px;
	height: 30px;
	border: 1px solid #D5D5D5;
}

.accordion {
	margin: 10px;
	border-top: 1.5px solid #94CCC4;
	border-bottom: 1.5px solid #94CCC4;
	padding: 10px;
	width: 900px;
	margin-left: 405px;
}

label {
	width: 900px;
	line-height: 50px;
	/* 	padding: 10px; */
	height: 70px;
}

input[id*="answer"] {
	display: none;
}

input[id*="answer"]+label {
	display: block;
	/* 	margin: 5px; */
	height: 50px;
	/* 	border: 1px solid cadetblue; */
	border-bottom: 0;
	color: black;
	background-color: white;
	cursor: pointer;
	position: relative;
	border-bottom: 1px solid #D5D5D5;
	/* 	border-top: 1px solid #94CCC4; */
}

/*    input[id*="answer"] + label em { */
/*       position: absolute; */
/*       top: 50%; */
/*       right: 10px; */
/*       width: 30px; */
/*       height: 30px; */
/*       margin-top: -15px; */
/*       display: inline-block;  */
/*    } */
input[id*="answer"]+label+div {
	max-height: 0;
	transition: all .35s;
	overflow: hidden;
	color: #5D5D5D;
	background: #EAEAEA;
	font-size: 11px;
	line-height: 50%;
	font-weight: bold;
}

input[id*="answer"]+label+div p {
	display: inline-block;
	/* 	padding: 20px; */
	font-size: 14px;
	line-height: 23px;
}

input[id*="answer"]:checked+label+div {
	max-height: 100px;
	background-position: 0 -30px;
	width: 900px;

	/* 	margin-left: 5px; */
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="main_input_menu">${title }</div>
	
	<br>
	<br>

	<div class="faq_menu">
		<button class="faq_bottom_menu" name="category" value="%">전체</button>
		<button class="faq_bottom_menu" name="category" value="외래">외래</button>
		<button class="faq_bottom_menu" name="category" value="입원">입원</button>
		<button class="faq_bottom_menu" name="category" value="제증명">제증명</button>
		<button class="faq_bottom_menu" name="category" value="기타">기타</button>
	</div>
	<br>

	<div id="search_form">
		<input type="search" name="search" id="search_input_form" placeholder="검색어를 입력하세요">
		<button class="search_btn">검색</button>
	</div>
	<div class="accordion" id="acco">



		<!-- 		<input type="radio" name="accordion"> -->
		<%-- 		<c:forEach var="fb" items="${list }"> --%>

		<%-- 			<label for="answer" id="answer">Q : ${fb.title }</label> --%>
		<%-- 						${fb.title } --%>
		<%-- 						${fb.content } --%>

		<!-- 			<div> -->
		<%-- 				<p>${fb.content }</p> --%>
		<!-- 			</div> -->

		<%-- 		</c:forEach> --%>
	</div>
	
	<a href="insertFaq.do"><button class="insert_btn">등록</button></a>



	<c:forEach var="i" begin="1" end="${totalPage }">
		<a href="listSFaq.do?pageNUM=${i }">${i }</a>&nbsp;		
		</c:forEach>
		
		<jsp:include page="/footer.jsp"></jsp:include>	
</body>
</html>