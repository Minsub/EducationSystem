package com.uni.education.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Select;
import com.uni.education.vo.UserVO;


public interface UserMapper {
	/**
	 * Get All user as a List
	 * @return
	 */
	@Select("select * from USERS")
	public List<UserVO> selectAll();
	
	@Select("select * from USERS where id = #{id}")
	public UserVO selectById(final String id);
	
}
