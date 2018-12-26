package com.topjobs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.topjobs.constants.QueryConstants;
import com.topjobs.exceptions.ApplicationException;
import com.topjobs.exceptions.DatabaseOperationException;
import com.topjobs.model.User;
import com.topjobs.util.DBUtil;

public class RegisterDAO {

	private Connection connection;
	
	public boolean createUser(User user) throws ApplicationException, DatabaseOperationException 
	{
		boolean status=false;
		try {
			connection = DBUtil.getConnection();
			PreparedStatement pre = connection.prepareStatement(QueryConstants.REGISTER_USER);
			pre.setString(1, user.getUserType());
			pre.setString(2, user.getFirstName());
			pre.setString(3, user.getMiddleName());
			pre.setString(4, user.getLastName());
			java.sql.Date date = new java.sql.Date(user.getDateOfBirth().getTime());
			pre.setDate(5, date);
			pre.setString(6, user.getGender());
			pre.setString(7, user.getEmail());
			pre.setString(8, user.getPassword());
			
			int result = pre.executeUpdate();
			
			if(result>0)
			{
				status=true;
			}
		} catch(SQLException e) {
			throw new DatabaseOperationException(e);
		}
		
		
		return status;
	}
}
