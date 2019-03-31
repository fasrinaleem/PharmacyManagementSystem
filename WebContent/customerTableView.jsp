<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("ID");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "pms";
String userid = "root";
String password = "";
try {
Class.forName(driver);
}
catch (Exception e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<h1></h1>

<a href="registration.jsp" >User Add  form</a><br><br>


<table border="1">
<tr>

<td>Order ID</td>
<td>Item</td>
<td>Quantity</td>
<td>Order Date</td>
<td>Order Status</td>
<td>update</td>
<td>delete</td>



</tr>
<%
try{

connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms","root","");

Statement st = connection.createStatement();

resultSet=st.executeQuery("select * from `registration`");

while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("ID") %></td>
<td><%=resultSet.getString("FirstName") %></td>
<td><%=resultSet.getString("LastName") %></td>
<td><%=resultSet.getString("Email") %></td>
<td><%=resultSet.getString("Password") %></td>
<td><a href="UpdateCustomer.jsp?ID=<%=resultSet.getString("ID")%>">update</a></td>
<td><a href="deleteFromCustomer.jsp?ID=<%=resultSet.getString("ID")%>"><button type="submit" name="btndelete" class="btn btn-info">delete</button></a></td>


</tr>
<%
}

} catch (Exception e) {
e.printStackTrace();
}
finally{
	connection.close();	
}
%>
</table>
</body>
</html>