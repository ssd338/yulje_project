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

   <h2>진료내역상세</h2><hr>
   <table>
   <tr>
   <td class="title">진료번호</td><td>${c.cli_no }</td>
   <td class="title">접수번호</td><td>${c.regi_no }</td>
   <td class="title">날짜</td><td>${c.cli_date }</td>
   </tr>
   
   <tr>
   <td class="title">진료과</td><td>${dept_name }</td>
   <td class="title">의사</td><td>${doc_name }</td>
   </tr>
   
   <tr>
   <td class="title" height="200px">진료내용</td>
   <td class="content">${c.cli_content }</td>
   </tr>
   
   <tr>
   <td class="title" height="150px">처방약품</td>
   <td class="content"><a href="/detailMedicine?no=${c.medi_no }"><button id="btn_medi">${medi_name }</button></a></td>
   </tr>
   </table>
   <!-- 
   진료번호 : ${c.cli_no } &nbsp;|&nbsp;
   접수번호 : ${c.regi_no }&nbsp;|&nbsp;
   날짜 : ${c.cli_date }<br>
   진료과 : ${dept_name }&nbsp;|&nbsp;
   의사 : ${doc_name }
   진료내용 : <br><textarea rows="10" cols="40" readonly="readonly">${c.cli_content }</textarea><br>
   처방약품 : <a href="detailMedicine.do?medi_no=${c.medi_no }">${medi_name }</a> -->
   <hr>
   <a href="/listClinic"><button id="btn_li">목록</button></a>
</body>
</html>