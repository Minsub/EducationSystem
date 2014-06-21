package com.uni.education.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.uni.education.dao.UserDao;
import com.uni.education.mapper.UserMapper;
import com.uni.education.vo.UserVO;

@Repository
public class UserDaoImpl implements UserDao {
	private static Logger logger = Logger.getLogger(UserDaoImpl.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<UserVO> getAllUsers() {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		return mapper.selectAll();
	}
	
	@Override
	public UserVO getUserByUID(String uid) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		return mapper.selectById(uid);
	}

	@Override
	public List<UserVO> getUsersByDynamic(UserVO user) {
//		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
//		return mapper.selectByDynamic(user);
		return sqlSession.selectList("Users.selectByDynamic", user);
	}

	@Override
	public UserVO getUserForLogin(String id, String pw) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		return mapper.selectForLogin(id, pw);
	}

	@Override
	public int insertUser(UserVO user) {
		return sqlSession.insert("Users.insertDynamic", user);
	}

	@Override
	public int updateUser(UserVO user) {
		return sqlSession.update("Users.updateDynamic", user);
	}

	
	
}
