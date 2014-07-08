<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	
	
	function fncGetADM(lecId){
		document.getElementsById('lid').value=lecId;
		document.uSearch.action="/education/jobedu/makeLectureAdmin";
	}
	
	function fncDel(lecId) {
		document.getElementsById('lid').value=lecId;
		document.uSearch.action="/education/jobedu/LectureListRequested";
		document.uSearch.submit();
	}
</script>

	<h2>요청중인 강좌</h2>
	
	<form class="form-inline" name="uSearch" method="post" action="">
			
	
		<table class="table table-hover">
			 <tr>
	            <td>강좌명</td>
				<td>강사이름</td>
				<td>기간</td>
				<td>승인거부</td>
	        </tr> 
			<c:forEach var="lectureUser" items="${lectureUserList}">
	            <tr>
	                <td><a href="/education/jobedu/makeLectureAdmin?lid=<c:out value="${lectureUser.lid}" />"><c:out value="${lectureUser.lname}" /></a></td>
	 <!--           <a href="/education/jobedu/makeLectureAdmin" onClick="fncGetADM('<c:out value="${lectureUser.lid}" />')"><c:out value="${lectureUser.lname}" /></a></td>   --> 
	                <td><c:out value="${lectureUser.uname}" /></td> 
	                <td><c:out value="${lectureUser.days}" /></td>
	                <td><button class="btn btn-primary" onclick="fncDel('<c:out value="${lectureUser.lid}" />')" style="width:60px;">삭제</button></td>
	            </tr>   
	        </c:forEach>
	    </table>
	</form>
	
