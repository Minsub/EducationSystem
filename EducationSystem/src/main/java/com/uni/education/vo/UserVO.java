package com.uni.education.vo;

import java.io.UnsupportedEncodingException;

public class UserVO {
	private String uid;		//사용자 고유 ID
	private String pw;		//비밀번호
	private String uname;	//사용자 이름
	private String utype;	//일반/개발
	private String team;	//소속
	private String rank;	//직급
	private String teacher;	//강사 권한 여부 (Y/N)
	private String admin;	//관리자 권한 여부 (Y/N)
	
	public void encording() {
		try {
			if (uname != null) {
				uname = new String(uname.getBytes("8859_1"), "UTF-8");
			}
			if (team != null) {
				team = new String(team.getBytes("8859_1"), "UTF-8");
			}
			if (rank != null) {
				rank = new String(rank.getBytes("8859_1"), "UTF-8");
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getUtype() {
		return utype;
	}
	public void setUtype(String utype) {
		this.utype = utype;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	
	
}
