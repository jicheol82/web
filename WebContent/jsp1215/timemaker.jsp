<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>time Maker</title>
</head>
<body>
<%
	// 캘린더 객체 생성
	Calendar cal = Calendar.getInstance();
	// request 객체에 attirbute에 객체를 저장
	// setAttribute("이름", 데이터)
	request.setAttribute("time", cal);
%>

	<jsp:forward page="timeviewr.jsp"></jsp:forward>

</body>
</html>