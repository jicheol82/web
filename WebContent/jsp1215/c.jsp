<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>C page</title>
</head>
<body>
	<h1>C page</h1>
	<h2>msg => <%= request.getParameter("msg") %></h2>
	<h2>id => <%= request.getParameter("id") %></h2>
</body>
</html>