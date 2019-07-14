package com.os.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.os.bean.Employee;
import com.os.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	private EmployeeRepository empRepo;
	
	@Override
	public Employee findEmployeeById(int empId) {
		return empRepo.findById(empId).orElse(null);
	}

	@Override
	public void saveEmployee(Employee employee) {
		empRepo.save(employee);
	}

	@Override
	public void deleteEmployee(Employee employee) {
		empRepo.delete(employee);
	}

	
}
