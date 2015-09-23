package com.iitms.cms.masters.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "complaint_department_1") 
public class ComplaintDepartment implements Serializable{
	
	/**
	 * 
	 */
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	@Column(name = "deptid")
	private int deptId;
	@Column(name = "deptname" )
	private String deptname;
	
	
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	
	@Override
	public String toString() {
		return "ComplaintDepartment [deptId=" + deptId + ", deptname=" + deptname + "]";
	}
	
	
	
	
}
