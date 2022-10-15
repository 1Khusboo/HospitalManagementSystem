package com.doctor.servlet;

import java.io.IOException;

import com.dao.DoctorDao;
import com.db.DbConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/docChangePassword")
public class DoctorPasswordChange extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int uid= Integer.parseInt(req.getParameter("uid"));
		String oldPassword=req.getParameter("oldPassword");
		String newPassword=req.getParameter("newPassword");
		
		DoctorDao dao= new DoctorDao(DbConnect.getConnection());
		HttpSession session=req.getSession();
		if(dao.checkOldPassword(uid, oldPassword))
		{
			if(dao.changePassword(uid, newPassword)) {
				session.setAttribute("successMessaage", "Password changed Successfully..");
				resp.sendRedirect("doctor/edit_profile.jsp");
			}else {
				session.setAttribute("errorMessage", "Something went wrong on server");
				resp.sendRedirect("doctor/edit_profile.jsp");
				
			}
		}else {
			session.setAttribute("errorMessage", "Old Password Incorrect");
			resp.sendRedirect("doctor/edit_profile.jsp");
			
		}
		
	}

}
