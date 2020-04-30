package com.example.employee.domain.service.employee;

import java.util.Collections;
import java.util.List;

import javax.inject.Inject;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.employee.domain.model.Employee;
import com.example.employee.domain.model.SearchData;
import com.example.employee.domain.repository.employee.EmployeeRepository;

@Transactional
@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Inject
    EmployeeRepository employeeRepository;
	
	@Override
	public void create(Employee employee) {
		employeeRepository.create(employee);
	}

	@Override
	public Page<Employee> findAll(SearchData criteria, Pageable pageable) {
		long total = employeeRepository.countByCriteria(criteria);
		List<Employee> empList;
		if(0<total) {
			empList = employeeRepository.findPageByCriteria(criteria, pageable);
		}else {
			empList = Collections.emptyList();
		}
		//empList = employeeRepository.findALL(criteria);
		//Page<Employee> page = new PageImpl<Employee>(empList); 
		return new PageImpl<>(empList, pageable, total);
	}

	@Override
	public Employee findByID(String empID) {
		Employee employee = employeeRepository.findByID(empID);
		return employee;
	}

	@Override
	public void deleteProc(String empID) {
		employeeRepository.deleteProc(empID);
	}
}
