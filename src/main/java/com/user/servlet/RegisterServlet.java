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

@WebServlet("/Tregister")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter("tname");
			String idTeacher=req.getParameter("facultyid");
			String phno=req.getParameter("phno");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			//System.out.println(name+" "+idTeacher+" "+phno+" "+email+" "+password);
			
			
			  User us=new User(); 
			  us.setName(name); 
			  us.setIdteacher(idTeacher);
			  us.setPhno(phno); 
			  us.setEmail(email); 
			  us.setPassword(password);
			  HttpSession session=req.getSession();
			  UserDAOImpl dao=new UserDAOImpl(DBconnect.getConn()); 
			  boolean f=dao.teacherRegister(us); 
			  if(f) {
				  //System.out.println("UserRegistered sucessfully");
				  session.setAttribute("succMsg", "Teacher registered Successfully");
				  resp.sendRedirect("Tregister.jsp");
			  } 
			  else {
				  //System.out.println("somethingwent wrong");
				  session.setAttribute("failedMsg", "Something went wrong");
				  resp.sendRedirect("Tregister.jsp");
				  }
			 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
