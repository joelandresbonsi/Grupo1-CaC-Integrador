package ar.com.cac.factories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionFactory {

	private static final String SERVER = "jdbc:mysql://localhost:3306";
	private static final String BASE = "bdcarritocompras";
	private static final String USER = "root";
	private static final String PASSWORD = "";
	
	public static Connection getConexion() throws SQLException{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		var conectionString = SERVER+"/"+BASE;
		return DriverManager.getConnection(conectionString, USER, PASSWORD);
		
	}
	 
	
	
}
