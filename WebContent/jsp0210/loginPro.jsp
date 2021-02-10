<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login pro</title>
</head>
<body>
<h2>logpro</h2>
${check}
	<h3> check : ${check}</h3>
	<c:if test="${sessionScope.memId != null}">
		<%-- redirect의 url 경로는 컨텍스트 루트도 생략--%>
		<c:redirect url="/main.do"></c:redirect>
		
	</c:if>
	<c:if test="${check == false}">
		<<script>
			alert("아이디 비번 오류");
			history.go(-1);
		</script>
	</c:if>
</body>
</html>