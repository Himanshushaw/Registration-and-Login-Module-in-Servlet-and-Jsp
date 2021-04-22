package com.DB;
import java.sql.*;

//this package and class is used for DB Connection

public class DBConnect {
	private static Connection conn;
	public static Connection getConnection() {
		
		try {
			if(conn==null) {
				//load driver
				Class.forName("com.mysql.cj.jdbc.Driver");
				//getting connection
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return conn;
	}

}
