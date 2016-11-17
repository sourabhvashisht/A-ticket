package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

import com.controller.LoginService;
import com.controller.User;
 
 
public class LoginServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = -1171035564437065689L;
	/**
	 * 
	 */
	//private static final long serialVersionUID = 1L;
	private static final String Email = null;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
     String Email = request.getParameter("Email");   
     String password = request.getParameter("password");
     LoginService loginService = new LoginService();
     boolean result = loginService.authenticateUser(Email, password);
     User user = loginService.getUserByEmail("Email");
     if(result == true){
         request.getSession().setAttribute("user", user);      
         response.sendRedirect("book.jsp");
     }
     else{
         response.sendRedirect("Login.jsp");
     }
}
 
}
/*- See more at: http://www.javawebtutor.com/articles/hibernate/mvc-appliction-using-servlet-jsp-and-hibernate.php#sthash.xincY5Sh.dpuf*/