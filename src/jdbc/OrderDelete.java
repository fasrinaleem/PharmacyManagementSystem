package jdbc;

import java.sql.*;


public class OrderDelete{
	boolean deleteOrd(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms", "root", "");

			Statement st = con.createStatement();
			
			int i = st.executeUpdate("DELETE FROM `order` WHERE orderID='"+id+"'");

			if (i > 0) {
				return true;
			}
		}

		catch (Exception e) {

			System.out.println("error");

		}
		
		return false;
	}
	
	
	

}
