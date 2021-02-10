<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    buffer="8kb"
    autoFlush="true"
    errorPage="error.jsp"
    isErrorPage="false"
    deferredSyntaxAllowedAsLiteral="false"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	서버 : <%= application.getServerInfo() %><br />
	서블릿: <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %><br />
	jsp: <%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %><br />
</body>
</html>