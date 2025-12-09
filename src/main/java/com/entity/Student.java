package com.entity;

public class Student {
	private String sName;
	private String sRollNo;
	private String sCourse;
	private String sClass;
	private String sPhno;
	private String sEmail;
	private String sPassword;
	
	
	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsRollNo() {
		return sRollNo;
	}
	public void setsRollNo(String sRollNo) {
		this.sRollNo = sRollNo;
	}
	public String getsCourse() {
		return sCourse;
	}
	public void setsCourse(String sCourse) {
		this.sCourse = sCourse;
	}
	public String getsClass() {
		return sClass;
	}
	public void setsClass(String sClass) {
		this.sClass = sClass;
	}
	public String getsPhno() {
		return sPhno;
	}
	public void setsPhno(String sPhno) {
		this.sPhno = sPhno;
	}
	public String getsEmail() {
		return sEmail;
	}
	public void setsEmail(String sEmail) {
		this.sEmail = sEmail;
	}
	public String getsPassword() {
		return sPassword;
	}
	public void setsPassword(String sPassword) {
		this.sPassword = sPassword;
	}
	@Override
	public String toString() {
		return "Student [sName=" + sName + ", sRollNo=" + sRollNo + ", sCourse=" + sCourse + ", sClass=" + sClass
				+ ", sPhno=" + sPhno + ", sEmail=" + sEmail + ", sPassword=" + sPassword + "]";
	}
	
	

}
