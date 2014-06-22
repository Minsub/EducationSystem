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
	$("#btn").click(function(e){
		//모달 보이기
		$("#myModal").modal('show');
		//resultCode 확인 후, 성공 실패 메시지 리턴
		
	});
	
	$("#btn1").click(function(e){
		//모달 보이기
		$("#myModal1").modal('show');
		//resultCode 확인 후, 성공 실패 메시지 리턴
		
	});
});

function button_event(){
	if (confirm("정말 삭제하시겠습니까??") == true){    //확인
	    document.form.submit();
	}else{   //취소
	    return;
	}
}
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
							
							<div class="bs-example">
							    <!-- Button HTML (to Trigger Modal) -->
							    <a href="#" id="btn" class="btn btn-primary">수강신청</a>
							    
							    <!-- Modal HTML -->
							    <div id="myModal" class="modal fade">
							        <div class="modal-dialog">
							            <div class="modal-content">
							                <div class="modal-header">
							                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							                    <h4 class="modal-title">Confirmation</h4>
							                </div>
							                <div class="modal-body">
							                    <p>해당 강좌를 신청하시겠습니까?</p>
							                    <p class="text-warning"><small>[수강신청] 버튼을 누르세요.</small></p>
							                </div>
							                <div class="modal-footer">
							                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
							                    <button type="submit" class="btn btn-primary">수강신청</button>
							                </div>
							            </div>
							        </div>
							    </div>
							</div>
						</form>
						<c:out value="${resultCode}" />
	                </td>
	                <td>
	                	<form class="form-signin" action="/education/jobedu/registerLecture" method="post">
	               			<input type="hidden" name="lecture_id" value="${lecture.lid}"/>
	               			<input type="hidden" name="type" value="delete"/>
	               			
	               			<div class="bs-example">
							    <!-- Button HTML (to Trigger Modal) -->
							    <a href="#" name="btn1" id="btn1" class="btn btn-danger">수강취소</a>
							    
							    <!-- Modal HTML -->
							    <div id="myModal1" class="modal fade">
							        <div class="modal-dialog">
							            <div class="modal-content">
							                <div class="modal-header">
							                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							                    <h4 class="modal-title">Confirmation</h4>
							                </div>
							                <div class="modal-body">
							                	<p>해당 강좌를 삭제하시겠습니까?</p>
							                    <p class="text-warning"><small>[수강취소] 버튼을 누르세요.</small></p>
							                </div>
							                <div class="modal-footer">
							                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
							                    <button type="submit" class="btn btn-danger">수강삭제</button>
							                </div>
							            </div>
							        </div>
							    </div>
							</div>
							
						</form>
	                </td>
	            </tr>   
	        </c:forEach>
	    </table>
		</div>
	</div>
</body>
</html>