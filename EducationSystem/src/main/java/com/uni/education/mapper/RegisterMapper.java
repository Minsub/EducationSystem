package com.uni.education.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.uni.education.vo.RegistrationLectureVO;
import com.uni.education.vo.RegistrationUserVO;


public interface RegisterMapper {
	@Delete("DELETE FROM registration WHERE user_id = #{uid} and lecture_id = #{lid} ")
	public int delete(@Param("uid") final String uid, @Param("lid") final String lid);
	
	@Select("SELECT * FROM registration INNER JOIN users ON user_id = uid "
			 +"WHERE lecture_id=#{lid}")
	public List<RegistrationUserVO> selectRUbyLid(@Param("lid") final String lid);
	
	@Select("SELECT * FROM registration INNER JOIN users ON user_id = uid "
			+ " WHERE user_id = #{uid} and lecture_id = #{lid}")
	public RegistrationUserVO selectRUbyUid(@Param("uid") final String uid, @Param("lid") final String lid);
	
	@Select("SELECT * FROM registration INNER JOIN lectures ON lecture_id = lid "
		     + " INNER JOIN users ON teacherid = uid"
			 + " WHERE user_id = #{uid} "
			 + " AND (YMD_STD between #{sday} and #{eday} OR YMD_END between #{sday} and #{eday})")
	public List<RegistrationLectureVO> selectRLbyDate(@Param("uid") final String uid, @Param("sday") final String sday,  @Param("eday") final String eday);
	
	@Select("SELECT * FROM registration AS A INNER JOIN lectures AS B ON A.lecture_id = B.lid "
		     + " INNER JOIN users AS C ON teacherid = C.uid"
			 + " WHERE C.user_id = #{uid} "
			 + " AND A.rank = #{rank} ")
	public List<RegistrationLectureVO> selectRLbyRank(@Param("uid") final String uid, @Param("rank") final String rank);
	
	@Select("SELECT * FROM registration INNER JOIN lectures ON lecture_id = lid inner join users on teacherid = uid "
		     + "WHERE user_id = #{uid} ")
	public List<RegistrationLectureVO> selectRLbyUid(@Param("uid") final String uid);
	
	
	
}
