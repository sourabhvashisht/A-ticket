package com.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

//import com.model.Login;
import com.model.User;

public class RegisterDao {
	
	
		Session getSession(){
			
			SessionFactory factory=new AnnotationConfiguration().configure().buildSessionFactory();
			return factory.openSession();
		}
	public String adduser(User user) {
	
	
	Session session=getSession();
				session.beginTransaction();
				
			String pk=(String)	session.save(user);
			//String pk=	(String) session.save(login);
				
				
				session.getTransaction().commit();
				
				session.close();
				return pk;
			
		
	
	}
	}


 