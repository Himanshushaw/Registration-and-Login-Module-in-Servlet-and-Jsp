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

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		UserDAO dao = new UserDAO(DBConnect.getConnection());
		User user = dao.getLogin(email, password);

		if (user!=null) {

			// login
	 
			/*  out.println("Login succesfully");
			  out.print(email);
			 out.println(user.getEmail()); out.println(user.getName());
			  out.println(user.getId());*/
			 

			HttpSession session = request.getSession();
			session.setAttribute("loginsuccess",user);
			response.sendRedirect("home.jsp");

		} else {

			// error in login
			
			 out.println("User not Found !!"); 
			
			 

			

		}

	}

}
