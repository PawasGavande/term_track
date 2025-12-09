package com.entity;

public class ClassDetails {
	private String className;
	private String classID;
	private String photoName;
	public ClassDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ClassDetails(String className, String classID, String photoName) {
		super();
		this.className = className;
		this.classID = classID;
		this.photoName = photoName;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getClassID() {
		return classID;
	}
	public void setClassID(String classID) {
		this.classID = classID;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	

}
