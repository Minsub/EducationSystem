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
import com.uni.education.vo.RegistrationUserVO;
import com.uni.education.vo.RegistrationVO;


@Controller
@RequestMapping(value="/jobedu/UserListInLecture")
public class UserListInLectureController {
	
	private static Logger logger = Logger.getLogger(UserListInLectureController.class);

	@Autowired
	private RegisterService registerService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm(String lid, Model model) {
        logger.info("Call UserListInLecture GET");
        logger.debug("parameter check / lid:" + lid);
        
        List<RegistrationUserVO> list = registerService.getUserListByLid(lid);
        
        model.addAttribute("RegistrationUserList", list);
        
        return "jobedu/UserList_Lecture";
    }
	
	// 삭 버튼 클릭 
    @RequestMapping(method = RequestMethod.POST)
    public String processMakeLeccture(RegistrationVO registration, Model model, HttpSession session) {
    	logger.info("Call UserListInLecture POST");
    	registration.encording();
		String lid = registration.getLecture_id();
		String uid = registration.getUser_id();
		logger.debug("parameter Check/ lid:" + lid + ", uid:" + uid);
    	
		try {
    		int nResultCode = registerService.cancelLecture(uid, lid);
  
    		if (nResultCode > 0) { // 성공
        		logger.info("Success");
        		model.addAttribute("resultCode", 0);
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
