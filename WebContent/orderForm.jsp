<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("orderID");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "pms";
String userid = "root";
String password = "";
try {
Class.forName("com.mysql.cj.jdbc.Driver");
}
catch (Exception e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="design.css">
<link rel="stylesheet" href="form.css">
<title>Add order</title>
</head>

<body >

<script>
function validateForm() {	
    var a = document.forms["order"]["order_id"].value;
    var b = document.forms["order"]["item"].value;
    var c = document.forms["order"]["quantity"].value;
    var d = document.forms["order"]["date"].value;
    var e = document.forms["order"]["order_s"].value;
    
   if (a === null || a === "") {
        alert("Order ID not given");
        return false;
    }
   else if (b === null || b === "") {
        alert("Product name not given");
        return false;
    }
   else if (c === null || c === "") {
    	alert("Please enter quantity");
    	return false;
    }
   else if (d === null || d === "") {
    	alert("Choose a date");
    	return false; 
    }
   else if (e === null || e === "") {
   		alert("Update order status");
   		return false; 
   }

 
}
</script>.

	<h1 align="center">pharma.lk</h1>
	<div class="container">
		<form action="OrderServ" method="post" name="order">

			<div class="">
				

				<div class="">
					<label>Order ID</label> <input type="text" class="box"
						name="order_id" value=''>
				</div>
				
				
					
				<div class="">
		<label>Ordered Product</label> 
			<select class="box" name="item">
			
				<%
				try {

				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jah", "root", "");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("SELECT *FROM `suptable`");
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
					</div>
				
				
				<div class="">
					<label>Quantity</label> <input type="text" class="box"
						name="quantity">
				</div>

			

				<div class="">
					<label>Order Date</label> <input type="text" class="box"
						name="date">
				</div>
				
				<div class="">
					<label>Order Status</label> <input type="text" class="box"
						name="order_s" value=''>
				</div>

			</div>

			<div class="go-center">
				<input type="hidden" name="id" value='' align="center">
				<button type="submit" name="btninsert" class="btn btn-info">
					Save</button>
			</div>


		</form>

	</div>
</body>
</html>
