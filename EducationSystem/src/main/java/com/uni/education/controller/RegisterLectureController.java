package com.uni.education.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.service.LectureService;
import com.uni.education.vo.LectureVO;


@Controller
@RequestMapping(value="/jobedu/registerLecture")
public class RegisterLectureController {
	
	private static Logger logger = Logger.getLogger(RegisterLectureController.class);

	@Autowired
	private LectureService lectureService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm() {
        logger.debug("Call registerLecture GET");
        
        
        
        
        return "jobedu/LList_register";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String processLogin(LectureVO lecture, HttpSession session) {
    	try {
    		logger.info("Call makeLectureStd POST");
        	int nResultCode = lectureService.insertLectureForTeacher(lecture);
        	if (nResultCode > 0) { // 성공
        		logger.info("Success to InsertLecture By Teacher");
        		session.setAttribute("resultCode", 0);
        		return "redirect:/jobedu";
        	} else { //실패
        		logger.info("Fail to InsertLecture By Teacher");
        		session.setAttribute("resultCode", 1);
        		return "jobedu/registerLecture";
        	}
    	} catch (Exception e) {
    		logger.info("Exception!!: " + e.toString());
    		e.printStackTrace();
    		session.setAttribute("resultCode", 1);
    		return "jobedu/registerLecture";
    	}
    }
}
