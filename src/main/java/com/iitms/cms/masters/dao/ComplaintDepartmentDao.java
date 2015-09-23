package com.iitms.cms.masters.dao;

import java.util.List;

import com.iitms.cms.masters.entity.ComplaintDepartment;

public interface ComplaintDepartmentDao {

	public boolean addComplaintDepartment(ComplaintDepartment entity);
	public boolean updateComplaintDepartment(ComplaintDepartment entity);
	public boolean deleteComplaintDepartment(int id);
	public List<ComplaintDepartment> getComplaintDepartmentList();
	
	public List<ComplaintDepartment> getAllDepartment();
}
