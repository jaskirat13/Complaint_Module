package com.iitms.cms.transactions.dao;

import java.util.List;

import com.iitms.cms.transactions.entity.ComplaintRegisterEntity;

public interface ComplaintRegisterDao {

	public boolean addComplaint(ComplaintRegisterEntity entity);
	public List<ComplaintRegisterEntity> getAllComplaints();
	
}
