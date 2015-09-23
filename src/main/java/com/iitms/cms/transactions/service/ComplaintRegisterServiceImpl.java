package com.iitms.cms.transactions.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iitms.cms.transactions.dao.ComplaintRegisterDao;
import com.iitms.cms.transactions.entity.ComplaintRegisterEntity;

@Service
public class ComplaintRegisterServiceImpl implements ComplaintRegisterService{

	@Autowired
	private ComplaintRegisterDao complaintRegisterDao;
	
	@Override
	@Transactional
	public boolean addComplaint(ComplaintRegisterEntity entity) {
		/*try {
			entity.setComplaintDate(new SimpleDateFormat("dd-MM-yyyy").parse(entity.getCompDateStr()));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		return complaintRegisterDao.addComplaint(entity);
	}

	@Override
	@Transactional
	public List<ComplaintRegisterEntity> getAllComplaints() {
		return complaintRegisterDao.getAllComplaints();
	}

	
}
