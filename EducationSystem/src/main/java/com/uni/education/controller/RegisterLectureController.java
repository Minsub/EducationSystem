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
import com.uni.education.service.RegisterService;
import com.uni.education.service.UserService;
import com.uni.education.vo.LectureUserVO;
import com.uni.education.vo.RegistrationVO;


@Controller
@RequestMapping(value="/jobedu/registerLecture")
public class RegisterLectureController {
	
	private static Logger logger = Logger.getLogger(RegisterLectureController.class);

	@Autowired
	private LectureService lectureService;
	
	@Autowired
	private RegisterService registerService;
	
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
    public String processRegister(String type, RegistrationVO registration, Model model, HttpSession session) {
    	try {
    		logger.info("Call registerLecture POST, type: " + type);
    		
    		int nResultCode = 0;
    		String uid = (String)session.getAttribute("uid");
    		
    		if (type.equalsIgnoreCase("register")) { //수강등록작업
    			nResultCode = registerService.registerLecture(uid, registration.getLecture_id());
    		} else {  // 수강취소
    			nResultCode = registerService.cancelLecture(uid, registration.getLecture_id());
    		}
    		
        	if (nResultCode > 0) { // 성공
        		logger.info("Success to Insert registration");
        		model.addAttribute("resultCode", 0);
        		return "redirect:/jobedu/registerLecture";
        	} else { //실패
        		logger.info("Fail to Insert registration");
        		model.addAttribute("resultCode", 1);
        		return "redirect:/jobedu/registerLecture";
        	}
    	} catch (Exception e) {
    		logger.info("Exception!!: " + e.toString());
    		e.printStackTrace();
    		model.addAttribute("resultCode", 1);
    		return "redirect:/jobedu/registerLecture";
    	}
    }
}
