package jdbc;

import java.sql.*;

public class CustomerAdd{

	//ID,FirstName,LastName,Email,Password
	boolean insertCus(String ID,String FirstName,String LastName,String Email,String Password) {
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms", "root", "");

			Statement st = con.createStatement();
			
			
			//ID,FirstName,LastName,Email,Password
			int i = st.executeUpdate("insert into `registration`(ID,FirstName,LastName,Email,Password)values('"+ID+"','"+FirstName+"',"+LastName+",'"+Email+"','"+Password+"')");

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
