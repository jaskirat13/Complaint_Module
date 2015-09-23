package com.iitms.cms.masters.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.iitms.cms.masters.entity.ComplaintItemMasterEntity;
import com.iitms.cms.masters.service.ComplaintItemService;

@Controller
//@RequestMapping("/item")
public class ComplaintItemController {
	
	private static final Logger logger = LoggerFactory.getLogger(ComplaintDepartmentController.class);
	@Autowired
	private ComplaintItemService complaintItemService;
	
	
	@RequestMapping(value = "/master/complaint-items", method = RequestMethod.GET)
	public String getComplaintItemForm(Model model){
		List<ComplaintItemMasterEntity> list = complaintItemService.listComplaintItem();
		model.addAttribute("complaintItem", new ComplaintItemMasterEntity());
		model.addAttribute("list", list);
		return "/master/complaint-items";
		//return "register_complaint";
	}
	
	@RequestMapping(value = "/master/add-item", method = RequestMethod.POST)
	public String addComplaintItem(@ModelAttribute ComplaintItemMasterEntity complaintItem){
		complaintItemService.addComplaintItem(complaintItem);
		return "redirect:/master/complaint-items";
	}
	
	@RequestMapping(value = "/master/delete-item", method = RequestMethod.POST)
	public String deleteComplaintItem(@RequestParam Integer  complaintItemId){
		logger.info("Delete Item : " + complaintItemId);
		complaintItemService.deleteComplaintItem(complaintItemId);
		return "redirect:/master/complaint-items";
	}
	
	@RequestMapping(value = "/master/update-item", method = RequestMethod.POST)
	public String updateComplaintItem(@ModelAttribute ComplaintItemMasterEntity complaintItem,
			@RequestParam(required  = false) Integer  itemId){
	//	logger.info("Delete Item : " + complaintItemId);
		complaintItem.setItemId(itemId);
		complaintItemService.updateComplaintItem(complaintItem);
		return "redirect:/master/complaint-items";
	}
}
