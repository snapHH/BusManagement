package com.login;

import java.io.IOException;
import java.security.interfaces.RSAKey;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/addpassenger")
public class Passenger extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Passenger() {
        super();
      
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String mobile = request.getParameter("mobile");
		String gender = request.getParameter("gender");
		String seat = request.getParameter("seat");
		HttpSession session = request.getSession();
		String from = (String) session.getAttribute("from");
		String to =(String) session.getAttribute("to");
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","java","java123");
			String query = "INSERT INTO PASSENGER (NAME, AGE, MOBILENO, GENDER, SEATNO, DEPATURE, DESTINATION) VALUES (?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, age); 
			ps.setString(3, mobile);
			ps.setString(4, gender);
			ps.setString(5, seat);
			ps.setString(6, from);
			ps.setString(7, to);
			ps.executeUpdate();
			con.close();
			request.setAttribute("status", "user created successfully");
			session.setAttribute("passangerName", name);
			session.setAttribute("seatNO", seat);
			RequestDispatcher dis = request.getRequestDispatcher("payment.jsp");
			dis.forward(request, response);
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			request.setAttribute("message", "Password and Confirm password mismatched");
			RequestDispatcher dispatcher = request.getRequestDispatcher("PassengerDetails.jsp");
			dispatcher.include(request, response);
		}
		
	}

}
