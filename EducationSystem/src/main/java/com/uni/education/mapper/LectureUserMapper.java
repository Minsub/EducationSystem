package com.uni.education.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.uni.education.vo.LectureUserVO;


public interface LectureUserMapper {
	/**
	 * Get All LectureUSer list
	 * @return
	 */
	@Select("SELECT * FROM lectures A INNER JOIN users B ON A.teacherid = B.uid")
	public List<LectureUserVO> selectAll();
	
	
	@Select("SELECT * FROM lectures A INNER JOIN users B ON A.teacherid = B.uid" + 
			"WHERE lid=#{lid}")
	public LectureUserVO selectByLID(@Param("lid") final String lid);
	
}
