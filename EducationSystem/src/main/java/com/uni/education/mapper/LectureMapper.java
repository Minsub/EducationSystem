package com.uni.education.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.uni.education.vo.LectureVO;


public interface LectureMapper {
	
	@Select("SELECT * FROM lectures")
	public List<LectureVO> selectAll();
	
	@Select("SELECT * FROM lectures WHERE lid=#{lid}")
	public LectureVO selectByLID(@Param("lid") final String lid);

	@Insert("INSERT INTO lectures VALUES(#{lid},#{lname},#{YMD_STD},#{YMD_END},#{times},#{days},#{hours},#{place},#{target},#{teacherID},#{credit},#{ltype,#{institution},#{curriculum},#{approval})")
	public void insert(LectureVO lecture);
	
}
