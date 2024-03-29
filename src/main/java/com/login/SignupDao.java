package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SignupDao
{
	public boolean insert(User user)
	{
		try 
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","java","java123");
			String query = "INSERT INTO LOGIN (USERNAME, EMAIL, MOBILENO, PASSWORD) VALUES (?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getEmail()); 
			ps.setString(3, user.getMobileNumber());
			ps.setString(4, user.getPassword()); 
			ps.executeUpdate();
			con.close();
			return true;
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return false;
		
	}
	
}
