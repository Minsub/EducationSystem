package com.uni.education;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.uni.education.vo.UserVO;

public class TestMyBatis {

	private static Logger logger = Logger.getLogger(TestMyBatis.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	public void test() {
//		List<NationVO> list = sqlSession.selectList("Test.selectNations");
		
		//AnnotationMapper2 mapper = sqlSession.getMapper(AnnotationMapper2.class);
        //List<NationVO> list = mapper.selectNationAll();
		
		List<UserVO> list = sqlSession.selectList("Users.selectAllUsers");
        
        System.out.println("cnt: " + list.size());
        for(UserVO u : list) {
            System.out.println(u.getId() + ", " +u.getName() + ", " + u.getTeam() + ", " + u.getRank());
        }
		
	}
	
	public static void main(String[] args) {
		new TestMyBatis().test();
	}

}
