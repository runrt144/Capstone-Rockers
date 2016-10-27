package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.User;
import com.service.RegisterService;


public class RegisterServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
	 response.setContentType("text/html;charset=UTF-8");
	 PrintWriter out = response.getWriter();
	 String id = request.getParameter("id");
	 String firstName = request.getParameter("firstName");
	 String lastName = request.getParameter("lastName");
	 String email = request.getParameter("email");
	 String password = request.getParameter("password");
	 String confirm_password = request.getParameter("confirm_password");
	 String gender = request.getParameter("gender");
	 String zip = request.getParameter("zip");
	 String phone_no = request.getParameter("phone_no");
	 User user = new User( id, firstName,lastName, email, password,confirm_password,gender,zip,phone_no);
	 		
	 try {	
		 RegisterService registerService = new RegisterService();
		 boolean result = registerService.register(user);		
		 out.println("<html>");
		 out.println("<head>");		
		 out.println("<title>Registration Successful</title>");		
		 out.println("</head>");
		 out.println("<body>");
		 out.println("<center>");
		 if(result){
			 out.println("<h1>Thanks for Registering with us :</h1>");
			 out.println("To login with new UserId and Password<a href=login.html>Click here</a>");
		 }else{
			 out.println("<h1>Registration Failed</h1>");
			 out.println("To try again<a href=Registration.html>Click here</a>");
		 }
		 out.println("</center>");
		 out.println("</body>");
		 out.println("</html>");
	 } finally {		
		 out.close();
	 }
}

}