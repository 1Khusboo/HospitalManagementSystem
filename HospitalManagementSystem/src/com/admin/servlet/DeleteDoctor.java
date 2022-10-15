package com.admin.servlet;

import java.io.IOException;

import com.dao.DoctorDao;
import com.db.DbConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/deleteDoctor")
public class DeleteDoctor extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		DoctorDao dao= new DoctorDao(DbConnect.getConnection());
		HttpSession session=req.getSession();
		if(dao.deleteDoctor(id)) {
			session.setAttribute("successMessage", "Doctor Delete Successfully..");
			resp.sendRedirect("admin/view_doctor.jsp");
			
		}else {
			session.setAttribute("successMessage", "Something went wrong on server");
			resp.sendRedirect("admin/view_doctor.jsp");
			
		}
		
	}

	

}
