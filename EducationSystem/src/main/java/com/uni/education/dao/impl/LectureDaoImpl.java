package com.uni.education.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.uni.education.dao.LectureDao;
import com.uni.education.mapper.LectureMapper;
import com.uni.education.vo.LectureVO;

@Repository
public class LectureDaoImpl implements LectureDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<LectureVO> getAllLecture() {
		LectureMapper mapper = sqlSession.getMapper(LectureMapper.class);
		return mapper.selectAll();
	}

	@Override
	public LectureVO getLectureById(String lid) {
		LectureMapper mapper = sqlSession.getMapper(LectureMapper.class);
		return mapper.selectByLID(lid);
	}

	@Override
	public LectureVO getLectureLastest() {
		LectureMapper mapper = sqlSession.getMapper(LectureMapper.class);
		return mapper.selectByLastest();
	}
	
	@Override
	public int insertLecture(LectureVO lecture) {
		int resultCode = sqlSession.insert("Lecture.insertDynamic", lecture);
		return resultCode;
	}

	@Override
	public int updateLecture(LectureVO lecture) {
		int resultCode = sqlSession.update("Lecture.updateDynamic", lecture);
		return resultCode;
	}

	@Override
	public int deleteLecture(String lid) {
		LectureMapper mapper = sqlSession.getMapper(LectureMapper.class);
		return mapper.delete(lid);
	}

	@Override
	public List<LectureVO> getLectureDynamic(LectureVO lecture) {
		return sqlSession.selectList("Lecture.selectDynamic", lecture);
	}

	

}
