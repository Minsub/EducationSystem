package com.uni.education.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.mapper.LectureUserMapper;
import com.uni.education.utils.JUtils;
import com.uni.education.vo.LectureUserVO;
import com.uni.education.vo.UserVO;


@Controller
@RequestMapping(value="/test")
public class TESTController {
	
	private static Logger logger = Logger.getLogger(TESTController.class);

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm() {
//       LectureUserMapper mapper = sqlSession.getMapper(LectureUserMapper.class);
//       List<LectureUserVO> list = mapper.selectAll();
		LectureUserVO vo1 = new LectureUserVO();
		vo1.setDays("2");
		List<LectureUserVO> list = sqlSession.selectList("LectureUser.selectByDynamic",vo1);
       System.out.println(list.size());
		
       for (LectureUserVO vo : list ) {
    	   System.out.println("-----------------------------------");
    	   JUtils.printVO(vo);
       }
    
        return "login";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String processLogin(UserVO user, HttpSession session) {
        
     return null;
    }

}
