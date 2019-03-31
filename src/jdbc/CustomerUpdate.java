package jdbc;

import java.sql.*;

public class CustomerUpdate {

	//ID,FirstName,LastName,Email,Password
	boolean updateCus(String ID ,String FirstName, String LastName, String Email ,String Password) {
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pms", "root", "");

			Statement st = con.createStatement();
			
			int i = st.executeUpdate("Update registration set ID='"+ID+"',FirstName='"+FirstName+"',LastName='"+LastName+"',Email='"+Email+"',Password='"+Password+"'  where ID='"+ID+"'");
			

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
