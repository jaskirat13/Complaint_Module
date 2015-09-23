package com.iitms.cms.masters.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iitms.cms.masters.entity.StudentEntity;
import com.iitms.cms.masters.service.HomeService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private HomeService homeService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/student")
	public String getProfile(@RequestParam int id, Model model){
		
		StudentEntity student = homeService.getStudent(id);
		logger.info("Get Student : "  + student);
		model.addAttribute("student", student);
		return "home";
	}
	
	
	@RequestMapping(value = "/dept_type")
	public String get_dept_type(){
		
		
		return "dept_type";
	}
	
	@RequestMapping(value = "/complaint_dept_master")
	public String get_complaint_dept_master(){
		
		
		return "complaint_dept_master";
	}
	
	@RequestMapping(value = "/repair_maintain_user")
	public String get_repair_maintain_user(){
		
		
		return "repair_maintain_user";
	}
	
	@RequestMapping(value = "/register_complaint")
	public String get_register_complaint(){
		
		
		return "register_complaint";
	}
	
	@RequestMapping(value = "/validation")
	public String validation(){
		
		
		return "validation-sample";
	}
	
	@RequestMapping(value = "/set-theme",method=RequestMethod.POST)
	public @ResponseBody String set_theme(@RequestParam String get_theme_path,HttpServletRequest request){
		
		request.getSession().setAttribute("session_theme", get_theme_path);
		
		
		return get_theme_path;
	}
	
}
