<%@page import="web.jsp0208.mvc.TestDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL01</title>
</head>
<body>
	<%--#1. 변수선언 --%>
	<c:set var="id" value="java"/>
	<c:set var="name">vldk</c:set>
	<h2> id : ${id}</h2>
	<h2> name : ${name} </h2>
	<%--#2. 프로퍼티 설정 /스크립트릿으로 한건 스크립트릿/표현식으로 불러야한다--%>
	<%TestDTO dto = new TestDTO(); %>
	<c:set target="<%=dto%>" property="id" value="test"/>
	<h2>dto.id : <%=dto.getId()%></h2>
	<%--#3. 액션태그, EL사용 --%>
	<jsp:useBean id="dto2" class="web.jsp0208.mvc.TestDTO" />
	<c:set target="${dto2}" property="id" value="액션"/>
	<h2>dto2.id : ${dto2.id}</h2> 
	<%--#4. 변수 삭제 --%>
	<c:remove var="id"/>
	<c:remove var="name"/>
	<h2> id : ${id}</h2>
	<h2> name : ${name} </h2>
	<%--#5. if --%>
	<c:set var="num" value="60"/>
	<c:if test="${num >= 100}">
		<h2>${num}은 100보다 크거나 같다</h2>
	</c:if>
	<c:if test="${num < 100}">
		<h2>${num}은 100보다 작다</h2>
	</c:if>
	<%--#6. choose / choose안에서는 when은 처음 하나만 선택함--%>
	<c:choose>
		<c:when test="${num>50}">
			<h3>50보다 크다</h3>
		</c:when>
		<c:when test="${num>90}">
			<h3>90보다 크다</h3>
		</c:when>
		<c:otherwise>
			<h3>100이냐?</h3>
		</c:otherwise>
	</c:choose>
	<%--#7. forEach --%>
	<c:set var="arr" value="<%=new int[]{1,2,3,4,5}%>"/>
	<c:forEach var="i" items="${arr}">
		<h2>${i}</h2>
	</c:forEach>
	<c:forEach var="i" begin="1" end="5" step="2">
		<h2>${i}</h2>
	</c:forEach>
	<%-- 구구단 2단 ~9단 --%>
	<c:forEach var="i" begin="2" end="9" step="1">
		<c:forEach var="j" begin="1" end="9" step="1">
			<h2> ${i}*${j}=${i*j}</h2>
		</c:forEach>
		<p>-----------</p>
	</c:forEach>	
	<%--foreach속성 --%>
	<c:forEach var="i" items="${arr}" begin="2" end="4" varStatus="status">
		${i} = ${status.index}<br/>
		${i} = ${status.count}<br/>
		${i} = ${status.begin}<br/>
		${i} = ${status.end}<br/>
	</c:forEach>
	<%--#8. forTokens --%>
	<c:forTokens var="ch" items="a,b,c,d,e,f" delims="," >
		<h3>${ch}</h3>
	</c:forTokens>
	<%--#9. import --%>
	<c:import var="login" url="/jsp0208/loginForm.jsp"/>
		${login}
	<%--#10. url --%>
	<c:url var="u" value="../jsp0208/loginForm.jsp">
		<c:param name="id" value="java"/>
		<c:param name="pw" value="1234"/>
	</c:url>
	<%--#11. redirect 위 url에서 설정한 것 사용가능 
	<c:redirect url="${u}"/>
	--%>
	<%--#12. out --%>
	<c:out value="${num}"/>

</body>
</html>