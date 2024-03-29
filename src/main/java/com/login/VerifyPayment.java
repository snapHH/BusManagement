package com.login;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/verify")
public class VerifyPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public VerifyPayment() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
	String number = request.getParameter("number").trim();
	String cardNumber = request.getParameter("cardNumber").trim();
	String month = request.getParameter("month").trim();
	String year = request.getParameter("year").trim();
	String cvv = request.getParameter("cvv").trim();
	String name = request.getParameter("name").trim();
	if(number != "")
	{
		RequestDispatcher dispatcher = request.getRequestDispatcher("ticket.jsp");
		dispatcher.forward(request, response);
	}
	else if(cardNumber != "" && month != "" && year != "" && cvv != "" && name != "")
	{
		RequestDispatcher dispatcher = request.getRequestDispatcher("ticket.jsp");
		dispatcher.forward(request, response);
	}
	else
	{
		request.setAttribute("message", "* Please fill the field");
		RequestDispatcher dispatcher = request.getRequestDispatcher("payment.jsp");
		dispatcher.include(request, response);
	}
	}
}
