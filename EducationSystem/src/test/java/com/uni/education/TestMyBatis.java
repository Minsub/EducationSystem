package com.uni.education;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;

import com.uni.education.utils.JUtils;
import com.uni.education.vo.LectureUserVO;

public class TestMyBatis {

	private static Logger logger = Logger.getLogger(TestMyBatis.class);
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
	
	public void test() {
//		List<NationVO> list = sqlSession.selectList("Test.selectNations");
		
		//AnnotationMapper2 mapper = sqlSession.getMapper(AnnotationMapper2.class);
        //List<NationVO> list = mapper.selectNationAll();
		
		//List<UserVO> list = sqlSession.selectList("Users.selectAllUsers");
        
//        System.out.println("cnt: " + list.size());
//        for(UserVO u : list) {
//            //System.out.println(u.getId() + ", " +u.getName() + ", " + u.getTeam() + ", " + u.getRank());
//        }
		
	}
	
	public void test2() {
		//Annotation SQL Sample
//			//in your mapper interface:
//			@SelectProvider(type=MyClass.class, method="myMethod")
//			public Object selectById(int id);
//			
//			//in MyClass:
//			public static String myMethod() {
//			    return "select * from MyTable where id=#{id}"; 
//			}
		
		//Dynamic SQL on Annotation
//		@Update("""<script>
//				  update Author
//				    <set>
//				      <if test="username != null">username=#{username},</if>
//				      <if test="password != null">password=#{password},</if>
//				      <if test="email != null">email=#{email},</if>
//				      <if test="bio != null">bio=#{bio}</if>
//				    </set>
//				  where id=#{id}
//				</script>""")

	}
	
	public static void main(String[] args) {
		
		    
	    LectureUserVO vo1 = new LectureUserVO();
		vo1.setDays("2");
		List<LectureUserVO> list = sqlSession.selectList("LectureUser.selectByDynamic",vo1);
       System.out.println(list.size());
		
       for (LectureUserVO vo : list ) {
    	   System.out.println("-----------------------------------");
    	   JUtils.printVO(vo);
       }
		
	   
	}

}
