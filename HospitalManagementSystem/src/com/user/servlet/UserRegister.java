package com.user.servlet;

import java.io.IOException;

import com.dao.UserDao;
import com.db.DbConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
		try {
			String fullname= req.getParameter("fullname");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			User u= new User(fullname,email,password);
			UserDao dao=new UserDao(DbConnect.getConnection());
			
			HttpSession session=req.getSession();
			
			boolean f=dao.register(u);
			if(f) {
				session.setAttribute("successMessage", "Registerd Successfully");
				resp.sendRedirect("signup.jsp");
				
			}else {
				session.setAttribute("errorMessage", "Something went wrong on server");
				resp.sendRedirect("signup.jsp");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
