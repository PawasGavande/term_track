package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBconnect;
import com.entity.User;

@WebServlet("/Tlogin")
public class TLoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			UserDAOImpl dao=new UserDAOImpl(DBconnect.getConn());
			HttpSession session=req.getSession();
			String username=req.getParameter("username");
			String password=req.getParameter("password");
			String facultyid=req.getParameter("facultyid");
			//System.out.println(username+" "+password+" "+facultyid);
			User us=dao.tlogin(username, password, facultyid);
			if(us!=null)
			{
				session.setAttribute("userobj", us);
				resp.sendRedirect("TDashboard.jsp");
			}
			else
			{
				session.setAttribute("failedMsg", "Invalid Credentials");
				resp.sendRedirect("Tlogin.jsp");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	

}
