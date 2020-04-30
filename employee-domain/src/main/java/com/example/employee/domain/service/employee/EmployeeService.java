package com.example.employee.domain.service.employee;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.example.employee.domain.model.Employee;
import com.example.employee.domain.model.SearchData;

public interface EmployeeService {
	void create(Employee employee);
	Page<Employee> findAll(SearchData criteria, Pageable pageable);
	Employee findByID(String empID);
	void deleteProc(String empID); 
}
