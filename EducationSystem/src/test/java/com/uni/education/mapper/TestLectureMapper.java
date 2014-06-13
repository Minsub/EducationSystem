package com.uni.education.mapper;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;

import com.uni.education.JUtils;
import com.uni.education.VOGenerator;
import com.uni.education.vo.LectureVO;

import cubrid.jdbc.driver.CUBRIDException;

public class TestLectureMapper {
	private static Logger logger = Logger.getLogger(TestLectureMapper.class);
	private static SqlSession sqlSession;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
			SqlSessionFactory sqlSessionFactory  = new SqlSessionFactoryBuilder().build(reader);
		    sqlSession = sqlSessionFactory .openSession();
		    
	
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public static void testInsert()  {
		LectureVO lecture = VOGenerator.lecture1;
		
		
		LectureMapper mapper = sqlSession.getMapper(LectureMapper.class);
	
		int tmp = mapper.insert(lecture);
		sqlSession.commit();
		logger.info("Success to insert TMP : " +tmp);
	
		
	}
	
	public static void testSelectAll() {
		LectureMapper mapper = sqlSession.getMapper(LectureMapper.class);
//		List<LectureVO> list = mapper.selectAll();
//		
//		for (LectureVO vo : list) {
//			System.out.println("----------------------");
//			JUtils.printVO(vo);
//		}
		
		LectureVO lecture = mapper.selectByLastest();
		JUtils.printVO(lecture);
	}
	
	public static void testUpdate() {
		LectureVO lecture = VOGenerator.lecture1;
		lecture.setLname("Android 심화");
		lecture.setDays(null);
		LectureMapper mapper = sqlSession.getMapper(LectureMapper.class);
		//mapper.update(lecture);
		//sqlSession.commit();
		//logger.debug("update success");
		
		int tmp = sqlSession.update("Lecture.updateDynamic",lecture);
		sqlSession.commit();
		logger.debug("update success: " + tmp);
		
	}
	
	public static void testDelete() {
		LectureMapper mapper = sqlSession.getMapper(LectureMapper.class);
		int tmp = mapper.delete("L20140601");
		sqlSession.commit();
		logger.debug("Delete Success:" + tmp);
	}
	
	public static void main(String[] args) {
//		testInsert();
//		testUpdate();
//		testDelete();
		
		testSelectAll();
		
	}

}
