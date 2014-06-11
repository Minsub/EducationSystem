package com.uni.education;

import java.lang.reflect.Method;

public class JUtils {
	
	/**
	 * VO객체를 자동으로 getter에 있는 값을 print해보는 함수, TEST용
	 * @param obj
	 */
	public static void printVO(Object obj) {
		try {
			Method m[] = obj.getClass().getDeclaredMethods();
		    for (int i = 0; i < m.length; i++) {
		    	if (m[i].getName().substring(0,3).equalsIgnoreCase("get")){
		    		System.out.println(m[i].getName() + ": "+m[i].invoke(obj));
		    	}
		    }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
