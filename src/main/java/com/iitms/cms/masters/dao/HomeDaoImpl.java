package com.iitms.cms.masters.dao;

import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iitms.cms.masters.entity.StudentEntity;

@Repository
public class HomeDaoImpl implements HomeDao{

	@Autowired
	private SessionFactory sessionFactory;
	private static final Logger logger = LoggerFactory.getLogger(HomeDaoImpl.class);
	
	@Override
	public boolean saveStudentRecord(StudentEntity student) {
		this.sessionFactory.getCurrentSession()
		.save(student);
		return true;
	}

	@Override
	public StudentEntity getStudent(int id) {
		logger.info("Session : " + this.sessionFactory);
		StudentEntity entity = (StudentEntity) this.sessionFactory.getCurrentSession().get(StudentEntity.class, id);
		logger.info("STydent : " + entity);
		return entity;
		
	}
	
	
}
