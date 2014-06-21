package com.uni.education.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.service.UserService;
import com.uni.education.vo.LectureVO;
import com.uni.education.vo.UserVO;


@Controller
@RequestMapping(value="/jobedu/UserManagement")
public class UserManagementController {
	
	private static Logger logger = Logger.getLogger(UserManagementController.class);

	@Autowired
	private UserService userService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm(String lid, Model model) {
        logger.debug("Call UserManagement GET");
    	return "jobedu/Ulist_management";
    }
	
	// 검색버튼 클릭 
    @RequestMapping(method = RequestMethod.POST)
    public String processMakeLeccture(UserVO user, Model model, HttpSession session) {
    	try {
    		logger.info("Call UserManagement POST");
    		
    		List<UserVO> list = userService.getUsers(user);
    		model.addAttribute("userList", list);
    		
    		return "jobedu/Ulist_management";
    	} catch (Exception e) {
    		logger.info("Exception!!: " + e.toString());
    		e.printStackTrace();
    		model.addAttribute("resultCode", 1);
    		return "jobedu/Ulist_management";
    	}
    }
}
