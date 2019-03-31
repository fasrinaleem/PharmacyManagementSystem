 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
String sname=request.getParameter("sname");
String supemail=request.getParameter("supemail");
String connum=request.getParameter("connum");
String prodid=request.getParameter("prodid");
String prodname=request.getParameter("prodname");
String price=request.getParameter("price");
String quan=request.getParameter("quan");
String date=request.getParameter("date");


try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms","root","");
Statement st = conn.createStatement();

int i=st.executeUpdate("insert into `suptable`(sname,semail,contactNo,productid,proName,price,quantity,date)values('"+sname+"','"+supemail+"','"+connum+"','"+prodid+"','"+prodname+"','"+price+"','"+quan+"','"+date+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
	System.out.println(e);
}

%>
