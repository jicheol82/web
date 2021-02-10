<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%-- 스크립트릿과 출력문 연습
	스크립트릿에 변수 만들어서 출력문으로 출력
	구구단 2단 출력: for문 자바, 화면 출력은 html <h3>로
--%>

<%
	int a=10;
%>
	int a=<%=a%><br/>
<%
	for(int i=1;i<10;i++){
		int res = 2*i;%>
		2 * <%=i%> = <%=res %><br/>
	<%}
%>