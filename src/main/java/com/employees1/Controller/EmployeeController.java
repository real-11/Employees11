package com.employees1.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.employees1.Entity.Employees1;
import com.employees1.Service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService ES;
	
	@RequestMapping("/newpage")
	public String showLoginPage() {
		return "newpage";
	}
	
	@RequestMapping("/saveDetails")
	public String saveEmplDetails(@ModelAttribute("emp") Employees1 emp, Model model) {
		ES.saveDetails(emp);
		List<Employees1> empl = ES.getAllEmployee();
		model.addAttribute("empl" , empl);
		return "AllEmployee";
	}
	@RequestMapping("/delete")
	public String deleteOneEmployee(@RequestParam("id")long id , Model model) {
		ES.deleteid(id);
		List<Employees1> empl = ES.getAllEmployee();
		model.addAttribute("empl", empl);
		return"AllEmployee";
	}
	@RequestMapping("/update")
	public String updateOneString(@RequestParam("id")long id,Model model) {
		Employees1 empl= ES.getEmployeeById(id);
		model.addAttribute("empl", empl);
		return "UpdateEmployee";

	}
	
	@RequestMapping("/updateDetails")
	public String saveEmplDetail(@ModelAttribute("emp") Employees1 emp, Model model) {
		ES.saveDetails(emp);
		List<Employees1> empl = ES.getAllEmployee();
		model.addAttribute("empl" , empl);
		return "AllEmployee";
	}
	 }