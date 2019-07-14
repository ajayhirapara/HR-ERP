package com.os.service;

import com.os.bean.Employee;

public interface EmployeeService {
	
	public Employee findEmployeeById(int empId);
	
	public void saveEmployee(Employee employee);
	
	public void deleteEmployee(Employee employee);
	
}
