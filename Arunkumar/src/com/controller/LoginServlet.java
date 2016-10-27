package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.User;
import com.service.LoginService;


public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

	 String email = request.getParameter("email");	
	 String password = request.getParameter("password");
	 LoginService loginService = new LoginService();
	 
	 boolean result = loginService.authenticateUser(email, password);
	 User user = loginService.getUserByEmail(email);
	 if(result == true){
		 request.getSession().setAttribute("user", user);		
		 response.sendRedirect("success.html");
	 }
	 else{
		 response.sendRedirect("error.html");
	 }
}

}