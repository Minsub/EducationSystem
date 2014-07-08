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
import com.uni.education.vo.LectureVO;


@Controller
@RequestMapping(value="/jobedu/RegistrationManaement")
public class RegistrationManagementController {
	
	private static Logger logger = Logger.getLogger(RegistrationManagementController.class);

	@Autowired
	private LectureService lectureService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm(Model model) {
        logger.debug("Call RegistrationManaement GET");
        List<LectureUserVO> list = lectureService.getLectureUsersForManaging(new LectureUserVO());
		model.addAttribute("lectureUserList", list);
        return "jobedu/LList_manage";
    }
	
	// 수정 및 생성 버튼 클릭 
    @RequestMapping(method = RequestMethod.POST)
    public String processMakeLeccture(LectureUserVO lecture, Model model, HttpSession session) {
    	try {
    		logger.info("Call RegistrationManaement POST");
    		lecture.encording();
    		String YMD_STD = lecture.getYMD_STD();
    		String YMD_END = lecture.getYMD_END();
    		String lType = lecture.getLtype();
    		String lName = lecture.getLname();
    		logger.debug("parameter Check/ YMD_STD:" + YMD_STD + ", YMD_END:" + YMD_END + ", lType:" + lType + ", lname:" + lName);
    		
    		List<LectureUserVO> list = lectureService.getLectureUsersForManaging(lecture);
    		
    		model.addAttribute("lectureUserList", list);
    		return "jobedu/LList_manage";
        	
    	} catch (Exception e) {
    		logger.info("Exception!!: " + e.toString());
    		e.printStackTrace();
    		model.addAttribute("resultCode", 1);
    		return "redirect:/jobedu/RegistrationManaement";
    	}
    }
}
