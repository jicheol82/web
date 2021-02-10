<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>para 01 page</title>
</head>
<body>
	<h1>para 01 page</h1>
	<jsp:include page="param02.jsp">
		<jsp:param value= "<%=new java.util.Date()%>" name ="date"/>
	</jsp:include>
</body>
</html>