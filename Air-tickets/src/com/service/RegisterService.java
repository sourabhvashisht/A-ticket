package com.service;

import javax.transaction.Transactional;
import com.dao.RegisterDao;
//import com.model.Login;
import com.model.User;

public class RegisterService {
	
	RegisterDao dao=new RegisterDao();
 
@Transactional
public String adduser(User user)
{
	 return dao.adduser(user);
}




}
