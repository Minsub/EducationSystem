package com.uni.education.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.uni.education.dao.LectureUserDao;
import com.uni.education.mapper.LectureUserMapper;
import com.uni.education.vo.LectureUserVO;

@Repository
public class LectureUserDaoImpl implements LectureUserDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public List<LectureUserVO> getAllLectureUser() {
		LectureUserMapper mapper = sqlSession.getMapper(LectureUserMapper.class);
		return mapper.selectAll();
	}

	@Override
	public List<LectureUserVO> getLectureUserDynamic(LectureUserVO lecture) {
		return sqlSession.selectList("LectureUser.selectDynamic", lecture);
	}

	@Override
	public LectureUserVO getLectureById(String lid) {
		LectureUserMapper mapper = sqlSession.getMapper(LectureUserMapper.class);
		return mapper.selectByLID(lid);
	}

	@Override
	public List<LectureUserVO> getLectureUserByMonth(String YMD) {
		LectureUserMapper mapper = sqlSession.getMapper(LectureUserMapper.class);
		return mapper.selectByMonth(YMD);
	}

}
