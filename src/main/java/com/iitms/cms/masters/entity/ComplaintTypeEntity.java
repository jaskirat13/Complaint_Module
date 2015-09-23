package com.iitms.cms.masters.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "\"COMPLAINT_TYPE\"")
public class ComplaintTypeEntity implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "\"TYPEID\"")
	private int id;
	@Column(name = "\"TYPENAME\"")
	private String complaintTypeName;
	@Column(name = "\"DEPTID\"")
	private int deptId;
	
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "\"DEPTID\"", referencedColumnName = "deptId",  insertable = false, updatable = false, nullable = false)
	private ComplaintDepartment complaintDepartment; 
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getComplaintTypeName() {
		return complaintTypeName;
	}
	public void setComplaintTypeName(String complaintTypeName) {
		this.complaintTypeName = complaintTypeName;
	}
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	@Override
	public String toString() {
		return "ComplaintTypeEntity [id=" + id + ", complaintTypeName=" + complaintTypeName + ", deptId=" + deptId
				+ ", omplaintDepartment=" + complaintDepartment + "]";
	}
	
	
	
	
}
