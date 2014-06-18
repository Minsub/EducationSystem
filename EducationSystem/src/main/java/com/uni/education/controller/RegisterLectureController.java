package com.uni.education.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.uni.education.vo.LectureVO;


@Controller
@RequestMapping(value="/jobedu/registerLecture")
public class RegisterLectureController {
	
	private static Logger logger = Logger.getLogger(RegisterLectureController.class);

	@Autowired
	private LectureService lectureService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm(Model model) {
        logger.debug("Call registerLecture GET");
        
        Date date = new Date(System.currentTimeMillis());
        List<LectureUserVO> list = lectureService.getLectureUserForRegistration(new SimpleDateFormat("yyyyMM").format(date));
        model.addAttribute("LectureUserList", list);
        logger.debug("getLuectureUserList by YMD, SIZE:" + list.size());
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
