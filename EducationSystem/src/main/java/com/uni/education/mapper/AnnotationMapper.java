package com.uni.education.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Select;
import com.uni.education.vo.UserVO;


public interface AnnotationMapper {
	
	@Select("select * from USERS where id = #{id}")
	public UserVO selectById(final String id);
	
	@Select("select * from USERS")
	public List<UserVO> selectAll();
}
