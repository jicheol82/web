<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl02</title>
</head>
<body>
	<%--#1. request.setCharacterEncoding("utf-8") --%>
	<fmt:requestEncoding value="utf-8"/>
	
	<%--#2. formatDate Controller에서 request로 넘겨준 Date클래스 객체 사용--%>
	<fmt:formatDate value="${requestScope.day}"/><br/>
	<fmt:formatDate value="${requestScope.day}" type="date"/><br/>
	<fmt:formatDate value="${requestScope.day}" type="time"/><br/>
	<fmt:formatDate value="${requestScope.day}" type="both"/><br/>
	<%--출력 스타일 미리 지정 --%>	
	<fmt:formatDate value="${requestScope.day}" type="both" dateStyle="short"/><br/>
	<fmt:formatDate value="${requestScope.day}" type="both" dateStyle="medium"/><br/>
	<fmt:formatDate value="${requestScope.day}" type="both" dateStyle="long"/><br/>
	<fmt:formatDate value="${requestScope.day}" type="both" dateStyle="full"/><br/>
	
	<fmt:formatDate value="${requestScope.day}" type="both" dateStyle="short" timeStyle="short"/><br/>
	<fmt:formatDate value="${requestScope.day}" type="both" dateStyle="medium" timeStyle="medium"/><br/>
	<fmt:formatDate value="${requestScope.day}" type="both" dateStyle="long" timeStyle="long"/><br/>
	<fmt:formatDate value="${requestScope.day}" type="both" dateStyle="full" timeStyle="full"/><br/>
	<%--포멧 커스텀 --%>
	<fmt:formatDate value="${day}" pattern="MM-dd-yyyy HH:mm"/><br/>
	
	<%--#3. 숫자 관련 --%>
	<%--자릿수 구멸  : 기본값은 true--%>
	<fmt:formatNumber value="10000000" groupingUsed="false"/><br/>
	
	<%-- 통화 --%>
	<fmt:formatNumber value="10000000" type="number"/><br/>
	<fmt:formatNumber value="10000000" type="currency" currencySymbol="\\"/><br/>
	<fmt:formatNumber value="10000000" type="currency" currencySymbol="$"/><br/>
	
	<fmt:formatNumber value="0.4" type="percent"/><br/>
	<fmt:formatNumber value="12.13543" pattern=".0"/><br/>

	<fmt:timeZone value="GMT">
		GMT 영국 : <fmt:formatDate value="${day}" type="both"/><br/>
	</fmt:timeZone>
	<fmt:timeZone value="GMT-5">
		뉴욕 : <fmt:formatDate value="${day}" type="both"/><br/>
	</fmt:timeZone>
	<%-- --%>
	<fmt:parseNumber value="1000.323" var="result" integerOnly="true"/>
	result = ${result }
	
</body>
</html>