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

<title>Make Lecture Admin</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">


<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

</head>
<body>
	<h2>User Info Lecture</h2>
	<div class="container" >
	<form action="b.jsp" method="get">
		<input type="text" name="name">
		<input type="submit" value=" 확인 ">
		</form> 
		<c:forEach var="registrationUser" items="${RegistrationUserList}">
		               소속<input type="text"><c:out value="${registerUser.team}" /><br>
		               이름<c:out value="${registerUser.uname}" /><br>
		               직위<c:out value="${registerUser.rank}" /><br>
		              취소여부<c:out value="${registerUser.cancelation}" /><br>
               	수료여부 <c:out value="${registerUser.pass}" /><br>
               Test점수<c:out value="${registerUser.testscore}" /><br>
              	비고<c:out value="${registerUser.note}" /><br>
        </c:forEach>
	</div>
</body>
</html>