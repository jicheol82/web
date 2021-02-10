<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
	<h2> Index Page </h2>
	${requestScope.msg} <br/>
	${requestScope.msg1} <br/>
	${requestScope.day}<br/>
	${requestScope.para}<br/>
	${param.test}<br/>
	<form action="" method="get">
		msg1: <input type="text" name="msg1" /><br/>
		<input type="submit" value="전송"/>
	</form>
</body>
</html>