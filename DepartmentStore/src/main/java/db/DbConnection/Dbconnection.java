package db.DbConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Dbconnection {
	
	public static Connection init() throws ClassNotFoundException, SQLException {
		Connection con=null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3308/ DepartmentStore?autoReconnect=true&&useSSL=false","root","root");
			
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	return con;

	}
}