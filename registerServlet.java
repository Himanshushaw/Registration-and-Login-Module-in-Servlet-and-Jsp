package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("uname");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		User user=new User();
		user.setName(name);
		user.setEmail(email);
		user.setPassword(password);
		
		UserDAO dao=new UserDAO(DBConnect.getConnection());
		boolean f=dao.userRegistration(user);
		if(f==true) {
			//out.println("Data inserted Succesfully...");
			HttpSession session=request.getSession();
			session.setAttribute("reg-msg", "Successfully Registered !");
			response.sendRedirect("register.jsp");
		}else {
			//out.println("Data  not inserted ...");
			HttpSession session=request.getSession();
			session.setAttribute("error-msg", "Issues in server !!");
			response.sendRedirect("register.jsp");
		}
		
		
		

	}

}
