<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<h2>User Info</h2>
	<div class="container" >
		<form class="form-signin" action="/education/jobedu/UserDetail" method="post" >
			사번<input name="uid" type="text" /> <br>
			소속<input name="team" type="text" /> <br>
			직급<input name="rank" type="text"  /> <br>
			이름<input name="uname" type="text"  />  <br>
			강사여부<input name="teacher" type="text"  />  <br>
			타입<input name="utype" type="text"  /> <br>
			관리자여부<input name="admin" type="text"  /> <br>
			
			<button class="btn btn-lg btn-primary btn-block" type="submit" style="width:100px;">확인</button>
			<button class="btn btn-lg btn-primary btn-block" onclick="history.back();" style="width:100px;">취소</button>
		</form>
	</div>
