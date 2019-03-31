package jdbc;

import java.sql.*;

public class OrderUpdate {

	boolean updateOrd(String orderID ,String item, String quantity, String date ,String orderStatus) {
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms", "root", "");

			Statement st = con.createStatement();
			
			int i = st.executeUpdate("Update order set orderID='"+orderID+"',item='"+item+"',quantity='"+quantity+"',date='"+date+"',orderStatus='"+orderStatus+"'  where orderID='"+orderID+"'");
			

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
