package com.uni.education.vo;

import java.io.UnsupportedEncodingException;

public class LectureVO {
	private String lid;			//강좌 고유 ID
	private String lname;		//강좌이름
	private String YMD_STD;		//시작날짜 (yyyyMMdd)
	private String YMD_END;		//종료날짜 (yyyyMMdd)
	private String times;		//수업시작시간~종료시간
	private String days;		//몇일짜리 교육인가
	private String hours;		//몇시간짜리 교육인가
	private String place;		//교육장소
	private String target;		//교육대상
	private String teacherID;	//강사ID
	private int credit;			//학점
	private String ltype;		//외부/내부 여부 (IN/OUT)
	private String institution;	//외부교육일 경우, 교육기관 이름
	private String curriculum;	//커리큘럼
	private String approval;	//"개설 완료 여부 (Y/N) (강사가 신청중인 강좌거나, 관라자가 수정중이면 N)"
	
	public void encording() {
		try {
			if (lname != null) {
				lname = new String(lname.getBytes("8859_1"), "UTF-8");
			}
			if (place != null) {
				place = new String(place.getBytes("8859_1"), "UTF-8");
			}
			if (institution != null) {
				institution = new String(institution.getBytes("8859_1"), "UTF-8");
			}
			if (curriculum != null) {
				curriculum = new String(curriculum.getBytes("8859_1"), "UTF-8");
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getYMD_STD() {
		return YMD_STD;
	}
	public void setYMD_STD(String yMD_STD) {
		YMD_STD = yMD_STD;
	}
	public String getYMD_END() {
		return YMD_END;
	}
	public void setYMD_END(String yMD_END) {
		YMD_END = yMD_END;
	}
	public String getTimes() {
		return times;
	}
	public void setTimes(String times) {
		this.times = times;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getHours() {
		return hours;
	}
	public void setHours(String hours) {
		this.hours = hours;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getTeacherID() {
		return teacherID;
	}
	public void setTeacherID(String teacherID) {
		this.teacherID = teacherID;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	public String getLtype() {
		return ltype;
	}
	public void setLtype(String ltype) {
		this.ltype = ltype;
	}
	public String getInstitution() {
		return institution;
	}
	public void setInstitution(String institution) {
		this.institution = institution;
	}
	public String getCurriculum() {
		return curriculum;
	}
	public void setCurriculum(String curriculum) {
		this.curriculum = curriculum;
	}
	public String getApproval() {
		return approval;
	}
	public void setApproval(String approval) {
		this.approval = approval;
	}
	
	
}
