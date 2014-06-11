package com.uni.education.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value="/logout")
public class LogOutController {
	
	private static Logger logger = Logger.getLogger(LogOutController.class);

	@RequestMapping(method = RequestMethod.GET)
    public String setupForm(HttpSession session) {
		String uid = (String) session.getAttribute("uid");
		logger.debug("Try to logOut, ID:[" + uid + "]");;
        
		 session.removeAttribute("uid");
		 session.removeAttribute("name");
		 session.removeAttribute("team");
		 session.removeAttribute("rank");
		 session.removeAttribute("teacher");
		 session.removeAttribute("dmin");
        return "redirect:/login";
    }
}
