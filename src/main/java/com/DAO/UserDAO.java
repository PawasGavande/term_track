package com.DAO;

import com.entity.User;

public interface UserDAO {
	public boolean teacherRegister(User us);
	
	public User tlogin(String email, String password, String facultyid);
	

}
