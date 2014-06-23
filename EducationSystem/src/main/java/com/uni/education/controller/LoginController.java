package com.uni.education.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.service.UserService;
import com.uni.education.vo.UserVO;


@Controller
@RequestMapping(value="/login")
public class LoginController {
	
	private static Logger logger = Logger.getLogger(LoginController.class);

	@Autowired
	private UserService userService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm(HttpSession session) {
        logger.debug("Call Login-Page");
        
        String uid = (String)session.getAttribute("uid");
        if (uid == null || "".equalsIgnoreCase(uid)) {
        	return "login";
        } else {
        	return "redirect:/jobedu";
        }
    }

    @RequestMapping(method = RequestMethod.POST)
    public String processLogin(UserVO user, HttpSession session) {
        
        String uid = user.getUid();
        String pw = user.getPw();
        logger.debug("Try to login, ID:[" + uid + "]");
  
        user = userService.login(uid, pw);
		if (user != null) { //로그인 체크 
			 session.setAttribute("uid", uid);
			 session.setAttribute("uname", user.getUname());
			 session.setAttribute("team", user.getTeam());
			 session.setAttribute("rank", user.getRank());
			 session.setAttribute("teacher", user.getTeacher());
			 session.setAttribute("admin", user.getAdmin());
			 logger.debug("check result form db/  uname:" + user.getUname()  + ", teacher:" + user.getTeacher());
			 return "redirect:/jobedu";
		} else {
			logger.info("Failed to login, ID:[" + uid + "]");
			return "redirect:/login";
		}
    }
}
