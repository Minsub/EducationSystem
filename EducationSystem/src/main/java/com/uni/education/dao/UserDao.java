package com.uni.education.dao;

import java.util.List;

import com.uni.education.vo.UserVO;

public interface UserDao {
	/**
	 * 모든 유저정보를 가져온다.
	 * @return List형태로 반환 
	 */
	public List<UserVO> getAllUsers();
	
	public UserVO getUserByUID(final String uid);
	
	public List<UserVO> getUsersByDynamic(UserVO user);
	
	public UserVO getUserForLogin(final String id, final String pw);
	
	public int insertUser(UserVO user);
	
	public int updateUser(UserVO user);
}
