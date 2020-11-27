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

   <h2> 님 예약이 완료되었습니다.</h2><hr>
   <form action="/insertRegister" method='post'>
   <table>
   <tr>
   <td class="title">환자이름</td><td>${name }</td>
   <td class="title">예약번호</td><td>${reser_no }</td>
   </tr>
   </table>
   <hr>
   <a href="/clinicAdmin"><button id="btn_li">진료기록하기</button></a>
   </form>
</body>
</html>