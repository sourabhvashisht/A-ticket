package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.controller.RegisterService;
import com.controller.User;
 
 public class RegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
     response.setContentType("text/html;charset=UTF-8");
     PrintWriter out = response.getWriter();
     String Name = request.getParameter("Name");
     String Email = request.getParameter("Email");
     String password = request.getParameter("password");
     String contact = request.getParameter("contact");
     User user = new User(Name,Email, password, contact);
             
     try { 
         RegisterService registerService = new RegisterService();
         boolean result = registerService.register(user);      
         if(result){
        	 RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
        	 rd.forward(request, response);
         }else{
        	 response.sendRedirect("signup.jsp");
         }
        
     } finally {       
         out.close();
     }
}
 }
