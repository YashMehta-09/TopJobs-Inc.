package com.topjobs.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.topjobs.bo.LoginBO;
import com.topjobs.exceptions.ApplicationException;
import com.topjobs.exceptions.DatabaseOperationException;
import com.topjobs.model.User;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatch = request.getRequestDispatcher("jsp/register.jsp");
		dispatch.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatch = null;
		User user = new User();
		LoginBO loginBO = new LoginBO();
		user.setUserType(request.getParameter("usertype"));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		
		try {
			boolean status = loginBO.checkUser(user);
			System.out.println(status);
			System.out.println(user.getFirstName());
			if(status)
			{
				if(user.getUserType().equals("JobSeeker"))
				{
					dispatch = request.getRequestDispatcher("jsp/jobseekermain.jsp");
					request.setAttribute("user", user);
					dispatch.forward(request, response);
				}
				else if(user.getUserType().equals("Employer"))
				{
					dispatch = request.getRequestDispatcher("jsp/employermain.jsp");
					request.setAttribute("user", user);
					dispatch.forward(request, response);
				}
				else if(user.getUserType().equals("Administrator"))
				{
					dispatch = request.getRequestDispatcher("jsp/administratormain.jsp");
					request.setAttribute("user", user);
					dispatch.forward(request, response);
				}
			}
		} catch (ApplicationException | DatabaseOperationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
