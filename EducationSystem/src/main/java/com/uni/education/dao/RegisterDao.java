package com.uni.education.dao;

import com.uni.education.vo.RegistrationVO;

public interface RegisterDao {
	public int insert(RegistrationVO registration);
	
	public int delete(final String uid, final String lid);
}
