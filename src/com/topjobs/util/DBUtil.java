package com.topjobs.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import com.topjobs.exceptions.ApplicationException;
import com.topjobs.exceptions.DatabaseOperationException;

public class DBUtil {

	private static Connection connection;
	
	public static Connection getConnection() throws ApplicationException, DatabaseOperationException
	{
		Properties prop =new Properties();
		InputStream inputStream = DBUtil.class.getClassLoader().getResourceAsStream("db.properties");
		try {
			prop.load(inputStream);
			String driver = prop.getProperty("driver");
			String url = prop.getProperty("url");
			String user = prop.getProperty("user");
			String password = prop.getProperty("password");
			
			Class.forName(driver);
			connection = DriverManager.getConnection(url, user, password);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			throw new ApplicationException(e);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			throw new ApplicationException(e);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new DatabaseOperationException(e);
		}
		
		return connection;
	}
}
