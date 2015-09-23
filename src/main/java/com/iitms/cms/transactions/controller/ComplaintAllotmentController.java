package com.iitms.cms.transactions.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iitms.cms.transactions.entity.ComplaintRegisterEntity;
import com.iitms.cms.transactions.service.ComplaintAllotmentService;

@Controller
public class ComplaintAllotmentController {
	
	 private static final Logger logger = LoggerFactory.getLogger(ComplaintAllotmentController.class);
	
	@Autowired
	private ComplaintAllotmentService complaintAllotmentService; 
	
	@RequestMapping("/transaction/complaint-allotment")
	private String getComplaintAllotmentList(){
		return "/transaction/complaint-allotment";
	}
	
	@RequestMapping(value = "/transaction", method = RequestMethod.POST)
	public @ResponseBody List<ComplaintRegisterEntity> getAllComplaints(){
		return complaintAllotmentService.getAllComplaints();
	}
	
	// temproray mapping start 
	@RequestMapping("/transaction/complaint-item-order")
	private String getComplaintItemOrder(){
		return "/transaction/complaint-item-order";
	}
	
	
	@RequestMapping("/transaction/complaint-workout")
	private String complaint_workout(){
		return "/transaction/complaint-workout";
	}
	//temperary mapping end
}
