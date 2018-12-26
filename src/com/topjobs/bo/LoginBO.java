package com.topjobs.bo;

import com.topjobs.dao.LoginDAO;
import com.topjobs.exceptions.ApplicationException;
import com.topjobs.exceptions.DatabaseOperationException;
import com.topjobs.model.User;

public class LoginBO {

	public boolean checkUser(User user) throws ApplicationException, DatabaseOperationException
	{
		LoginDAO loginDAO = new LoginDAO();
		boolean status=loginDAO.checkUser(user);
		return status;
	}
}
