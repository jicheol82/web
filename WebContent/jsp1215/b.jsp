<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>B page</title>
</head>
<body>
	<h1>B page</h1>
	<%
		System.out.println("bbbb");
		//response.sendRedirect("c.jsp");
		//c.jsp 로 이동해라
	%>
	<%--a에서 보낸 데이터가 c까지 전달 --%>
	<%-- <jsp:forward page="c.jsp"></jsp:forward>--%>
	<%--forward태그에 데이터 직접 추가해서 이동하기 --%>
	<jsp:forward page="c.jsp">
		<jsp:param name="id" value="ssss" />
	</jsp:forward>
</body>
</html>