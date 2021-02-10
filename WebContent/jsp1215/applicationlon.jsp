<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그 남기기</title>
</head>
<body>
	<%
		application.log("로그메시지기록");
		log("jsp 로그");
	%>
</body>
</html>