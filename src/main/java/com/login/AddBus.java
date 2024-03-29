package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addbus")
public class AddBus extends HttpServlet 
{
    public AddBus() {
        super();
      
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String busNo =request.getParameter("busNo").trim();
		String start = request.getParameter("start").toUpperCase().trim();
		String destination =request.getParameter("destination").toUpperCase().trim();
		String fare = request.getParameter("fare").trim();
		String time = request.getParameter("time").toUpperCase().trim();
		
		try 
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","java","java123");
			String query = "INSERT INTO BUSDETAIL (BUSNO, TIME, YOURLOCATION, DESTINATION, FARE) VALUES (?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, busNo);
			ps.setString(2, time); 
			ps.setString(3, start);
			ps.setString(4, destination);
			ps.setString(5, fare);
			ps.executeUpdate();
			con.close();
			request.setAttribute("status", "Bus added successfully");
			RequestDispatcher dis = request.getRequestDispatcher("AddBus.jsp");
			dis.forward(request, response);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
	}

}
