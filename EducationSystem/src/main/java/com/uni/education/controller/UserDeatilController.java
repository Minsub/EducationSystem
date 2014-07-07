package com.uni.education.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.service.UserService;
import com.uni.education.vo.UserVO;


@Controller
@RequestMapping(value="/jobedu/UserDetail")
public class UserDeatilController {
	
	private static Logger logger = Logger.getLogger(UserDeatilController.class);

	@Autowired
	private UserService userService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm(String uid, Model model) {
        logger.debug("Call UserDetail GET");
        
        if (uid == null || uid.equalsIgnoreCase("")) { 	//유저 생성으로 들어왔을 떄!
        	return "jobedu/UserInfo";
        } else {	//수정으로 들어왔을 떄!
        	UserVO user = userService.getUserByUID(uid);
        	model.addAttribute("user", user);
        	return "jobedu/UserInfo";
        }
    }
	
	// 수정 및 생성 버튼 클릭 
    @RequestMapping(method = RequestMethod.POST)
    public String processMakeLeccture(UserVO user, Model model, HttpSession session) {
    	try {
    		logger.info("Call UserDetail POST");
    		user.encording();
    		
    		UserVO userTmp = userService.getUserByUID(user.getUid());
    		int nResultCode = 0;
    		
    		if (userTmp == null) { //새로 생성인 경우!
    			nResultCode = userService.insertUser(user);
    		} else { //수정인 경우!
    			nResultCode = userService.updateUser(user);
    		}
    		
    		if (nResultCode > 0) { // 성공
        		logger.info("Success");
        		model.addAttribute("resultCode", 0);
        		return "redirect:/jobedu/UserManagement";
        	} else { //실패
        		logger.info("Fail to...");
        		model.addAttribute("resultCode", 1);
        		return "redirect:/jobedu/UserManagement";
        	}
    	} catch (Exception e) {
    		logger.info("Exception!!: " + e.toString());
    		e.printStackTrace();
    		model.addAttribute("resultCode", 1);
    		return "redirect:/jobedu/UserManagement";
    	}
    }
}
