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
   width: 200px;
   height: 50px;
}

.title{
   background-color: #f2f2f2;
   font-size: 15px;
   text-align: center;
   
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
   <td class="title">환자명</td><td></td>
   <td class="title" height="200px">진료내용</td>
   <td><textarea rows="10" cols="30" id="cli_content" name="cli_content"></textarea></td>
   </tr>
   <tr>
   <td class="title">진료과</td><td></td>
   <td class="title">담당의</td><td></td>
   </tr>
   <tr>
   <td class="title">날짜</td><td></td>
   </tr>

   
  
   
   
   </table>
   <hr>
   <a href="/"><button id="btn_li">등록</button></a>
</body>
</html>