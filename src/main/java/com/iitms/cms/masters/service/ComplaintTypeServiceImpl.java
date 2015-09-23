package com.iitms.cms.masters.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iitms.cms.masters.dao.ComplaintTypeDao;
import com.iitms.cms.masters.entity.ComplaintTypeEntity;

@Service
public class ComplaintTypeServiceImpl implements ComplaintTypeService{

	@Autowired
	private ComplaintTypeDao complaintTypeDao;
	
	@Override
	@Transactional
	public boolean addComplaint(ComplaintTypeEntity entity) {
		return complaintTypeDao.addComplaint(entity);
	}

	@Override
	@Transactional
	public List<ComplaintTypeEntity> getComplaints(int deptId) {
		return complaintTypeDao.getComplaints(deptId);
	}

	@Override
	@Transactional
	public boolean updateComplaint(ComplaintTypeEntity entity) {
		return complaintTypeDao.updateComplaint(entity);
	}

	@Override
	@Transactional
	public boolean deleteComplaint(int complaintId) {
		return complaintTypeDao.deleteComplaint(complaintId);
	}

	
}
