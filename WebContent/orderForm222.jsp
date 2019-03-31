<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add order</title>
</head>
<body>

	<select class="box" name="category">
		<option value="-1">Select Category</option>
			<%
			try {

				Class.forName("com.mysql.jdbc.Driver").newInstance();
				
				Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/jah","root","");

				Statement st = con.createStatement();

				ResultSet rs  =st.executeQuery("SELECT *FROM `suptable`");
				
					while (rs.next()){
						%>
						<option value="<%=rs.getString("proName")%>"><%=rs.getString("proName")%></option>
						<%
						}
				}
				catch (Exception e) {
					e.printStackTrace();
				}
			%>
	</select>
	
	
</body>
</html>
