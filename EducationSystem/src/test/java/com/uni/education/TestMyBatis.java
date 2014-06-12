package com.uni.education;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;

import com.uni.education.vo.UserVO;

public class TestMyBatis {

	private static Logger logger = Logger.getLogger(TestMyBatis.class);
	
	
	
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
		Reader reader;
		try {
			reader = Resources.getResourceAsReader("/../../main/webapp/WEB-INF/mybatis/mybatis-context.xml");
			SqlSessionFactory sqlSessionFactory  = new SqlSessionFactoryBuilder().build(reader);
		    SqlSession session = sqlSessionFactory .openSession();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   
	}

}
