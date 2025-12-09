package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;


@WebServlet("/CreateCLass")
@MultipartConfig
public class ClassDetailsServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String className=req.getParameter("");
			String classID=req.getParameter("");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
