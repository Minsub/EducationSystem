package com.uni.education.dao;

import java.util.List;

import com.uni.education.vo.LectureVO;

public interface LectureDao {
	public List<LectureVO> getAllLecture();
	
	public LectureVO getLectureLastest();
	
	public LectureVO getLectureById(final String lid);
	
	public List<LectureVO> getLectureDynamic(LectureVO lecture);
	
	public int insertLecture(LectureVO lecture);
	
	public int updateLecture(LectureVO lecture);
	
	public int deleteLecture(final String lid);
}
