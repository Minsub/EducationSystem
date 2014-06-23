<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	
	function fncGetStandbyList() {
		document.uSearch.action="/education/jobedu/LectureListRequested";
		document.uSearch.submit();
	}
	function fncGetADM(){
		ocument.getElementsById('uid').value=userId;
		document.uSearch.action="/education/jobedu/makeLectureAdmin";
		document.uSearch.submit();
	}
</script>

	<h2>LList_standby</h2>
	
	<form class="form-inline" name="uSearch" method="post" action="">
		<div class="form-group" align="center">
			<input type="hidden" name="lid" id="uid" value="">
			<!-- 검색조건 리스트 -->
			이름<input type="text" class="form-control" name="uname">
			팀<input type="text" class="form-control" name="team" >
			직급<select class="form-control" name="rank">
				<option value="사원">사원</option>
				<option value="대리">대리</option>
				<option value="과장">과장</option>
				<option value="차장">차장</option>
				<option value="부장">부장</option>
			</select>	
			
			<button class="btn btn-lg btn-primary btn-block" onclick="fncGetStandbyList()">검색</button>
		</div>
	
		<div class="container" >
		<table class="table table-hover">
			 <tr>
	            <td>강좌명</td>
				<td>강사이름</td>
				<td>기간</td>
	        </tr> 
			<c:forEach var="lectureUserList" items="${lectureUserList}">
	            <tr>
	                <td><a href="" onClick="fncGetADM('<c:out value="${lectureUserList.lid}" />')"><c:out value="${lectureUserList.lname}" /></a></td>
	                <td><c:out value="${lectureUserList.uname}" /></td>
	                <td><c:out value="${lectureUserList.days}" /></td>
	            </tr>   
	        </c:forEach>
	    </table>
		</div>
	</form>
	<button class="btn btn-lg btn-primary btn-block" onclick="fncPopup()">생성</button>