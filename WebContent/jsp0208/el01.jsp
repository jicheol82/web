<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setAttribute("name", "dkasdl");
	session.setAttribute("name", "sdf");
%>
<body>
	요청 uri : ${pageContext.request.requestURI}<br/>
	request의 name속성 : ${requestScope.name }<br/>	
	test파라미터 : ${param.test }<br/>	
	이름만 지정 : ${name }<br/>	
	이름만 지정 : ${sessionScope.name }<br/>
	존재하지 않을 경우 : ${memId }<br/>
</body>
</html>