package com.uni.education.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.education.dao.UserDao;
import com.uni.education.vo.UserVO;

@Service
public class UserService {
	
	public static final String DEFAULT_PW = "1234";
	
	@Autowired
	private UserDao userDao;
	
	/**
	 * 모든 유저정보를 List형태로 반환
	 * @return 
	 */
	public List<UserVO> getAllUsers() {
		return userDao.getAllUsers();
	}
	
	public UserVO getUserByUID(final String uid) {
		return userDao.getUserByUID(uid);
	}
	
	/**
	 * 동적 SQL로 userVO객체에 원하는 검색조건을 넣으면 해당 유저가 List형태로 반환
	 * @param user
	 * @return
	 */
	public List<UserVO> getUsers(UserVO user) {
		return userDao.getUsersByDynamic(user);
	}
	
	public int insertUser(UserVO user) {
		user.setPw(DEFAULT_PW);
		return userDao.insertUser(user);
	}
	
	public int updateUser(UserVO user) {
		user.setPw(DEFAULT_PW);
		return userDao.updateUser(user);
	}
	
	/**
	 * id, pw를 통해 로그인 여부를 확인
	 * @param user
	 * @return null을 리턴하면 false, 성공시 UserVO 객체 반환
	 */
	public UserVO login(String id, String pw) {
		return userDao.getUserForLogin(id, pw);
	}
}
