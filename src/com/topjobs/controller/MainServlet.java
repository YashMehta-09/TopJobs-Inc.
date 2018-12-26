package com.topjobs.controller;

import java.io.IOException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.topjobs.model.User;




public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatch=null;
		String str = request.getParameter("postjob");
		if("Post".equals(str))
		{
			dispatch = request.getRequestDispatcher("jsp/employermain.jsp");
			//request.setAttribute("user", user);
			dispatch.forward(request, response);
		}
	}

}
