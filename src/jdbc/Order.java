package jdbc;

import java.sql.*;

public class Order{

	boolean insertOrd(String order_id,String Item,String quantity,String date,String order_s) {
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms", "root", "");

			Statement st = con.createStatement();
			
			int i = st.executeUpdate("insert into `order`(orderID,item,quantity,date,orderStatus)values('"+order_id+"','"+Item+"',"+quantity+",'"+date+"','"+order_s+"')");

			if (i > 0)
			  {
				return true;
			  }
		  }

		catch (Exception e) 
		  {

			System.out.println("error");

		  }
		
		return false;
	}
	
	
}
