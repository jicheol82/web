<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pro page</title>
</head>
<%
	// form에서 넘어오는 파라미터 꺼내서 출력
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// HTTP 헤더 정보값 출력
	Enumeration enu = request.getParameterNames();
	while(enu.hasMoreElements()){
		String headName = (String)enu.nextElement();
		String headValue = request.getHeader(headName);%>
		<%=headName%>:<%=headValue%><br/> 
	<%}
%>
<body>
	<h1>Pro Page</h1>
	id : <%=id %> <br/>
	pw : <%=pw %> <br/>
</body>
</html>