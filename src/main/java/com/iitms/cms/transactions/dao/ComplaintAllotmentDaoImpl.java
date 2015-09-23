package com.iitms.cms.transactions.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iitms.cms.transactions.entity.ComplaintRegisterEntity;

@Repository
public class ComplaintAllotmentDaoImpl implements ComplaintAllotmentDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ComplaintRegisterEntity> getAllComplaints() {
		Session session = this.sessionFactory.getCurrentSession();
		
		ProjectionList projectionList = Projections.projectionList();
		projectionList.add(Projections.property("id").as("id"));
		projectionList.add(Projections.property("complaintDate").as("complaintDate"));
		projectionList.add(Projections.property("complaintDetails").as("complaintDetails"));
		projectionList.add(Projections.property("complaintDepartment.deptname").as("complaintDepartment"));
		projectionList.add(Projections.property("complaintStatus.statusName").as("complaintStatus"));
		
		List<ComplaintRegisterEntity> list = session.createCriteria(ComplaintRegisterEntity.class)
		.setProjection(projectionList)
		.createAlias("complaintDepartment", "complaintDepartment")
		.createAlias("complaintStatusEntity", "complaintStatus")
		.setResultTransformer(new AliasToBeanResultTransformer(ComplaintRegisterEntity.class))
		.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP)
		.list();
		
		return list;
	}

	
}
