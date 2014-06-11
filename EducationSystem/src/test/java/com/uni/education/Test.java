package com.uni.education;

import java.lang.reflect.Method;

import org.apache.log4j.Logger;

import com.uni.education.vo.LectureUserVO;

public class Test {
	
	private static Logger logger = Logger.getLogger(Test.class);

	public static void main(String[] args) {
		LectureUserVO obj = new LectureUserVO();
		obj.setLname("aaaa");
		Object a = (Object) obj;
		
		JUtils.printVO(a);
//		try {
//			Class c = Class.forName("com.uni.education.vo.LectureUserVO");
//			Method m[] = c.getDeclaredMethods();
//		    for (int i = 0; i < m.length; i++) {
//		    	if (m[i].getName().contains("get")) {
//		    		System.out.println(m[i].getName() + ": "+m[i].invoke(obj));
//		    	}
//		    	
//		    }
//		    	   
//		       
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
	
		
		
	}

}
