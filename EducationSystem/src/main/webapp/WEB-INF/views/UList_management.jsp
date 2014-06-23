<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>수강신청</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

<!-- Select theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-select.min.css">


<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script type="text/javascript">

	function fncGetDetail(userId){
		document.getElementsById('uid').value=userId;
		document.uSearch.action="education/jobedu/UserDetail";
		document.uSearch.submit();
	}
	
	function fncGetList(){
		document.uSearch.action="education/jobedu/UserManagement";
		document.uSearch.submit();
	}

	function fncPopup(){
		var url = "education/jobedu/UserDetail";
		window.open(url, "popup1", "left=70,top=70, width=400,height=588, toolbar=no, menubar=no, scrollbars=no, resizable=no");
	}
</script>

</head>
<body>
	<h2>UList_management</h2>
<<<<<<< HEAD
	<form class="form-inline" name="uSearch" method="post" action="">
		<div class="form-group" align="center">
			<input type="hidden" name="uid" id="uid" value="">
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
			
			<button class="btn btn-lg btn-primary btn-block" onclick="fncGetList()">검색</button>
		</div>
	
		<div class="container" >
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
	                <td><a href="" onClick="fncGetDetail('<c:out value="${user.uid}" />')"><c:out value="${user.uid}" /></a></td>
	                <td><c:out value="${user.team}" /></td>
	                <td><c:out value="${user.rank}" /></td>
	                <td><c:out value="${user.uname}" /></td>
	                <td><c:out value="${user.teacher}" /></td>
	                <td><c:out value="${user.utype}" /></td>
	                <td><c:out value="${user.admin}" /></td>
	            </tr>   
	        </c:forEach>
	    </table>
		</div>
	</form>
	<button class="btn btn-lg btn-primary btn-block" onclick="fncPopup()">생성</button>
</body>
</html>
