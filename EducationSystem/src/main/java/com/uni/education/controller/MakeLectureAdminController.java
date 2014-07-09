package com.uni.education.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.utils.JUtils;
import com.uni.education.service.LectureService;
import com.uni.education.vo.LectureVO;


@Controller
@RequestMapping(value="/jobedu/makeLectureAdmin")
public class MakeLectureAdminController {
	
	private static Logger logger = Logger.getLogger(MakeLectureAdminController.class);

	@Autowired
	private LectureService lectureService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm(String lid, Model model) {
        logger.debug("Call makeLectureAdmin GET");
        
        if (lid == null || lid.equalsIgnoreCase("")) { //새로운 강좌신청으로 들어왔을 때!
        	return "jobedu/makeLecture_ADM";
        } else { //요청중인 강좌로 lid를 받고 들어왔을 때 (수정으로..)
        	LectureVO lecture = lectureService.getLectureById(lid);
        	
        	//model.addAttribute("resultCode", 0);
        	model.addAttribute("lecture", lecture);
        	
        	return "jobedu/makeLecture_ADM";
        }
    }
	
	// 생성버
    @RequestMapping(method = RequestMethod.POST)
    public String processMakeLeccture(LectureVO lecture, String uname, Model model, HttpSession session) {
    	try {
    		logger.info("Call makeLectureAdmin POST");
    		lecture.encording();
    		uname = new String(uname.getBytes("8859_1"), "UTF-8");
    		logger.debug("check parameter/ uname:" + uname);
    		
    		LectureVO lectureTMP = lectureService.getLectureById(lecture.getLid());
    		int nResultCode = 1;
    		
    		if (lectureTMP == null) { // 새로 입력된 LECTURE
    			logger.debug("insert New Lecture");
    			lecture.setApproval(LectureService.CODE_APPROVAL_YES);
    			nResultCode = lectureService.insertLecture(lecture, uname);
    			
    		} else { // Teacher가 생성하고 관리자가 수정하는 LECTURE
    			logger.debug("uodate Lecture from making by Employee");
    			lecture.setApproval(LectureService.CODE_APPROVAL_YES);
    			nResultCode = lectureService.updateLecture(lecture);
    		}
        	
    		
    		
        	if (nResultCode > 0) { // 성공
        		logger.info("Success to create Lecture By admin");
        		model.addAttribute("resultCode", 0);
        		return "redirect:/jobedu/makeLectureAdmin";
        	} else { //실패
        		logger.info("Fail to create lecture By admin");
        		model.addAttribute("resultCode", 1);
        		return "redirect:/jobedu/makeLectureAdmin";
        	}
    	} catch (Exception e) {
    		logger.info("Exception!!: " + e.toString());
    		e.printStackTrace();
    		model.addAttribute("resultCode", 1);
    		return "redirect:/jobedu/makeLectureAdmin";
    	}
    }
}
