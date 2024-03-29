package com.login;

import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class Login extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	{
    	try 
    	{
    		String userName = request.getParameter("userName");
    		String password = request.getParameter("password");
    		
    		
    			Class.forName("oracle.jdbc.OracleDriver");
        		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","java","java123");
    			
    			String query = "select username from admin where username=? and password=?";
        		
        		PreparedStatement ps = con.prepareStatement(query);
            	
            	ps.setString(1, userName);
            	ps.setString(2, password);
            	ResultSet rs = ps.executeQuery();
            	
            	if (rs.next())
                {
                	RequestDispatcher dis = request.getRequestDispatcher("AddBus.jsp");
        			dis.forward(request, response);
                }
			 else 
    		 {
    			Class.forName("oracle.jdbc.OracleDriver");
        		Connection con1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","java","java123");
    			
    			String query1 = "select username from login where username=? and password=?";
        		
        		PreparedStatement ps1 = con.prepareStatement(query1);
            	
            	ps1.setString(1, userName);
            	ps1.setString(2, password);
            	ResultSet rs1 = ps1.executeQuery();
            	
            	if (rs1.next())
                {
                	RequestDispatcher dis = request.getRequestDispatcher("SearchTicket.jsp");
        			dis.forward(request, response);
                }
                else
                {
                	request.setAttribute("message","Incorrect username or password");
        			RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
        			dis.include(request, response);
                }
			}
    		
    		
    	}
    	catch (Exception e) 
    	{
			System.out.println("error");
		}
	}
}