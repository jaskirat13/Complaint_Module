package com.iitms.cms.masters.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iitms.cms.masters.entity.ComplaintItemMasterEntity;
import com.iitms.cms.masters.entity.ComplaintTypeEntity;

@Repository
public class ComplaintTypeDaoImpl implements ComplaintTypeDao{
  
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean addComplaint(ComplaintTypeEntity entity) {
		this.sessionFactory.getCurrentSession().save(entity);
		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ComplaintTypeEntity> getComplaints(int deptId) {
		
		Session session = this.sessionFactory.getCurrentSession();
		ProjectionList  projectionList = Projections.projectionList();
		projectionList.add(Projections.property("id").as("id"));
		projectionList.add(Projections.property("complaintTypeName").as("complaintTypeName"));
		projectionList.add(Projections.property("deptId").as("deptId"));
		projectionList.add(Projections.property("complaintDepartment.deptname").as("deptName"));
		
		Criteria criteria = this.sessionFactory.getCurrentSession()
				.createCriteria(ComplaintTypeEntity.class)
				.createAlias("complaintDepartment", "complaintDepartment");
		if(deptId != 0)
			criteria.add(Restrictions.eq("deptId", deptId));
		
		List<ComplaintTypeEntity> list = criteria.setProjection(projectionList)
		.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP)
		.list();
		
		return list;
	}

	@Override
	public boolean updateComplaint(ComplaintTypeEntity entity) {
		this.sessionFactory.getCurrentSession().update(entity);
		return true;
	}

	@Override
	public boolean deleteComplaint(int complaintId) {
		Session session = this.sessionFactory.getCurrentSession();
		int count = session.createQuery("Delete From ComplaintTypeEntity entity where id = :id")
		.setParameter("id", complaintId)
		.executeUpdate();
		return count>0?true:false;
	}

	
	
}
