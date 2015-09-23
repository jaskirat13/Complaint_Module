package com.iitms.cms.transactions.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iitms.cms.transactions.entity.ComplaintRepairEmployee;
import com.iitms.cms.transactions.entity.Employee;
import com.iitms.cms.transactions.service.CMSUserService;
@Controller
public class CMSUserController {

	private static final Logger logger = LoggerFactory.getLogger(CMSUserController.class);
	
	@Autowired
	private CMSUserService cmsUserService;
	
	@RequestMapping(value = "/transaction/user-list")
	private String cmsUserList(){
		return "UserDetails";
	}
	
	@RequestMapping(value = "/transaction/add-cms-user", method = RequestMethod.POST)
	private String createCMSUser(@ModelAttribute ComplaintRepairEmployee employee){
		logger.info("employee : " + employee);
		cmsUserService.addEmployeeOfDept(employee);
		return "redirect:/transaction/user-list";
	}
	
	@RequestMapping("/transaction/get-user-of-dept")
	public @ResponseBody List<Employee> getEmployeeOfDept(@RequestParam Integer deptId){
		List<Employee> list = cmsUserService.getEmployeeOfDept(deptId);
		return list;
	}
	
	@RequestMapping("/transaction/get-all-complaint-repair-employee")
	public @ResponseBody List<ComplaintRepairEmployee> getComplaintRepairEmployee(){
		return cmsUserService.getComplaintRepairEmployee();
	}
}
