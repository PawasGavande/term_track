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

@WebServlet("/Sregister")
public class SregisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String sName=req.getParameter("sname");
			String sRollNo=req.getParameter("srollno");
			String sCourse=req.getParameter("scourse");
			String sClass=req.getParameter("sclass");
			String sPhno=req.getParameter("sphno");
			String sEmail=req.getParameter("semail");
			String sPassword=req.getParameter("spassword");
			
			//System.out.println(sName+" "+sRollNo+" "+sCourse+" "+sClass+" "+sPhno+" "+sEmail+" "+sPassword);
			Student st=new Student();
			st.setsName(sName);
			st.setsRollNo(sRollNo);
			st.setsCourse(sCourse);
			st.setsClass(sClass);
			st.setsPhno(sPhno);
			st.setsEmail(sEmail);
			st.setsPassword(sPassword);
			
			HttpSession session=req.getSession();
			
			StudentDAOImpl sdao=new StudentDAOImpl(DBconnect.getConn());
			boolean a=sdao.studentRegister(st);
			if(a)
			{
				session.setAttribute("sucMsg", "Student Registered Sucessfully");
				resp.sendRedirect("Sregister.jsp");
				//System.out.println("Student registered sucessfully");
			}
			else
			{
				session.setAttribute("failMsg", "Something went wrong on Server");
				resp.sendRedirect("Sregister.jsp");
				//System.out.println("Something went wrong on server");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
