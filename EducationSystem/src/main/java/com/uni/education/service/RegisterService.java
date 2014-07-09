package com.uni.education.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.education.dao.RegisterDao;
import com.uni.education.dao.UserDao;
import com.uni.education.vo.RegistrationLectureVO;
import com.uni.education.vo.RegistrationUserVO;
import com.uni.education.vo.RegistrationVO;
import com.uni.education.vo.UserVO;

@Service
public class RegisterService {
	@Autowired
	private RegisterDao registerDao;
	@Autowired
	private UserDao userDao;
	
	public int updateRegistration(RegistrationVO registration) {
		return registerDao.update(registration);
	}
	
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
	
	public List<RegistrationUserVO> getUserListByLid(final String lid) {
		return registerDao.selectByLid(lid);
	}
	
	public List<RegistrationLectureVO> getLectureListByDate(String uid, String sday,
			String eday) {
		return registerDao.selectByday(uid, sday, eday);
	}
	
	public List<RegistrationLectureVO> getLectureListByRank(String uid, String rank) {
		return registerDao.selectByRank(uid, rank);
	}
	
	public List<RegistrationLectureVO> getLectureListByUid(String uid) {
		return registerDao.selectByUid(uid);
	}
	
	public RegistrationUserVO getUserByUid(final String uid, final String lid) {
		return registerDao.selectRUByUid(uid, lid);
	}
} 

