package com.iitms.cms.reports.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iitms.cms.masters.entity.ComplaintItemMasterEntity;
import com.iitms.cms.masters.service.ComplaintItemService;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

@Controller
public class MastersReportController {

	private static final Logger logger = LoggerFactory.getLogger(MastersReportController.class);
	
	@Autowired
	private ComplaintItemService complaintItemService;
	
	
	@RequestMapping(method = RequestMethod.GET , value = "/complaint-item-report")
    public ModelAndView generatePdfReport(ModelAndView modelAndView){

        logger.debug("--------------generate PDF report----------");

        Map<String,Object> parameterMap = new HashMap<String,Object>();

        List<ComplaintItemMasterEntity> itemList = complaintItemService.listComplaintItem();

        JRDataSource JRdataSource = new JRBeanCollectionDataSource(itemList);

        parameterMap.put("datasource", JRdataSource);

        //pdfReport bean has ben declared in the jasper-views.xml file
        modelAndView = new ModelAndView("complaintItemReport", parameterMap);
        return modelAndView;

    }

}
