package bean;


import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegisterDao {

	public static int register(User u) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement ps = con.prepareStatement("insert into  `registration`(FirstName,LastName,Email,Password) values(?,?,?,?)");
			//ps.setString(1, u.getID());
			ps.setString(1, u.getFirstName());
			ps.setString(2, u.getLastName());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPass());

			status = ps.executeUpdate();
			
		} 
		catch (Exception e) {
		}

		return status;
	}

}