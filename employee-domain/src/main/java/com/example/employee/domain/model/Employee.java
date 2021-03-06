package com.example.employee.domain.model;

import java.io.Serializable;

public class Employee implements Serializable {
	private static final long serialVersionUID = 1L;
	private String empid;
	private String depart;
	private String depname;
	private String empname;
	private String joindate;
	private String dob;
	private String position;
	private String posname;
	private String gender;
	private String email;
	private String marstatus;
	private String phone;
	private String jplevel;
	private String jplevelname;
	
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
	
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getMarstatus() {
		return marstatus;
	}
	public void setMarstatus(String marstatus) {
		this.marstatus = marstatus;
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getJplevel() {
		return jplevel;
	}
	public void setJplevel(String jplevel) {
		this.jplevel = jplevel;
	}
	public String getDepname() {
		return depname;
	}
	public void setDepname(String depname) {
		this.depname = depname;
	}
	public String getPosname() {
		return posname;
	}
	public void setPosname(String posname) {
		this.posname = posname;
	}
	public String getJplevelname() {
		return jplevelname;
	}
	public void setJplevelname(String jplevelname) {
		this.jplevelname = jplevelname;
	}
}
