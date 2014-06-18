package com.uni.education.dao;

import java.util.List;

import com.uni.education.vo.LectureUserVO;

public interface LectureUserDao {
	public List<LectureUserVO> getAllLectureUser();
	
	public List<LectureUserVO> getLectureUserDynamic(LectureUserVO lecture);
	
	public LectureUserVO getLectureById(final String lid);
	
	public List<LectureUserVO> getLectureUserByMonth(final String YMD);
}
