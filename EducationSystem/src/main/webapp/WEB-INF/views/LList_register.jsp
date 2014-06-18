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


<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>



</head>
<body>
	<h2>LList_register</h2>
	<div class="container" >
	<table class="table table-hover">
		 <tr>
            <td>강좌명</td>
			<td>날짜</td>
			<td>시간</td>
			<td>장소</td>
			<td>대상</td>
			<td>강사소속</td>
			<td>강사이름</td>
			<td>학점</td>
        </tr> 
		<c:forEach var="lecture" items="${LectureUserList}">
            <tr>
                <td><c:out value="${lecture.lname}" /></td>
                <td><c:out value="${lecture.YMD_STD} ~ ${lecture.YMD_END}" /></td>
                <td><c:out value="${lecture.times}" /></td>
                <td><c:out value="${lecture.place}" /></td>
                <td><c:out value="${lecture.target}" /></td>
                <td><c:out value="${lecture.team}" /></td>
                <td><c:out value="${lecture.uname}" /></td>
                <td><c:out value="${lecture.credit}" /></td>
            </tr>   
        </c:forEach>
    </table>
	</div>
</body>
</html>