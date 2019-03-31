package bean;

import java.sql.*;


public class LoginProcess {
	private ConnectionProvider datab = null;
	private Connection Conn = null; 
	private String email = null;
	private String pass = null;
	private Statement st = null;
	private ResultSet rs = null;
	
	public LoginProcess(String email, String pass) {
		this.email = email;
		this.pass = pass;
	}
	
	public boolean isLoggedIn() throws Exception {
		datab = new ConnectionProvider();
		
		if (datab.Connected()) {
			Conn = ConnectionProvider.getCon();
			String query = "select * from `registration` where Name = '" +email+ "' AND password = '" +pass+ "'";
		st = Conn.createStatement();
			rs = st.executeQuery(query);
			
			if (rs.next()) {
				return true;
			}
			else {			return false;
		}
		}
		else {
			return false;
		}
	}
}

