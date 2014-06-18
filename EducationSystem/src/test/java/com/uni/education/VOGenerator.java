package com.uni.education;

import com.uni.education.vo.LectureVO;
import com.uni.education.vo.RegistrationVO;

public class VOGenerator {

	public static LectureVO lecture1;
	
	public static RegistrationVO registration;
	
	static {
		lecture1 = new LectureVO();
		lecture1.setLid("L20140601");
		lecture1.setLname("Java 심화");
		lecture1.setYMD_STD("20140605");
		lecture1.setYMD_END("20140606");
		lecture1.setTimes("09:00 ~ 17:00");
		lecture1.setDays("2");
		lecture1.setHours("14");
		lecture1.setPlace("전산교육실");
		lecture1.setTarget("Developer");
		lecture1.setTeacherID("uni200568");
		lecture1.setCredit(2);
		lecture1.setLtype("IN");
		lecture1.setInstitution("");
		lecture1.setCurriculum("Java Java Java");
		lecture1.setApproval("Y");
		
		
		
	}
}
