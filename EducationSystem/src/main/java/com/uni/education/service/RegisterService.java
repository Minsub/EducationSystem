package com.uni.education.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.education.dao.RegisterDao;
import com.uni.education.dao.UserDao;
import com.uni.education.vo.RegistrationVO;
import com.uni.education.vo.UserVO;

@Service
public class RegisterService {
	@Autowired
	private RegisterDao registerDao;
	@Autowired
	private UserDao userDao;
	
	public int registerLecture(final String uid, final String lid) {
		RegistrationVO registration = new RegistrationVO();
		registration.setUser_id(uid);
		registration.setLecture_id(lid);
		
		UserVO user = userDao.getUserByUID(uid);
		registration.setRank(user.getRank());
		registration.setTestscore(0);
		registration.setPass("N");
		registration.setCancelation("N");
		registration.setNote("");
		
		return registerDao.insert(registration);
	}
	
	public int cancelLecture(final String uid, final String lid) {
		return registerDao.delete(uid, lid);
	}
} 

