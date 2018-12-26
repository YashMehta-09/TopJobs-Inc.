package com.topjobs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.topjobs.constants.QueryConstants;
import com.topjobs.exceptions.ApplicationException;
import com.topjobs.exceptions.DatabaseOperationException;
import com.topjobs.model.User;
import com.topjobs.util.DBUtil;

public class LoginDAO {

	private Connection connection;
	
	public boolean checkUser(User user) throws ApplicationException, DatabaseOperationException
	{
		boolean status=false;
		
		try {
			connection = DBUtil.getConnection();
			PreparedStatement pre = connection.prepareStatement(QueryConstants.CHECK_USER);
			pre.setString(1,user.getEmail());
			ResultSet resultSet = pre.executeQuery();
			if(resultSet.next())
			{
				if(resultSet.getString("usertype").equals(user.getUserType()))
				{
					if(resultSet.getString("password").equals(user.getPassword())) 
					{
						status=true;
						user.setFirstName(resultSet.getString("firstname"));
						user.setMiddleName(resultSet.getString("middlename"));
						user.setLastName(resultSet.getString("lastname"));
						user.setDateOfBirth(resultSet.getDate("dateofbirth"));
						user.setGender(resultSet.getString("gender"));
					}
					
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new DatabaseOperationException(e);
		}
		
		
		return status;
		
	}
}
