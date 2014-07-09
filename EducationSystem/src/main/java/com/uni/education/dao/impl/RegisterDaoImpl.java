package com.uni.education.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.uni.education.dao.RegisterDao;
import com.uni.education.mapper.RegisterMapper;
import com.uni.education.vo.RegistrationLectureVO;
import com.uni.education.vo.RegistrationUserVO;
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
		return mapper.delete(uid, lid);
	}

	@Override
	public List<RegistrationUserVO> selectByLid(String lid) {
		RegisterMapper mapper = sqlSession.getMapper(RegisterMapper.class);
		return mapper.selectRUbyLid(lid);	
	}

	@Override
	public List<RegistrationLectureVO> selectByday(String uid, String sday,
			String eday) {
		RegisterMapper mapper = sqlSession.getMapper(RegisterMapper.class);
		return mapper.selectRLbyDate(uid, sday, eday);
	}

	@Override
	public List<RegistrationLectureVO> selectByRank(String uid, String rank) {
		RegisterMapper mapper = sqlSession.getMapper(RegisterMapper.class);
		return mapper.selectRLbyRank(uid, rank);
	}

	@Override
	public int update(RegistrationVO registration) {
		return sqlSession.update("Register.updateDynamic", registration);
	}

	@Override
	public List<RegistrationLectureVO> selectByUid(String uid) {
		RegisterMapper mapper = sqlSession.getMapper(RegisterMapper.class);
		return mapper.selectRLbyUid(uid);
	}

	@Override
	public RegistrationUserVO selectRUByUid(String uid, String lid) {
		RegisterMapper mapper = sqlSession.getMapper(RegisterMapper.class);
		return mapper.selectRUbyUid(uid, lid);
	}

}
