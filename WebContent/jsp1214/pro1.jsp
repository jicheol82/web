<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pro1</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
	String pw = request.getParameter("pw");
	
	//form>input 말고 url에 쿼리스트링 추가해서 꺼내보기
	String test = request.getParameter("test");

%>
<body>
	username = <%=username %><br/>
	pw = <%=pw %><br/>
	test = <%=test %><br/>

</body>
</html>