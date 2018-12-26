package com.topjobs.bo;


import com.topjobs.dao.RegisterDAO;
import com.topjobs.exceptions.ApplicationException;
import com.topjobs.exceptions.DatabaseOperationException;
import com.topjobs.model.User;

public class RegisterBO {
	
	public boolean createUser(User user) throws ApplicationException, DatabaseOperationException {
		
		RegisterDAO registerDAO = new RegisterDAO();
		boolean status=registerDAO.createUser(user);
		return status;
		
	}
	
}
