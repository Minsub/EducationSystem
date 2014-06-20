package com.uni.education.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.service.LectureService;
import com.uni.education.service.RegisterService;
import com.uni.education.vo.UserVO;


@Controller
@RequestMapping(value="/test")
public class TESTController {
	
	private static Logger logger = Logger.getLogger(TESTController.class);

	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private LectureService lectureService;
	
	@Autowired
	private RegisterService registerService;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm() {
//		String uid = "uni200567";
//		String lid = "L100000001";
//	
//		int result = registerService.registerLecture(uid, lid);
//		System.out.println(result);
		
		System.out.println("aaa");
//		registerService.registerLecture(registration);
//		
//       for (LectureUserVO vo : list ) {
//    	   System.out.println("-----------------------------------");
//    	   JUtils.printVO(vo);
//       }
//    
        return "login";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String processLogin(UserVO user, HttpSession session) {
        
    	return null;
    }

}
