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
import javax.persistence.Transient;

import com.iitms.cms.masters.entity.ComplaintDepartment;

@Entity
@Table(name = "employee_admin")
public class ComplaintRepairEmployee implements Serializable{

	@Id@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;
	@Column(name = "empid")
	private int empId;
	@Column(name = "adminid")
	private int adminId;
	@Column(name = "deptid")
	private int deptId;
	@Column(name = "employeetype")
	private String employeeType;
	
	@Transient
	private String isAdmin;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "empid", referencedColumnName = "id",  insertable = false, updatable = false, nullable = false)
	private Employee employee;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "adminid", referencedColumnName = "id",  insertable = false, updatable = false, nullable = false)
	private Employee admin;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "deptid", referencedColumnName = "deptId", insertable = false, updatable = false, nullable = false)
	private ComplaintDepartment complaintDepartment;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public String getEmployeeType() {
		return employeeType;
	}

	public void setEmployeeType(String employeeType) {
		this.employeeType = employeeType;
	}

	public String getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(String isAdmin) {
		this.isAdmin = isAdmin;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Employee getAdmin() {
		return admin;
	}

	public void setAdmin(Employee admin) {
		this.admin = admin;
	}

	public ComplaintDepartment getComplaintDepartment() {
		return complaintDepartment;
	}

	public void setComplaintDepartment(ComplaintDepartment complaintDepartment) {
		this.complaintDepartment = complaintDepartment;
	}
	
	
	@Override
	public String toString() {
		return "ComplaintRepairEmployee [id=" + id + ", empId=" + empId + ", adminId=" + adminId + ", deptId=" + deptId
				+ ", employeeType=" + employeeType + ", isAdmin=" + isAdmin + "]";
	}

}
