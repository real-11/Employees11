package com.employees1.Service;

import java.util.List;

import com.employees1.Entity.Employees1;

public interface EmployeeService {
	public void saveDetails(Employees1 emp);
	public List<Employees1> getAllEmployee();
	public void deleteid(long id);
	public Employees1 getEmployeeById(long id);
}
