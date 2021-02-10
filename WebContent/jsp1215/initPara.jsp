<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초기화  파라미터 읽기</title>
</head>
<body>
<h2>초기화 파라미터 목록</h2>
<%
	Enumeration<String> enu = application.getInitParameterNames();
	while(enu.hasMoreElements()){
		String paraName = enu.nextElement();%>
		<li><%= paraName %> = <%= application.getInitParameter(paraName) %> </li>
<%	}
%>

</body>
</html>