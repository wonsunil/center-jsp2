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
		String query = "SELECT SALENO, SCODE, SALEDATE, PIZZA.PNAME, AMOUNT FROM TBL_salelist_01 SL, TBL_PIZZA_01 PIZZA WHERE SL.PCODE = PIZZA.PCODE";
		ResultSet rs = stmt.executeQuery(query);
		
		%>
	<table border=1>
		<tbody>
		<%
		while (rs.next()) {
		%>
			<tr>
				<td><%=rs.getInt(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getInt(5) %></td>
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