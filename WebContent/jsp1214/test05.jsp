<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	for(int i=0;i<10;i++){
		if(i%2==0){
			out.println(i+"<br>");
		}
	}
	int count = 0;
	int a =10;
	int b =20;
	int c =30;
	
%>

count : <%=++count%><br/>
date : <%= new java.util.Date() %><br/>
total = <%=a+b+c %><br/>
</body>
</html>