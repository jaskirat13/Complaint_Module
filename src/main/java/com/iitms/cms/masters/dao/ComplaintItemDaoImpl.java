package com.iitms.cms.masters.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iitms.cms.masters.entity.ComplaintItemMasterEntity;

@Repository
public  class ComplaintItemDaoImpl implements ComplaintItemDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean addComplaintItem(ComplaintItemMasterEntity entity) {
		this.sessionFactory.getCurrentSession().save(entity);
		return true;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ComplaintItemMasterEntity> listComplaintItem() {
		Session session = this.sessionFactory.getCurrentSession();
		ProjectionList  projectionList = Projections.projectionList();
		projectionList.add(Projections.property("itemId").as("itemId"));
		projectionList.add(Projections.property("itemCode").as("itemCode"));
		projectionList.add(Projections.property("itemname").as("itemname"));
		projectionList.add(Projections.property("itemUnit").as("itemUnit"));
		projectionList.add(Projections.property("currentStack").as("currentStack"));
		projectionList.add(Projections.property("minStack").as("minStack"));
		projectionList.add(Projections.property("maxStock").as("maxStock"));
		projectionList.add(Projections.property("deptId").as("deptId"));
		projectionList.add(Projections.property("complaintTypeId").as("complaintTypeId"));
		projectionList.add(Projections.property("ComplaintDepartment.deptname").as("deptName"));
		
		List<ComplaintItemMasterEntity> list = session.createCriteria(ComplaintItemMasterEntity.class)
		.createAlias("ComplaintDepartment", "ComplaintDepartment")
		.setProjection(projectionList)
		.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP)
		.list();
		
		return list;
	}

	@Override
	public boolean deleteComplaintItem(Integer complaintItemId) {
		Session session = this.sessionFactory.getCurrentSession();
		int count = session.createQuery("Delete From ComplaintItemMasterEntity entity where itemId = :itemid")
		.setParameter("itemid", complaintItemId)
		.executeUpdate();
		return count>0?true:false;
	}

	@Override
	public boolean updateComplaintItem(ComplaintItemMasterEntity complaintItem) {
		this.sessionFactory.getCurrentSession().update(complaintItem);
		return true;
	}

	
	
}
