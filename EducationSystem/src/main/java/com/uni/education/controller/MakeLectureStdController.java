package com.uni.education.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.utils.JUtils;
import com.uni.education.service.LectureService;
import com.uni.education.vo.LectureVO;


@Controller
@RequestMapping(value="/jobedu/makeLectureStd")
public class MakeLectureStdController {
	
	private static Logger logger = Logger.getLogger(MakeLectureStdController.class);

	@Autowired
	private LectureService lectureService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm() {
        logger.debug("Call makeLectureStd GET");
        return "jobedu/makeLecture_STD";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String processMakeLeccture(LectureVO lecture, Model model, HttpSession session) {
    	try {
    		logger.info("Call makeLectureStd POST");
    		lecture.encording();
    	
    		logger.debug("check parameter/ lname:" + lecture.getLname());
    		lecture.setTeacherID((String)(session.getAttribute("uid")));
    		
        	int nResultCode = lectureService.insertLectureForTeacher(lecture);
        	
        	if (nResultCode > 0) { // 성공
        		logger.info("Success to InsertLecture By Teacher");
        		model.addAttribute("resultCode", 0);
        		return "redirect:/jobedu/makeLectureStd";
        	} else { //실패
        		logger.info("Fail to InsertLecture By Teacher");
        		model.addAttribute("resultCode", 1);
        		return "redirect:/jobedu/makeLectureStd";
        	}
    	} catch (Exception e) {
    		logger.info("Exception!!: " + e.toString());
    		e.printStackTrace();
    		model.addAttribute("resultCode", 1);
    		return "redirect:/jobedu/makeLectureStd";
    	}
    }
}
