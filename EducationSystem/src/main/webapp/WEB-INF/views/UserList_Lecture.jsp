<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	
	function fncGetLecUserDetail(lecId, uId) {
		document.getElementsById('lecture_id').value=lecId;
		document.getElementsById('user_id').value=uId;
		document.uSearch.action="education/jobedu/UserInfoInLecture";
		document.uSearch.submit();
	}
	function fncDelUser(uId, lid) {
		document.getElementsById('lecture_id').value=lId;
		document.getElementsById('user_id').value=uId;
		document.uSearch.action="education/jobedu/UserListInLecture";
		document.uSearch.submit();
	}
</script>

	<h2>강좌 수강생 관리</h2>
<form role=form class=form-horizontal action="/education/jobedu/UserListInLecture" method="post">
	<table class="table table-hover">
		 <tr>
            <td>소속</td>
            <td>이름</td>
            <td>직위</td>
            <td>취소여부</td>
            <td>수료여부</td>
            <td>TEST점수</td>
            <td>비고</td>
            <td>수강생 삭제</td>
        </tr> 
		<c:forEach var="registerUser" items="${RegistrationUserList}">
			<input name=user_id type="hidden" value="<c:out value="${registerUser.user_id}" />">
			<input name=lecture_id type="hidden" value="<c:out value="${registerUser.lecture_id}" />">
            <tr>
                <td><c:out value="${registerUser.team}" /></td>
                <td><a href="/education/jobedu/UserInfoInLecture?uid=<c:out value="${registerUser.user_id}" />"><c:out value="${registerUser.uname}" /></a></td>
                <td><c:out value="${registerUser.rank}" /></td>
                <td><c:out value="${registerUser.cancelation}" /></td>
                <td><c:out value="${registerUser.pass}" /></td>
                <td><c:out value="${registerUser.testscore}" /></td>
                <td><c:out value="${registerUser.note}" /></td>
                <td><button class="btn btn-danger" style="width:100px" type="submit">삭제</button></td>
  <!--               <td><button class="btn btn-danger" style="width:100px"onclick="fncDelUser('<c:out value="${registerUser.user_id}" />','<c:out value="${registerUser.lecture_id}" />')">삭제</button></td>
   -->          </tr>
        </c:forEach>
    </table>
</form>
    
	
