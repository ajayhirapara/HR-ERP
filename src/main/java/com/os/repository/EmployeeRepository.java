package com.os.repository;

import org.springframework.stereotype.Repository;
import org.springframework.data.repository.CrudRepository;

import com.os.bean.Employee;

@Repository
public interface EmployeeRepository extends CrudRepository<Employee,Integer>{

}
