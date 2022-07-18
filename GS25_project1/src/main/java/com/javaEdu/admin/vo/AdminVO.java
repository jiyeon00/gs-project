package com.javaEdu.admin.vo;

public class AdminVO {
	
	private String id;
	private String pw;
	private String name;
	private String phone;
	private String email;
	private String home;
	private String homenumber;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	public String getHomenumber() {
		return homenumber;
	}
	public void setHomenumber(String homenumber) {
		this.homenumber = homenumber;
	}
	
	@Override
	public String toString() {
		return "MyappVO id= "+id+" pw= " +pw+ " name= "+name+" phone= "+phone+" email= "+email+" home= "+home+" homenumber= "+homenumber;
	}
}
