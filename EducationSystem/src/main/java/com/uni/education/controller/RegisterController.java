package com.uni.education.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uni.education.service.UserService;
import com.uni.education.vo.UserVO;


@Controller
@RequestMapping(value="/register")
public class RegisterController {
	
	private static Logger logger = Logger.getLogger(RegisterController.class);

	@Autowired
	private UserService userService;
	
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
  
		List<UserVO> list = userService.getAllUsers();
        
        logger.info("TEST: SIZE-"+list.size());

        
        UserVO condition = new UserVO();
        condition.setUtype("Developer");
        condition.setRank("과장");
        
        list = userService.getUsers(condition);
        
        logger.info("Dynamic SQL: SIZE-"+list.size());
        

        return "redirect:/";
    }
}
