package com.iitms.cms.masters.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iitms.cms.masters.dao.HomeDao;
import com.iitms.cms.masters.entity.StudentEntity;

@Service
public class HomeServiceImpl implements HomeService{

	@Autowired
	private HomeDao homeDao;
	
	@Override
	@Transactional
	public boolean saveStudentRecord(StudentEntity student) {
		return false;
	}

	@Override
	@Transactional
	public StudentEntity getStudent(int id) {
		return homeDao.getStudent(id);
	}

	
	
}
