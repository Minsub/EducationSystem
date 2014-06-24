package com.uni.education.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.service.LectureService;
import com.uni.education.service.RegisterService;
import com.uni.education.vo.LectureUserVO;
import com.uni.education.vo.RegistrationUserVO;


@Controller
@RequestMapping(value="/jobedu/LectureDetail")
public class LectureDetailController {
	
	private static Logger logger = Logger.getLogger(LectureDetailController.class);

	@Autowired
	private LectureService lectureService;
	@Autowired
	private RegisterService registerService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm(String lid,Model model) {
		try {
	        logger.debug("Call registerLecture GET");
	        logger.debug("check parameter/ lid:" + lid);
	        
	        LectureUserVO lectureUser = lectureService.getLectureUserById(lid);
	        List<RegistrationUserVO> ruList = registerService.getUserListByLid(lid);
	        
	        
	        model.addAttribute("LectureUser", lectureUser); //해당 수업의 디테일
	        model.addAttribute("RUserList", ruList);//해당 수업에 등록된 User
	        logger.debug("check result from DB/ list size:" + ruList.size() + ", lectureUser:" + lectureUser.toString());
	        
	        return "jobedu/LectureDetail";
		} catch (Exception e) {
    		logger.info("Exception!!: " + e.toString());
    		e.printStackTrace();
    		model.addAttribute("resultCode", 1);
    		return "jobedu/LectureDetail";
		}
    }
}
