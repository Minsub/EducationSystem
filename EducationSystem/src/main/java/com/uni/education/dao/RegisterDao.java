package com.uni.education.dao;

import java.util.List;

import com.uni.education.vo.RegistrationLectureVO;
import com.uni.education.vo.RegistrationUserVO;
import com.uni.education.vo.RegistrationVO;

public interface RegisterDao {
	public int insert(RegistrationVO registration);
	
	public int delete(final String uid, final String lid);
	
	public List<RegistrationUserVO> selectByLid(final String lid);
	
	public List<RegistrationLectureVO> selectByday(final String uid, final String sday, final String eday);
	
	public List<RegistrationLectureVO> selectByRank(final String uid, final String rank);
	
	public List<RegistrationLectureVO> selectByUid(final String uid);
	
	public int update(RegistrationVO registration);
	
	public RegistrationUserVO selectRUByUid(final String uid, final String lid);
	
}
