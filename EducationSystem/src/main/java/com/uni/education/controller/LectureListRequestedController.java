package com.uni.education.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.service.LectureService;
import com.uni.education.vo.LectureUserVO;


@Controller
@RequestMapping(value="/jobedu/LectureListRequested")
public class LectureListRequestedController {
	
	private static Logger logger = Logger.getLogger(LectureListRequestedController.class);

	@Autowired
	private LectureService lectureService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm(Model model, HttpSession session) {
		logger.debug("Call LectureListRequested GET");   
		
		List<LectureUserVO> list = lectureService.getLecturesRequested();
		logger.debug("result from DB / size:" + list.size());   
		model.addAttribute("lectureUserList", list);
		
        return "jobedu/LList_standby";
    }
	
	// to delete Lecture 
	@RequestMapping(method = RequestMethod.POST)
    public String processDeleteLecture(String lid, Model model, HttpSession session) {
		try {
			logger.debug("Call LectureListRequested POST");   
			int nResultCode = lectureService.deleteLecture(lid);
			
        	if (nResultCode > 0) { // 성공
        		logger.info("Success to delete Lecture By Admin");
        		model.addAttribute("resultCode", 0);
        		return "redirect:/jobedu/LectureListRequested";
        	} else { //실패
        		logger.info("Fail to Delete lecture By admin");
        		model.addAttribute("resultCode", 1);
        		return "redirect:/jobedu/LectureListRequested";
        	}
    	} catch (Exception e) {
    		logger.info("Exception!!: " + e.toString());
    		e.printStackTrace();
    		model.addAttribute("resultCode", 1);
    		return "redirect:/jobedu/LectureListRequested";
    	}
    }
}
