package com.DAO;

import com.entity.Student;

public interface StudentDAO {
	public boolean studentRegister(Student st);
	public Student studentLogin(String suername, String spassword, String srollno);

}
