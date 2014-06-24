package com.uni.education.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uni.education.dao.LectureDao;
import com.uni.education.dao.LectureUserDao;
import com.uni.education.dao.UserDao;
import com.uni.education.vo.LectureUserVO;
import com.uni.education.vo.LectureVO;
import com.uni.education.vo.UserVO;

@Service
public class LectureService {
	public static final String CODE_APPROVAL_NO = "N";
	public static final String CODE_APPROVAL_YES = "Y";
	public static final String CODE_LTYPE_INCOMPANY = "IN";
	public static final String CODE_LTYPE_OUTCOMPANY = "OUT";
	
	@Autowired
	private LectureDao lectureDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private LectureUserDao lectureUserDao;
	
	public List<LectureUserVO> getLectureUsersForManaging(LectureUserVO lecture) {
		return lectureUserDao.getLectureUserDynamic(lecture);
	}
	
	public List<LectureUserVO> getLecturesRequested() {
		LectureUserVO lecture = new LectureUserVO();
		lecture.setApproval(LectureService.CODE_APPROVAL_NO);
		return lectureUserDao.getLectureUserDynamic(lecture);
	}
	
	public List<LectureVO> getAllLecture() {
		return lectureDao.getAllLecture();
	}
	
	public LectureVO getLectureById(final String lid) {
		return lectureDao.getLectureById(lid);
	}
	
	public LectureUserVO getLectureUserById(final String lid) {
		return lectureUserDao.getLectureById(lid);
	}
	
	public List<LectureUserVO> getLectureUserForRegistration(final String YMD) {
		return lectureUserDao.getLectureUserByMonth(YMD);
	}
	
	
	public int insertLecture(LectureVO lecture) {
		lecture.setLid(generateID());
		return lectureDao.insertLecture(lecture);
	}
	
	public int insertLecture(LectureVO lecture, String uname) {
		lecture.setLid(generateID());
		UserVO user = new UserVO();
		user.setUname(uname);
		
		List<UserVO> list = userDao.getUsersByDynamic(user);
		if (list == null || list.size() < 1) {
			return -1;
		}
		UserVO userTmp = list.get(0);
		lecture.setTeacherID(userTmp.getUid());		
		
		return lectureDao.insertLecture(lecture);
	}
	
	public int updateLecture(LectureVO lecture) {
		return lectureDao.updateLecture(lecture);
	}
	
	public int deleteLecture(final String lid) {
		return lectureDao.deleteLecture(lid);
	}
	
	/**
	 * 강사가 신청할때 사용하는 INSERT. 이름, 기간, 커리큘림만 등록
	 * @param lecture
	 * @return
	 */
	public int insertLectureForTeacher(LectureVO lecture) {
		lecture.setLid(generateID());
		lecture.setApproval(CODE_APPROVAL_NO);	//개설완료 NO
		lecture.setLtype(CODE_LTYPE_INCOMPANY); //내부강의
		
		return lectureDao.insertLecture(lecture);
	}
	
	
	
	
	// == Private Methods ==
	
	//ID를 만들어주는 메소드, AUTO_INCREAMENT와 같은 기능을 수행
	private String generateID() {
		LectureVO vo = lectureDao.getLectureLastest();
		return "L" + (Long.parseLong(vo.getLid().substring(1)) + 1);
	}
} 

