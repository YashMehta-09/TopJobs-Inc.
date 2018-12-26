package com.topjobs.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.topjobs.bo.RegisterBO;
import com.topjobs.exceptions.ApplicationException;
import com.topjobs.exceptions.DatabaseOperationException;
import com.topjobs.model.User;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatch = null;
		User user = new User();
		RegisterBO registerBO = new RegisterBO();
		user.setUserType(request.getParameter("usertype"));
		user.setFirstName(request.getParameter("firstname"));
		user.setMiddleName(request.getParameter("middlename"));
		user.setLastName(request.getParameter("lastname"));
		Date date=null;
		try {
			date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dob"));
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println(date);
		user.setDateOfBirth(date);
		user.setGender(request.getParameter("gender"));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		
		boolean status;
		try {
			status = registerBO.createUser(user);
			System.out.println(status);
			if(status)
			{
				if(user.getUserType().equals("JobSeeker"))
				{
					dispatch = request.getRequestDispatcher("jsp/resume.jsp");
				}
				else if(user.getUserType().equals("Employer"))
				{
					dispatch = request.getRequestDispatcher("jsp/jobpost.jsp");
				}
				dispatch.forward(request, response);
			}
			
		} catch (ApplicationException | DatabaseOperationException e) {
			// TODO Auto-generated catch block
			dispatch = request.getRequestDispatcher("jsp/error.jsp");
			dispatch.forward(request, response);
		}

	}

	

}
