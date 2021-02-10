<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body bgcolor="<%=col%>">
<%-- #1. 선언부 --%>
<%!
	// 선언부: 클래스 영역
	// 클래스, 인스턴스 변수
	static int num = 5;
	int num2 = 10;
	String col = "yellow";
	// 메서드
	public int multiply(int num1, int num2){
		return num1*num2;
	}
%>
<%-- 출력문은 마지막에 세미콜론 없이 사용 --%>
10*20=<%= multiply(10, 20) %><br />

<%-- 스크립트릿: 메서드 영역, 가장 많이 사용, 로직 부분을 표현함. --%>
<%
	// 자바 메서드 영역
	// 선언된 변수는 지역변수
	int a = 100;
	for(int i=0; i<num; i++){
		out.println("java server pages"+i+"<br />");
	}
	
%>
</body>
</html>