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
	public List<UserVO> getUsersByDynamic(UserVO user) {
//		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
//		return mapper.selectByDynamic(user);
		return sqlSession.selectList("Users.selectByDynamic", user);
	}
	
	

}
