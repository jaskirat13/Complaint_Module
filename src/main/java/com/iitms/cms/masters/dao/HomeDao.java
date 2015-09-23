package com.iitms.cms.masters.dao;

import com.iitms.cms.masters.entity.StudentEntity;

public interface HomeDao {

	public boolean saveStudentRecord(StudentEntity student);
	public StudentEntity getStudent(int id);
}
