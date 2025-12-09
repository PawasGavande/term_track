package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Student;

public class StudentDAOImpl implements StudentDAO {
	private Connection conn;

	public StudentDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean studentRegister(Student st) {
		boolean a=false;
		try {
			String sql="insert into student(sName,sRollNo,sCourse,sClass,sPhno,sEmail,sPassword) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, st.getsName());
			ps.setString(2, st.getsRollNo());
			ps.setString(3, st.getsCourse());
			ps.setString(4, st.getsClass());
			ps.setString(5, st.getsPhno());
			ps.setString(6, st.getsEmail());
			ps.setString(7, st.getsPassword());
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				a=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}

	@Override
	public Student studentLogin(String susername, String spassword, String srollno) {
		Student st=null;
		
		try {
			String sql="select * from student where sEmail=? and sPassword=? and sRollNo=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, susername);
			ps.setString(2, spassword);
			ps.setString(3, srollno);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				st=new Student();
				st.setsName(rs.getString(1));
				st.setsRollNo(rs.getString(2));
				st.setsCourse(rs.getString(3));
				st.setsClass(rs.getString(4));
				st.setsPhno(rs.getString(5));
				st.setsEmail(rs.getString(6));
				st.setsPassword(rs.getString(7));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return st;
	}
	
	

}
