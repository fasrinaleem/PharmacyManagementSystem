 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%

String order_id=request.getParameter("order_id");
String Item=request.getParameter("item");
String quantity=request.getParameter("quantity");
String date=request.getParameter("date");
String order_s=request.getParameter("order_s");


try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms","root","");
Statement st = conn.createStatement();

int i=st.executeUpdate("insert into `order`(orderID,item,quantity,date,orderStatus)values('"+order_id+"','"+Item+"',"+quantity+",'"+date+"','"+order_s+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
	System.out.println(e);
}

%>

<a href="orderTableView.jsp" >View Order Table</a><br><br>
