<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>기존 : <%=request.getAttribute("num") %></h2>
	<h2>기존 : <%=request.getAttribute("id") %></h2>
	<h2>EL  : ${requestScope.num }</h2>
	<h2>EL  : ${requestScope.id }</h2>
	<h2>EL  : ${num }</h2>
	<h2>EL  : ${id}</h2>
	<h2>data : <%=request.getAttribute("data") %></h2>
	<h2>data$ : ${requestScope.data }</h2>
	<h2>age : <%=Integer.parseInt((String)request.getAttribute("age"))+10 %></h2>
	<h2>age$ : ${requestScope.age +'10' }</h2>
	<h2>session_num : ${sessionScope.num }</h2>
	<h2>session_memId : ${memId }</h2>
	<h2>arr : ${arr }</h2>
	<h2>arr : ${arr[0] }</h2>
	<h2>ArrayList : ${list }</h2>
	<h2>ArrayList : ${list[0] }</h2>
	<h2>ArrayList : ${list.get(1) }</h2>
	<br/>
	<h2>dto : ${dto}</h2>
	<h2>dto_id : ${dto.id}</h2>
	<h2>dto_age : ${dto.age}</h2>
	<h2>dto_name : ${dto.name}</h2>
</body>
</html>