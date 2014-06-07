package com.uni.education.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.education.dao.UserDao;
import com.uni.education.vo.UserVO;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public List<UserVO> getAllUsers() {
		return userDao.getAllUsers();
	}
}
