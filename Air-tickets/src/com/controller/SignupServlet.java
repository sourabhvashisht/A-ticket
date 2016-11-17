package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Booking_servlet
 */
public class SignupServlet extends HttpServlet {
       
    /**
	 * 
	 */
	private static final long serialVersionUID = -8687319715969416827L;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		//String pnr= request.getParameter("pnr"); 
		String email =request.getParameter("email");
		String password =request.getParameter("password");
		String contact = request.getParameter("contact");
		//String airline = request.getParameter("airline");
		//String sql= "insert into users(name,email,password,contact) values('"+name+"','"+from+"','"+to+"','"+contact+"','"+airline+"')";
		try{
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/atickets","root","rish");
			Statement stmt=conn.createStatement();
			String mysql= "insert into users(name,email,password,contact) values('"+name+"','"+email+"','"+password+"','"+contact+"')";
			stmt.executeUpdate(mysql);
			//System.out.println("record inserted");
			}
		catch(Exception e)
		{
			e.printStackTrace();
		}

	}
}
