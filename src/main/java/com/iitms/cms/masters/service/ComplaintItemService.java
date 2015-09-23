package com.iitms.cms.masters.service;

import java.util.List;

import com.iitms.cms.masters.entity.ComplaintItemMasterEntity;

public interface ComplaintItemService {

	public boolean addComplaintItem(ComplaintItemMasterEntity entity);
	public List<ComplaintItemMasterEntity> listComplaintItem();
	public boolean deleteComplaintItem(Integer  complaintItemId);
	public boolean updateComplaintItem(ComplaintItemMasterEntity complaintItem);
}
