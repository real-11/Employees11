package com.employees1.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employees1.Entity.Employees1;
import com.employees1.Reposatory.EmployeeReposatory;
@Service
public class EmployeeServiceIMPL implements EmployeeService {
	

	@Autowired
	private EmployeeReposatory ER;
	

	@Override
	public void saveDetails(Employees1 emp) {
		ER.save(emp);
	}


	@Override
	public List<Employees1> getAllEmployee() {
		List<Employees1> empl = ER.findAll();
		return empl;
	}


	@Override
	public void deleteid(long id) {
		ER.deleteById(id);
		
	}
	@Override
	public Employees1 getEmployeeById(long id) {
		Optional<Employees1> findById = ER.findById(id);
		Employees1 empl = findById.get();
		return empl;
	}


}
