package com.uni.education;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

public class Test {
	
	private static Logger logger = Logger.getLogger(Test.class);

	public static void main(String[] args) {
		System.out.println("Hello Test world");
		
		logger.info("deugsasdasdasdasdasd");
		
		System.out.println(StringUtils.replace("ABCED", "B", "A"));
		
		
	}

}
