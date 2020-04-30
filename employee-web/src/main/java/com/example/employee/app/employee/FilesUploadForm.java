package com.example.employee.app.employee;

import java.io.Serializable;
import java.util.List;

public class FilesUploadForm implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private List<FileUploadForm> fileUploadForms;
	
	private String empID;
	
	public List<FileUploadForm> getFileUploadForms() {
		return fileUploadForms;
	}

	public void setFileUploadForms(List<FileUploadForm> fileUploadForms) {
		this.fileUploadForms = fileUploadForms;
	}

	public String getEmpID() {
		return empID;
	}

	public void setEmpID(String empID) {
		this.empID = empID;
	}
}
