package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

public class SearchBusDao
{
	public boolean search(Bus bus) throws SQLException, ClassNotFoundException
	{
		Class.forName("oracle.jdbc.OracleDriver");
		
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","java","java123");
		String query = "select * from busdetail where yourlocation= ? and destination= ?";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1,bus.getYourLocation());
		ps.setString(2,bus.getDestination()); 
		ResultSet rs = ps.executeQuery();
		while (rs.next()) 
		{
			return true;
		}
		return false;
	}
}
