package bean;


import java.sql.Connection;
import java.sql.DriverManager;

import static bean.Provider.*;

public class ConnectionProvider{
	private static Connection con = null;
	static {
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
		} catch (Exception e) {
			System.out.println(e);
		}

	}
	
	public boolean Connected() throws ClassNotFoundException, Exception {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
		
		if (con != null)
			return true;
		else
			return false;
	}

	public static Connection getCon() {
		return con;
	}

}