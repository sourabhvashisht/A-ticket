package com.controller;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
 

import com.controller.Hibernatedao;
import com.controller.User;
 
public class LoginService {
 
    public boolean authenticateUser(String userId, String password) {
        User user = getUserByEmail("Email");         
        if(user!=null && user.getEmail().equals("Email") && user.getPassword().equals(password)){
            return true;
        }else{
            return false;
        }
    }
 
    public User getUserByEmail(String Email) {
        Session session = Hibernatedao.openSession();
        Transaction tx = null;
        User user = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from User where userId='"+Email+"'");
            user = (User)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return user;
    }
     
    public List<User> getListOfUsers(){
        List<User> list = new ArrayList<User>();
        Session session = Hibernatedao.openSession();
        Transaction tx = null;       
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from User").list();                       
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
    }

}
 