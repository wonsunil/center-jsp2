<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
	String section = request.getParameter("section") == null ? "" : request.getParameter("section");
%>
</head>
<body>
	<a href="index.jsp?section=A">A</a>
	<a href="index.jsp?section=B">B</a>
	<a href="index.jsp?section=C">C</a>
	<br>
	<%
		switch(section) {
			case "A": %> <%@ include file="pages/A.jsp" %> <%
			break;
			case "B": %> <%@ include file="pages/B.jsp" %> <%
			break;
			case "C": %> <%@ include file="pages/C.jsp" %> <%
			break;
		};
	%>
</body>
</html>