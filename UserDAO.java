package com.DAO;

import java.sql.*;

import com.entity.User;
import com.mysql.cj.protocol.Resultset;

public class UserDAO {
	private Connection con;

	public UserDAO(Connection con) {
		super();
		this.con = con;
	}

	public boolean userRegistration(User us) {
		boolean f = false;

		try {

			String sql = "INSERT INTO user(name,email,password) VALUES(?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, us.getName());
			pstmt.setString(2, us.getEmail());
			pstmt.setString(3, us.getPassword());

			pstmt.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	
	public User getLogin(String email,String password) {
		User user=null;

		try {
			String sql="SELECT * FROM user WHERE email=? and password=?";

			PreparedStatement pstmt =this.con.prepareStatement(sql);
			pstmt.setString(1,email);
			pstmt.setString(2,password);

			ResultSet rs=pstmt.executeQuery();

			if (rs.next()){
				user=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return user;
	}

}
