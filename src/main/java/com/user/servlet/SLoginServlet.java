package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.StudentDAOImpl;
import com.DB.DBconnect;
import com.entity.Student;

@WebServlet("/Slogin")
public class SLoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			StudentDAOImpl sdao=new StudentDAOImpl(DBconnect.getConn());
			
			HttpSession session=req.getSession();
			
			String susername=req.getParameter("susername");
			String spassword=req.getParameter("spassword");
			String srollno=req.getParameter("srollno");
			
		    Student st=sdao.studentLogin(susername, spassword, srollno);
		    if(st!=null)
		    {
		    	session.setAttribute("studentobj", st);
		    	resp.sendRedirect("SDashboard.jsp");
		    }
		    else
		    {
		    	session.setAttribute("sfailedMsg", "Enter Valid Credentials");
		    	resp.sendRedirect("Slogin.jsp");
		    }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
