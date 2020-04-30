package com.example.employee.domain.repository.employee;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Pageable;

import com.example.employee.domain.model.Employee;
import com.example.employee.domain.model.SearchData;

public interface EmployeeRepository {
	void create(Employee employee);
	long countByCriteria(@Param("criteria") SearchData srcData);
	List<Employee> findALL(@Param("criteria") SearchData srcData);
	List<Employee> findPageByCriteria(@Param("criteria") SearchData srcData, @Param("pageable") Pageable pageable);
	Employee findByID(String empID);
	void deleteProc(String empID);
}
