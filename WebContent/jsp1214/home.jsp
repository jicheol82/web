<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
</head>
<body>
	<form action="pro.jsp" method="post">
		id : <input type="text" name="id" /><br/>
		pw : <input type="password" name="pw" /><br/>
		좋아하는 동물<br/>
		강아지<input type="checkbox" name="pet" value="dog" /><br/>
		고양이<input type="checkbox" name="pet" value="cat" /><br/>
		호랑이<input type="checkbox" name="pet" value="tiger" /><br/>
		<input type="submit" value="전송"/>
	</form>
</body>
</html>