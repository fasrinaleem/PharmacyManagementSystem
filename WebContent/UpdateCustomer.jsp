<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String id = request.getParameter("ID");
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms","root","");
		Statement st = conn.createStatement();
		String sql = "select * from `registration` where ID='"+ id+"'";
		ResultSet rs= st.executeQuery(sql);
		while (rs.next()) {
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>Update Users</h1>


		
	<div class="container">
		<form method="post" action="CustomerServ">
			<input type="hidden" name="ID" value="<%=rs.getString("ID")%>">
			<input type="text" name="ID" value="<%=rs.getString("ID")%>">
			<br> FirstName :<br> 
			<input type="text" name="FirstName" value="<%=rs.getString("FirstName")%>"> 
			<br> LastName :<br> 
			<input type="text" name="LastName" value="<%=rs.getString("LastName")%>"> 
			<br> Email :<br> 
			<input type="text" name="Email" value="<%=rs.getString("Email")%>"> 
			<br>  Password:<br> 
			<input type="text" name="Password" value="<%=rs.getString("Password")%>"> 
		
			<div class="">
				<input type="hidden" name="id" value='' align="center">
				<button type="submit" name="btnupdate" class="btn btn-info">
					Save</button>
			</div>
		</form>
	</div>
	<%
		}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>