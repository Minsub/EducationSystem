package com.uni.education.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;


public interface RegisterMapper {
	@Delete("DELETE FROM lectures WHERE user_id = #{uid} and lecture_id = #{lid} ")
	public int delete(@Param("uid") final String uid, @Param("lid") final String lid);
}
