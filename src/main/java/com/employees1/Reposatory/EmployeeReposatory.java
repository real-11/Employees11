package com.employees1.Reposatory;


import org.springframework.data.jpa.repository.JpaRepository;

import com.employees1.Entity.Employees1;

public interface EmployeeReposatory extends JpaRepository<Employees1, Long> {


}
