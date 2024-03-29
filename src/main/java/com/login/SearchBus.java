package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/searchbus")
public class SearchBus extends HttpServlet
{
	private static final long serialVersionUID = 1L;
   
    public SearchBus() 
    {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String from = request.getParameter("from").trim().toUpperCase();
		String to = request.getParameter("to").trim().toUpperCase();
		String date = request.getParameter("date");
		
		HttpSession session = request.getSession();
		
		Bus bus = new Bus();
		bus.setYourLocation(from);
		bus.setDestination(to);
		
		SearchBusDao searchBusDao = new SearchBusDao();
			
		try {
			if (searchBusDao.search(bus)) 
			{
				request.setAttribute("status", "user created successfully");
				session.setAttribute("from", from);
				session.setAttribute("to", to);
				session.setAttribute("date", date);
				RequestDispatcher dis = request.getRequestDispatcher("Busdetail.jsp");
				dis.forward(request, response);
			}
			else
			{
				request.setAttribute("message", "No buses available...");
				session.setAttribute("from", from);
				session.setAttribute("to", to);
				session.setAttribute("date", date);
				RequestDispatcher dispatcher = request.getRequestDispatcher("SearchTicket.jsp");
				dispatcher.include(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
