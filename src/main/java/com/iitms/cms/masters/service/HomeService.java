package com.iitms.cms.masters.service;

import com.iitms.cms.masters.entity.StudentEntity;

public interface HomeService {

	public boolean saveStudentRecord(StudentEntity student);
	public StudentEntity getStudent(int id);
	
}
