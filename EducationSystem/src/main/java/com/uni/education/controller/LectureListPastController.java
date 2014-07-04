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
import com.uni.education.vo.RegistrationLectureVO;


@Controller
@RequestMapping(value="/jobedu/LectureListPast")
public class LectureListPastController {
	
	private static Logger logger = Logger.getLogger(LectureListPastController.class);

	@Autowired
	private RegisterService registerService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm(Model model, HttpSession session) {
		logger.debug("Call LectureListPast GET");
		String uid = (String)session.getAttribute("uid");
		
		List<RegistrationLectureVO> list = registerService.getLectureListByUid(uid);
		model.addAttribute("RLectureList", list);
		
		logger.debug("check result from DB / list size:" + list.size());
		return "jobedu/LList_STD";
    }

	@RequestMapping(method = RequestMethod.POST)
    public String processGetList(String startDay, String endDay, String rank, Model model, HttpSession session) {
		try {
	        logger.debug("Call LectureListPast POST");
	        rank = new String(rank.getBytes("8859_1"), "UTF-8");
	        logger.debug("check parameter/ startDay:"+startDay + ", endDay:" + endDay + ", rank:" + rank);
	        String uid = (String)session.getAttribute("uid");
	        
	        List<RegistrationLectureVO> list = null;
	        if (rank != null && !rank.equalsIgnoreCase("")) { //직급검색
	        	if (startDay == null || startDay.equalsIgnoreCase("") || endDay == null || endDay.equalsIgnoreCase("")) {
						throw new Exception();
	        	}
	        	list = registerService.getLectureListByDate(uid, startDay, endDay);
	        } else { //날짜 검색
	        	if (rank == null || rank.equalsIgnoreCase("")) {
	        		throw new Exception();
	        	}
	        	list = registerService.getLectureListByRank(uid, rank);
	        }
	        
	        model.addAttribute("resultCode", 0);
	        model.addAttribute("RLectureList", list);
	        
	        return "jobedu/LList_STD";
		} catch (Exception e) {
    		logger.info("Exception!!: " + e.toString());
    		e.printStackTrace();
    		model.addAttribute("resultCode", 1);
    		return "jobedu/LList_STD";
		}
    }
}
