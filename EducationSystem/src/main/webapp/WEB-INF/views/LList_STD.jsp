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
	<h2>LList_STD</h2>
	
		<div class="container" >
		<div class="col-md-10">	
		
		<table class="table table-hover">
			 <tr>
	            <th>년</td>
				<th>월</th>
				<th>강좌명</th>
				<th>강사이름</th>
				<th>학점</th>
				<th>점수</th>
				<th>수료여부</th>
				<th>비고</th>
	        </tr> 
			<c:forEach var="lecture" items="${RLectureList}">
	            <tr>
					<td><c:out value="${lecture.YMD_STD}" /></td>					<!-- 년 -->
   					<td><c:out value="${lecture.YMD_STD}" /></td>				<!-- 월 -->
	                <td>		<!-- 강좌명 클릭하면 LectureDetail 로 이동 -->
	                	<a href="LectureDetail"><c:out value="${lecture.lname}" /></a></td><!-- 강좌명 -->
	                <td><c:out value="${lecture.uname}" /></td>		<!-- 사용자 이름 : 선생이름 -->
	                <td><c:out value="${lecture.credit}" /></td>	<!-- 학점 -->
	                <td><c:out value="${lecture.testscore}" /></td> <!-- 점수 -->
	                <td><c:out value="${lecture.pass}" /></td>		<!-- 수료여부 -->
	                <td><c:out value="${lecture.note}" /></td>		<!-- 비고 -->
	            </tr>   
	        </c:forEach>
	    </table>
	    
		</div>
	</div>
</body>
</html>