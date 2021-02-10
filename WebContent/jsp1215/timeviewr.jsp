<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Time Viewer</title>
</head>
<%
	// request 객체에서 속성(attribute) 값 꺼내기
	// getAttribute("이름") => 값 리턴: object 타입
	Calendar cal = (Calendar)request.getAttribute("time");
%>
<body>
	현재시간 : <%=cal.get(Calendar.HOUR) %> 시
			 <%=cal.get(Calendar.MINUTE) %> 분
			 <%=cal.get(Calendar.SECOND) %> 초
</body>
</html>