package com.iitms.cms.masters.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iitms.cms.masters.entity.ComplaintDepartment;

@Repository
public class ComplaintDepartmentDaoImpl implements ComplaintDepartmentDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean addComplaintDepartment(ComplaintDepartment entity) {
		this.sessionFactory.getCurrentSession().save(entity);
		return true;
	}

	@Override
	public boolean updateComplaintDepartment(ComplaintDepartment entity) {
		this.sessionFactory.getCurrentSession().update(entity);
		return true;
	}

	@Override
	public boolean deleteComplaintDepartment(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		int count = 0;
		
		count = session.createQuery("Delete ComplaintDepartment where id = :id")
		.setParameter("id", id)
		.executeUpdate();
		
		if(count != 0)
			return true;
		else
		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ComplaintDepartment> getComplaintDepartmentList() {
		List<ComplaintDepartment> list = 
				this.sessionFactory.getCurrentSession()
				.createCriteria(ComplaintDepartment.class)
				.addOrder(Order.asc("deptId"))
				.list();

		return list;
	}

	@Override
	public List<ComplaintDepartment> getAllDepartment() {
		
		return null;
	}

	
	
}
