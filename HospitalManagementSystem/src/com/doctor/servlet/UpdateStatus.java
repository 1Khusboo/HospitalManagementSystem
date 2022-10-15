package com.doctor.servlet;

import java.io.IOException;

import com.dao.AppointmentDao;
import com.db.DbConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/updateStatus")
public class UpdateStatus extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			int did=Integer.parseInt(req.getParameter("did"));
			String comm=req.getParameter("comm");
			AppointmentDao dao= new AppointmentDao(DbConnect.getConnection());
			HttpSession session=req.getSession();
			if(dao.updateCommentStatus(id, did, comm))
			{
				session.setAttribute("successMessage", "Comment Updated");
				resp.sendRedirect("doctor/patient.jsp");
			}else 
			{
				session.setAttribute("errorMessage", "Something Went wrong on server");
				resp.sendRedirect("doctor/patient.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	

}
