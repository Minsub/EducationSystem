package com.uni.education.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.uni.education.vo.UserVO;


public interface UserMapper {
	/**
	 * Get All user as a List
	 * @return
	 */
	@Select("SELECT * FROM users")
	public List<UserVO> selectAll();
	
	@Select("SELECT * FROM users WHERE uid = #{uid}")
	public UserVO selectById(@Param("uid") final String uid);
	
	@Select("SELECT * FROM users WHERE uid = #{uid} AND pw = #{pw}")
	public UserVO selectForLogin(@Param("uid") final String uid,@Param("pw") final String pw);
	
}
