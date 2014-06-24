package com.uni.education.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.service.LectureService;
import com.uni.education.service.RegisterService;
import com.uni.education.vo.UserVO;


@Controller
@RequestMapping(value="/jtest")
public class JTESTController {
	
	private static Logger logger = Logger.getLogger(JTESTController.class);

	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private LectureService lectureService;
	
	@Autowired
	private RegisterService registerService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm(String uid, Model model) {
		logger.debug("*** TEST **** lid:" + uid);
		model.addAttribute("resultCode", 0);
        return "jobedu/jtest";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String processLogin(UserVO user, Model model, HttpSession session) {
        
    	model.addAttribute("uid","1234567890");
    	return "redirect:/jtest";
    }

}
