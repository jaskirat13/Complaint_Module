package com.iitms.cms.masters.service;

import java.util.List;

import org.springframework.web.bind.annotation.ResponseBody;

import com.iitms.cms.masters.entity.ComplaintDepartment;

public interface ComplaintDepartmentService {
	
	public boolean addComplaintDepartment(ComplaintDepartment entity);
	public boolean updateComplaintDepartment(ComplaintDepartment entity);
	public boolean deleteComplaintDepartment(int id);
	public List<ComplaintDepartment> getComplaintDepartmentList();
	
	public List<ComplaintDepartment> getAllDepartment();
	
}
