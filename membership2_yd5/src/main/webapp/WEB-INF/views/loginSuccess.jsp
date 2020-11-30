<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
    <h1>로그인 성공!!</h1>
    <hr>
    <p>
        ${m.id }(${m.name })님 환영합니다~
    </p>
    <a href="/main">메인으로 이동</a><br>
    <a href="/logout">로그아웃</a>
    
</body>
</html>