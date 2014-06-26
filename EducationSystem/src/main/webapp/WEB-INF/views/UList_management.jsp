<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">

	function fncGetDetail(userId){
		document.getElementsById('uid').value=userId;
		document.uSearch.action="/education/jobedu/UserDetail";
		document.uSearch.submit();
	}
	
	function fncGetList(){
		document.uSearch.action="/education/jobedu/UserManagement";
		document.uSearch.submit();
	}

	function fncPopup(){
		var url = "/education/jobedu/UserDetail";
		window.open(url, "popup1", "left=70,top=70, width=400,height=588, toolbar=no, menubar=no, scrollbars=no, resizable=no");
	}
</script>


	<h2>UList_management</h2>
	
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
			<td><button class="btn btn-lg btn-primary btn-block" onclick="fncGetList()"  style="width:70px;">검색</button></td>
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
	                <td><a href="/education/jobedu/UserDetail" onClick="fncGetDetail('<c:out value="${user.uid}" />')"><c:out value="${user.uid}" /></a></td>
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
	<div align="left"><button class="btn btn-lg btn-primary btn-block" onclick="fncPopup()" style="width:100px;">생성</button></div>
</body>
</html>
