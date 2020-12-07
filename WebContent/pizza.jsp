<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection
		("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		Statement stmt = conn.createStatement();
		String query = "SELECT *FROM TBL_PIZZA_01";
		ResultSet rs = stmt.executeQuery(query);
		
		%>
	<table border=1>
		<thead>
			<td>피자코드</td>
			<td>피자이름</td>
			<td>피자가격</td>
		</thead>
		<tbody>
		<%
		while (rs.next()) {
		%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getInt(3) %></td>
			</tr>
		<%
		};
		%>
		</tbody>
	</table>
		<%
		
		stmt.close();
		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
</body>
</html>