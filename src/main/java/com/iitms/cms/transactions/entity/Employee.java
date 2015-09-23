package com.iitms.cms.transactions.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.iitms.cms.masters.entity.ComplaintDepartment;

@Entity
@Table(name = "employee")
public class Employee implements Serializable{

	@Id@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;
	@Column(name = "employeetitle")
	private String employeeTitle;
	@Column(name = "employeename")
	private String employeeName;
	@Column(name = "dob")
	@DateTimeFormat(pattern = "DD/MM/YYYY")
	@Temporal(TemporalType.DATE)
	private Date dob;
	@Column(name = "address")
	private String address;
	@Column(name = "phonenumber")
	private String phoneNumber;
	@Column(name = "deptid")
	private int deptId;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "deptid", referencedColumnName = "deptId",  insertable = false, updatable = false, nullable = false)
	private ComplaintDepartment complaintDepartment;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmployeeTitle() {
		return employeeTitle;
	}

	public void setEmployeeTitle(String employeeTitle) {
		this.employeeTitle = employeeTitle;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public ComplaintDepartment getComplaintDepartment() {
		return complaintDepartment;
	}

	public void setComplaintDepartment(ComplaintDepartment complaintDepartment) {
		this.complaintDepartment = complaintDepartment;
	}
	
	
}
