package com.iitms.cms.masters.entity;

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

@Entity
@Table(name = "complaint_itemmaster_1")
public class ComplaintItemMasterEntity implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "itemid")
	private int itemId;
	@Column(name = "itemcode")
	private String itemCode;
	@Column(name = "itemname")
	private String itemname;
	@Column(name = "itemunit")
	private String itemUnit;
	@Column(name = "maxstock")
	private int maxStock;
	@Column(name = "minstack")
	private int minStack;
	@Column(name = "currentstack")
	private int currentStack;
	@Column(name = "deptid")
	private int deptId;
	@Column(name = "complainttypeid")
	private int complaintTypeId;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "deptid", referencedColumnName = "deptid", insertable = false, updatable = false, nullable = false)
	private ComplaintDepartment ComplaintDepartment;

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getItemCode() {
		return itemCode;
	}

	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}

	public String getItemname() {
		return itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	public String getItemUnit() {
		return itemUnit;
	}

	public void setItemUnit(String itemUnit) {
		this.itemUnit = itemUnit;
	}

	public int getMaxStock() {
		return maxStock;
	}

	public void setMaxStock(int maxStock) {
		this.maxStock = maxStock;
	}

	public int getMinStack() {
		return minStack;
	}

	public void setMinStack(int minStack) {
		this.minStack = minStack;
	}

	public int getCurrentStack() {
		return currentStack;
	}

	public void setCurrentStack(int currentStack) {
		this.currentStack = currentStack;
	}

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public ComplaintDepartment getComplaintDepartment() {
		return ComplaintDepartment;
	}

	public void setComplaintDepartment(ComplaintDepartment complaintDepartment) {
		ComplaintDepartment = complaintDepartment;
	}

	public int getComplaintTypeId() {
		return complaintTypeId;
	}

	public void setComplaintTypeId(int complaintTypeId) {
		this.complaintTypeId = complaintTypeId;
	}
	
	
	
}
