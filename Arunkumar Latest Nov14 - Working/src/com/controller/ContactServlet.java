package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ContactServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		//String flight=(String) request.getAttribute("flight"); 
		String flight= request.getParameter("bookingInfo");
		String tripoptFlight= request.getParameter( "tripoptFlight");
		String tripoptFromTo= request.getParameter( "tripoptFromTo");
		String flightDate= request.getParameter( "tripoptDate");
		String flightDur= request.getParameter( "tripoptDur");
		if(flight.equals(null))
			System.out.println("No flight information fetched.");
		else{
			HttpSession session = request.getSession();
			session.setAttribute("flight", flight);
			session.setAttribute("tripoptFlight", tripoptFlight);
			session.setAttribute("tripoptFromTo", tripoptFromTo);
			session.setAttribute("flightDate", flightDate);
			session.setAttribute("flightDur", flightDur);
			response.sendRedirect("bookingContact.jsp");
		}
			
		//Logger logger = Logger.getLogger(flight);
		//logger.info("Selected Flight Informations :  "+flight);
		//request.setAttribute("flight", flight);
		//request.getRequestDispatcher("bookingContact.jsp").forward(request, response);
	}
}
