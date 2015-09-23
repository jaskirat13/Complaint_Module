package com.iitms.cms.transactions.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iitms.cms.transactions.dao.CMSUserDao;
import com.iitms.cms.transactions.entity.ComplaintRepairEmployee;
import com.iitms.cms.transactions.entity.Employee;

@Service
public class CMSUserServiceImpl implements CMSUserService{

	@Autowired
	private CMSUserDao cmsUserDao;

	@Override
	@Transactional
	public List<Employee> getEmployeeOfDept(int deptId) {
		return cmsUserDao.getEmployeeOfDept(deptId);
	}

	@Override
	@Transactional
	public boolean addEmployeeOfDept(ComplaintRepairEmployee employee) {
		if(employee.getIsAdmin() != null){
			employee.setEmployeeType("Admin");
			employee.setEmpId(employee.getAdminId());
		}
		else
			employee.setEmployeeType("Employee");
		
		
		
		return cmsUserDao.addEmployeeOfDept(employee);
	}

	@Override
	@Transactional
	public List<ComplaintRepairEmployee> getComplaintRepairEmployee() {
		return cmsUserDao.getComplaintRepairEmployee();
	}
	
	
}
