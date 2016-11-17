package com.service;

import javax.transaction.Transactional;


import org.hibernate.Criteria;

import com.dao.LoginDao;
//import com.model.Login;

public class LoginService{

LoginDao dao=new LoginDao();
	
	@Transactional
	public Object checkUser(String email, String password) {
		System.out.println("d");
		return dao.checkUser(email,password);
	}
	
}
