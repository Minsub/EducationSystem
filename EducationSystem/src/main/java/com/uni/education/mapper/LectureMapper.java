package com.uni.education.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.uni.education.vo.LectureVO;


public interface LectureMapper {
	
	@Select("SELECT * FROM lectures")
	public List<LectureVO> selectAll();
	
	@Select("SELECT * FROM lectures WHERE lid=#{lid}")
	public LectureVO selectByLID(@Param("lid") final String lid);
	
	@Select("SELECT  * FROM lectures WHERE lid = (SELECT MAX(lid) FROM lectures)")
	public LectureVO selectByLastest();

	@Insert("INSERT INTO lectures VALUES(#{lid},#{lname},#{YMD_STD},#{YMD_END},#{times},#{days},#{hours},#{place},#{target},#{teacherID},#{credit},#{ltype},#{institution},#{curriculum},#{approval})")
	public int insert(LectureVO lecture);
	
	@Update("UPDATE lectures SET "
				+"lname = #{lname},"
				+"YMD_STD = #{YMD_STD},"
				+"YMD_END = #{YMD_END},"
				+"times = #{times},"
				+"days = #{days},"
				+"hours = #{hours},"
				+"place = #{place},"
				+"target = #{target},"
				+"teacherID = #{teacherID},"
				+"credit = #{credit},"
				+"ltype = #{ltype},"
				+"institution = #{institution},"
				+"curriculum = #{curriculum},"
				+"approval = #{approval}"
			+"WHERE lid = #{lid}")
	public int update(LectureVO lecture);
	
	@Delete("DELETE FROM lectures WHERE lid = #{lid} ")
	public int delete(@Param("lid") final String lid);
}
