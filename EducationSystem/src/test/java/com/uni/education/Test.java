package com.uni.education;

import java.lang.reflect.Method;
import java.sql.Date;
import java.text.SimpleDateFormat;

import org.apache.log4j.Logger;

import com.uni.education.vo.LectureUserVO;

public class Test {
	
	private static Logger logger = Logger.getLogger(Test.class);

	public static void main(String[] args) {
		p(""+Long.MAX_VALUE);

		
	}

	public static void p(String str) {
		System.out.println(str);
	}
}
