package com.uni.education.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.uni.education.dao.RegisterDao;
import com.uni.education.mapper.RegisterMapper;
import com.uni.education.vo.RegistrationVO;

@Repository
public class RegisterDaoImpl implements RegisterDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(RegistrationVO registration) {
		return sqlSession.insert("Register.insertDynamic", registration);
	}

	@Override
	public int delete(String uid, String lid) {
		RegisterMapper mapper = sqlSession.getMapper(RegisterMapper.class);
		int result = mapper.delete(uid, lid);
		sqlSession.commit();
		return result;
	}

}
