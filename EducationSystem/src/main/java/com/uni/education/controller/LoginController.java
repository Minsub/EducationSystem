package com.uni.education.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.vo.UserVO;


@Controller
@RequestMapping(value="/login")
public class LoginController {
	
	private static Logger logger = Logger.getLogger(LoginController.class);
	
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(method=RequestMethod.GET)
	public String processLogin() {
		
		
//		List<NationVO> list = sqlSession.selectList("Test.selectNations");
		
		//AnnotationMapper2 mapper = sqlSession.getMapper(AnnotationMapper2.class);
        //List<NationVO> list = mapper.selectNationAll();
		
		List<UserVO> list = sqlSession.selectList("Users.selectAllUsers");
        
        System.out.println("cnt: " + list.size());
        for(UserVO u : list) {
            System.out.println(u.getId() + ", " +u.getName() + ", " + u.getTeam() + ", " + u.getRank());
        }
		
		return "login";
	}
	
	@RequestMapping(method = RequestMethod.GET)
    public String setupForm() {
        logger.info("Call login Page");
        return "login";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String processLogin(UserVO user, HttpSession session) {
        
        String id = user.getId();
        String pw = user.getPw();
        logger.info("try login [" + id + "]");
        
//        if (userService.login(id, pw)) {
//            session.setAttribute("id", user.getId());
//            
//        } else {
//            logger.info("login failed [" + id + "]");
//            return "redirect:/login.uni";
//        } 
        
        return "redirect:/";
    }
}
