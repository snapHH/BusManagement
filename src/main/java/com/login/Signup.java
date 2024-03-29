package com.login;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class Signup extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try 
		{
		String userName =request.getParameter("userName");
		String email = request.getParameter("email");
		String mobileNumber =request.getParameter("mobileNumber");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		
		
		User user = new User();
		user.setUserName(userName);
		user.setEmail(email);
		user.setMobileNumber(mobileNumber);
		user.setPassword(password);
		user.setConfirmPassword(confirmPassword);
		
		if (password.equals(confirmPassword))
		{
			SignupDao signupdao = new SignupDao();
			if (signupdao.insert(user)) 
			{
				request.setAttribute("status", "user created successfully");
				RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
				dis.forward(request, response);
			}
			else 
			{
				request.setAttribute("message", "Username already taken");
				RequestDispatcher dispatcher = request.getRequestDispatcher("signup.jsp");
				dispatcher.include(request, response);
			}
		}
		else if(!password.equals(confirmPassword))
		{
			request.setAttribute("message", "Password and Confirm password mismatched");
			RequestDispatcher dispatcher = request.getRequestDispatcher("signup.jsp");
			dispatcher.include(request, response);
		}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}
