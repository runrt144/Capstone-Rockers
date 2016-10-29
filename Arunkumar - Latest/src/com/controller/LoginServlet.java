package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Registration;
import com.service.LoginService;


public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

	 String email = request.getParameter("email");	
	 String password = request.getParameter("password");
	 LoginService loginService = new LoginService();
	 
	 boolean result = loginService.authenticateUser(email, password);
	 Registration registration = loginService.getUserByEmail(email);
	 if(result == true){
		 request.getSession().setAttribute("registration", registration);		
		 response.sendRedirect("loginhomepage.html");
	 }
	 else{
		 //out.println("<h1>Thanks for Registering with us :</h1>");
		 response.sendRedirect("error.html");
	 }
}

}