<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">

	
	function fncGetList(){
		document.uSearch.action="/education/jobedu/UserManagement";
		document.uSearch.submit();
	}

</script>


	<h2>사용자 관리</h2>
	
	<form class="form-inline" name="uSearch" method="post" action="">
		<input type="hidden" name="uid" id="uid" value="">
		<table align="right">
			<!-- 검색조건 리스트 -->
			<tr>
			<td>이름</td>
			<td><input type="text" class="form-control" name="uname"></td>
			<td>팀</td>
			<td><input type="text" class="form-control" name="team" ></td>
			<td>직급</td>
			<td><select class="form-control" name="rank">
				<option value=""></option>
				<option value="사원">사원</option>
				<option value="대리">대리</option>
				<option value="과장">과장</option>
				<option value="차장">차장</option>
				<option value="부장">부장</option>
			</select></td>	
			<td><button class="btn btn-primary" onclick="fncGetList()"  style="width:70px;margin:10px">검색</button></td>
		</table>
	<br><br>
		
		<table class="table table-hover">
			 <tr>
	            <td>사번</td>
				<td>소속</td>
				<td>직급</td>
				<td>이름</td>
				<td>강사 권한</td>
				<td>타입</td>
				<td>관리자여부</td>
	        </tr> 
			<c:forEach var="user" items="${userList}">
	            <tr>
	            	<td><a href="/education/jobedu/UserDetail?uid=<c:out value="${user.uid}" />"><c:out value="${user.uid}" /></a></td>
	                <td><c:out value="${user.team}" /></td>
	                <td><c:out value="${user.rank}" /></td>
	                <td><c:out value="${user.uname}" /></td>
	                <td><c:out value="${user.teacher}" /></td>
	                <td><c:out value="${user.utype}" /></td>
	                <td><c:out value="${user.admin}" /></td>
	            </tr>   
	        </c:forEach>
	    </table>
	</form>
	<div align="left"><a href="/education/jobedu/UserDetail">
	<button class="btn btn-primary" style="width:100px;">생성</button>
	</a></div>
</body>
</html>
