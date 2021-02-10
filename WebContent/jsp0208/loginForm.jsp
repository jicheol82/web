<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login form</title>
</head>
<body>
	<!-- action에 작성하는 주소는 이제 web.xml에 지정해 놓은 pro페이지 주소로 작성 -->
	<form action="/web/loginPro.global">
		id :<input type="text" name="id"/><br/>
		pw :<input type="password" name="pw"/><br/>
			<input type="submit" value="로그인"/>
	</form>
</body>
</html>