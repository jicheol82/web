<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %> <%-- isErrorPage="true"가 설정되어 있지 않으면 12줄의 exception을 사용할 수 없다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>오류가 발생</h2>
	<p>예외유형 : <%= exception.toString() %> </p>
	<p> 메세지 : <%= exception.getMessage() %></p>
</body>
</html>