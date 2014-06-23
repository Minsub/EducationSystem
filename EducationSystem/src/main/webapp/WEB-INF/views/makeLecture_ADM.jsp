<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<h2>Make Lecture Admin</h2>

		<form class="form-signin" action="/education/jobedu/makeLectureAdmin" method="post" >
			<input name="?????" type="text" /> <br>
			강좌명<input name="lname" type="text" /> <br>
			커리큘럼 <input name="curriculum" type="text"  /> <br>
			날짜(ex 20140701)<input name="YMD_STD" type="text"  /> ~ <input name="YMD_END" type="text"  /> <br>
			총 일 수<input name="days" type="text"  /> <br>
			총 시간<input name="hours" type="text"  /> <br>
			장소<input name="place" type="text" /> <br>
			대상<input name="target" type="text" /> <br>
			강사소속<input name="강사id -> team" type="text" /> <br>
			강사이름<input name="강사id -> uname" type="text" /> <br>
			학점<input name="credit" type="text" /> <br>
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">수정</button>
			<button class="btn btn-lg btn-primary btn-block" onclick="history.back();">취소</button>
		</form>
