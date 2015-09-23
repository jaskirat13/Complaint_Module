package com.iitms.cms.transactions.service;

import java.util.List;

import com.iitms.cms.transactions.entity.ComplaintRegisterEntity;

public interface ComplaintRegisterService {

	public boolean addComplaint(ComplaintRegisterEntity entity);
	public List<ComplaintRegisterEntity> getAllComplaints();
}
