package com.topjobs.constants;

public class QueryConstants {

	public final static String REGISTER_USER="insert into user values(?,?,?,?,?,?,?,?)";
	public final static String CHECK_USER="select usertype,firstname,middlename,lastname,dateofbirth,gender,email,password from user where email=?";
}
