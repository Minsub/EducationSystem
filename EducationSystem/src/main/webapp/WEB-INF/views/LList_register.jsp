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

<!-- script for modal window -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$(".btn").click(function(){
		$("#myModal").modal('show');
	});
});

$(document).ready(function(){
	$('.launch-modal').click(function(){
		$('#myModal').modal({
			keyboard: true
		});
	}); 
});

</script>


</head>
<body>
	<h2>LList_register</h2>
	<div class="col-md-10>
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
				<td>신청</td>
				<td>삭제</td>
	        </tr> 
			<c:forEach var="lecture" items="${LectureUserList}">
	            <tr>
	                <td>		<!-- 강좌명 클릭하면 LectureDetail 로 이동 -->
	                	<a href="LectureDetail"><c:out value="${lecture.lname}" /></a></td>
	                <td><c:out value="${lecture.YMD_STD} ~ ${lecture.YMD_END}" /></td>
	                <td><c:out value="${lecture.times}" /></td>
	                <td><c:out value="${lecture.place}" /></td>
	                <td><c:out value="${lecture.target}" /></td>
	                <td><c:out value="${lecture.team}" /></td>
	                <td><c:out value="${lecture.uname}" /></td>
	                <td><c:out value="${lecture.credit}" /></td>
	                <td>
	               		<!-- 단일 버튼에 토글 기능을 활성화 하기 위해 data-toggle="button" 을 추가 -->
	               		<form class="form-signin" action="/education/jobedu/registerLecture" method="post">
	               			<input type="hidden" name="lecture_id" value="${lecture.lid}"/>
	               			<input type="hidden" name="type" value="register"/>
							<button type="submit" class="btn btn-primary">신청</button>
							
							<div class="bs-example">
							    <!-- Button HTML (to Trigger Modal) -->
							    <a href="#" class="btn btn-primary">수강신청</a>
							    
							    <!-- Modal HTML -->
							    <div id="myModal" class="modal fade">
							        <div class="modal-dialog">
							            <div class="modal-content">
							                <div class="modal-header">
							                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							                    <h4 class="modal-title">Confirmation</h4>
							                </div>
							                <div class="modal-body">
							                    <p>Do you want to save changes you made to document before closing?</p>
							                    <p class="text-warning"><small>If you don't save, your changes will be lost.</small></p>
							                </div>
							                <div class="modal-footer">
							                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							                    <button type="button" class="btn btn-primary">Save changes</button>
							                </div>
							            </div>
							        </div>
							    </div>
							</div>
						</form>
						
	                </td>
	                <td>
	                	<form class="form-signin" action="/education/jobedu/registerLecture" method="post">
	               			<input type="hidden" name="lecture_id" value="${lecture.lid}"/>
	               			<input type="hidden" name="type" value="delete"/>
							<button type="submit" class="btn btn-danger">삭제</button>
						</form>
	                </td>
	            </tr>   
	        </c:forEach>
	    </table>
		</div>
	</div>
</body>
</html>