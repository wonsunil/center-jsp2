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
		int[] numbers = {1, 2, 3, 11, 12, 13, 21, 22, 23, 31, 32, 33, 41, 42, 43};
		int index = 0;
	%>
	<table border=1>
	<tbody>
	<tr>
	<%
		for(int number : numbers) {
			index++;
	%>
		<td><%=number %></td>	
	<%
			if(index % 3 == 0)
			%> <tr/><tr> <%
		}
	%>
	</tbody>
	</table>
</body>
</html>