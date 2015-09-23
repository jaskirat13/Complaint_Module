package com.iitms.cms.transactions.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iitms.cms.transactions.entity.ComplaintRepairEmployee;
import com.iitms.cms.transactions.entity.Employee;

@Repository
public class CMSUserDaoImpl implements CMSUserDao{

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> getEmployeeOfDept(int deptId) {
		ProjectionList projection = Projections.projectionList();
		projection.add(Projections.property("id").as("id"));
		projection.add(Projections.property("employeeName").as("employeeName"));
		
		
		
		Session session = this.sessionFactory.getCurrentSession();
		List<Employee> list = session.createCriteria(Employee.class)
		.setProjection(projection)
		.add(Restrictions.eq("deptId", deptId))
		.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP)
		.list();
		
		return list;
	}

	@Override
	public boolean addEmployeeOfDept(ComplaintRepairEmployee employee) {
		this.sessionFactory.getCurrentSession().save(employee);
		return true;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ComplaintRepairEmployee> getComplaintRepairEmployee() {
		Session session = this.sessionFactory.getCurrentSession();
		
		ProjectionList projectionList = Projections.projectionList();
		projectionList.add(Projections.property("employee.employeeName").as("employee"));
		projectionList.add(Projections.property("admin.employeeName").as("admin"));
		projectionList.add(Projections.property("complaintDepartment.deptname").as("deptName"));
		projectionList.add(Projections.property("employeeType").as("employeeType"));
		
		List<ComplaintRepairEmployee> list = session.createCriteria(ComplaintRepairEmployee.class)
		.createAlias("employee", "employee")
		.createAlias("admin", "admin")
		.createAlias("complaintDepartment", "complaintDepartment")
		.setProjection(projectionList)
		.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP)
		.list();
		
		return list;
	}
	
}
