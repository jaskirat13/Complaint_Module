package com.iitms.cms.transactions.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.iitms.cms.masters.entity.ComplaintDepartment;

@Entity
@Table(name = "complaint_allotment")
public class ComplaintAllotmentEntity implements Serializable{

	@Id@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;
	@Column(name = "complaintid")
	private int complaintId;
	@Column(name = "complainttypeid")
	private int complaintTypeId;
	@Column(name = "employeeid")
	private int employeeId;
	@Column(name = "deptid")
	private int deptId;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "employeeId", referencedColumnName = "id", insertable = false, updatable = false, nullable = false)
	private Employee employee;
	@ManyToOne(fetch =  FetchType.LAZY )
	@JoinColumn(name = "deptId", referencedColumnName = "deptid", insertable = false, updatable = false, nullable = false)
	private ComplaintDepartment complaintDepartment;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getComplaintId() {
		return complaintId;
	}
	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}
	public int getComplaintTypeId() {
		return complaintTypeId;
	}
	public void setComplaintTypeId(int complaintTypeId) {
		this.complaintTypeId = complaintTypeId;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public ComplaintDepartment getComplaintDepartment() {
		return complaintDepartment;
	}
	public void setComplaintDepartment(ComplaintDepartment complaintDepartment) {
		this.complaintDepartment = complaintDepartment;
	}
	
	
}
