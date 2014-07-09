package com.uni.education.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.service.RegisterService;
import com.uni.education.utils.JUtils;
import com.uni.education.vo.RegistrationUserVO;
import com.uni.education.vo.RegistrationVO;


@Controller
@RequestMapping(value="/jobedu/UserInfoInLecture")
public class UserInfoInLectureController {
	
	private static Logger logger = Logger.getLogger(UserInfoInLectureController.class);

	@Autowired
	private RegisterService registerService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm(String uid, String lid, Model model) {
        logger.info("Call UserInfoInLecture GET");
        logger.debug("parameter check / uid:" + uid + "lid:" + lid);
        
        RegistrationUserVO Ruser = registerService.getUserByUid(uid, lid);
        
        model.addAttribute("RegistrationUserList", Ruser);
        logger.debug("check result from DB / Ruser:" + Ruser.toString());
        return "jobedu/UserInfo_Lecture";
    }
	
	// 삭 버튼 클릭 
    @RequestMapping(method = RequestMethod.POST)
    public String processMakeLeccture(RegistrationVO registration, Model model, HttpSession session) {
    	logger.info("Call UserInfoInLecture POST");
    	registration.encording();
		String lid = registration.getLecture_id();
		String uid = registration.getUser_id();
		logger.debug("parameter Check/ lid:" + lid + ", uid:" + uid);

		JUtils.printVO(registration);
    	
		try {
    		int nResultCode = registerService.updateRegistration(registration);
  
    		if (nResultCode > 0) { // 성공
        		logger.info("Success");
        		model.addAttribute("resultCode", 0);
        		model.addAttribute("lid", lid);
        		return "redirect:/jobedu/UserListInLecture";
        	} else { //실패
        		logger.info("Fail to..");
        		model.addAttribute("resultCode", 1);
        		model.addAttribute("lid", lid);
        		return "redirect:/jobedu/UserListInLecture";
        	}
        	
    	} catch (Exception e) {
    		logger.info("Exception!!: " + e.toString());
    		e.printStackTrace();
    		model.addAttribute("lid", lid);
    		model.addAttribute("resultCode", 1);
    		return "redirect:/jobedu/UserListInLecture";
    	}
    }
}
