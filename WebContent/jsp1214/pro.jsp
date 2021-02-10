<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pro</title>
</head>
	<%
	// post 형식: 인코딩 처리(한글깨짐 방지): getPrameter로 데이터 꺼내기 전에 처리
	request.setCharacterEncoding("UTF-8");
	
	//파라미터값 한개만 나옴
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pet = request.getParameter("pet");
	
	//
	String[] pets = request.getParameterValues("pet");
	
	Enumeration paraName = request.getParameterNames();
	while(paraName.hasMoreElements()){
		String name = (String)paraName.nextElement();
		out.println(name + " <br/>");
	}
	%>
<body>
	id : <%=id %> <br/>
	pw : <%=pw %> <br/>
	pet : <%
		for(int i=0;i<pets.length;i++){
			out.println(pets[i]+", ");
		} %><br/>
		
	<h1> pro page</h1>
	<table border="1">
		<tr>
			<td>id
			<td><%=id %>
		</tr>
		<tr>
			<td>pw
			<td><%=pw %>
		</tr>
		<%for (String str:pets){%>
		<tr>
			<td>pet
			<td><%=str %>
		</tr>
		<% }%>
	</table>
	강아지<input type="checkbox" <%if(true){%>checked<%} %>>
</body>
</html>