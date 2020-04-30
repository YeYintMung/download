package com.example.employee.app.employee;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

public class UserForm implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@NotNull
	private String empid;
	
	@NotNull
	private String depart;
	
	@NotNull
	private String empname;
	
	@NotNull
	private String joindate;
	
	@NotNull
	private String dob;
	
	@NotNull
	private String position;
	
	@NotNull
	private String gender;
	
	@NotNull
	private String email;
	
	@NotNull
	private String marstatus;
	
	@NotNull
	private String phone;
	
	@NotNull
	private String jplevel;
	
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


	@Override
	public String toString() {
		return "UserForm [empid=" + empid + ", depart=" + depart + ", empname=" + empname + ", joindate=" + joindate
				+ ", dob=" + dob + ", position=" + position + ", gender=" + gender + ", email=" + email + ", marstatus="
				+ marstatus + ", phone=" + phone + ", jplevel=" + jplevel + "]";
	}	
}
