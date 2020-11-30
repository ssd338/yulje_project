<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

table{
   border: 1px solid #f2f2f2;
   
}

td {
   padding: 10px;
}

.title{
   background-color: #f2f2f2;
}

.content{
   vertical-align: top;
   padding-top: 30px;
}

#btn_medi{
   border: 1px solid #f2f2f2;
   background-color:none;
   border-radius: 3px;
}

#btn_li{
   border:2px solid #05147D;
   border-radius:3px;
   background-color : #05147D;
   color : white;
   padding:3px;
}

</style>
</head>
<body>
   <h2>진료 내역 등록</h2><hr>
   <table>
   <tr>
   <td class="title">날짜</td><td>${cli_date }</td>
   <td class="title" height="200px">진료내용</td>
   <td><textarea rows="10" cols="30" id="cli_content" name="cli_content"></textarea></td>
   </tr>
   
   <tr>
   <td class="title">약품번호</td><td><input type="text" id="medi_no" name="medi_no" class="input"></td>
   <td class="title">접수번호</td><td>${regi_no }</td>
   </tr>
   
   <tr>
   <td class="title">부서번호</td><td>${dept_no }</td>
   <td class="title">의사번호</td><td>${doc_no }</td>
   <td class="title">회원번호</td><td>${member_no }</td>
   </tr>
   
   </table>
   <hr>
   <a href="/"><button id="btn_li">등록</button></a>
</body>
</html>