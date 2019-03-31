<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String id = request.getParameter("id");
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms","root","");
		Statement st = conn.createStatement();
		String sql = "select * from `order` where orderID='"+ id+"'";
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
	<h1>Update data</h1>

	<div class="container">
		<form method="post" action="OrderServ">
			<input type="hidden" name="orderID" value="<%=rs.getString("orderID")%>">
			<input type="text" name="orderID" value="<%=rs.getString("orderID")%>">
			<br> Product :<br> 
			<input type="text" name="item" value="<%=rs.getString("item")%>"> 
			<br> Quantity :<br> 
			<input type="text" name="quantity" value="<%=rs.getString("quantity")%>"> 
			<br> Order Date :<br> 
			<input type="text" name="date" value="<%=rs.getString("date")%>"> 
			<br> Order Status:<br> 
			<input type="text" name="status" value="<%=rs.getString("orderStatus")%>"> 
		
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