<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- script for modal window -->
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>  -->
<!-- <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>  -->

<script type="text/javascript">

// redirect 이후, resultCode 에 따라 modal 창 선택하여 출력
$.urlParam = function(name){
    var results = new RegExp('[\?&amp;]' + name + '=([^&amp;#]*)').exec(window.location.href);
    return results[1] || 0;
}
function checkResultCode(){
	showDiv();
	var code = $.urlParam('resultCode');
	// TODO: Insert CODE
	if(code==0){
		$("#registerSuccessModal").modal('show');
	} else {
		$("#registerFailModal").modal('show');
	}
}
window.onload=checkResultCode;

// id속성 : #btn(수강신청) #btn1(수강삭제)
// name속성 : button[name=registerLecture](수강신청) button[name=cancelLecture](수강삭제)
$(document).ready(function(){
	$("button[name=registerLecture]").click(function(e){
		//모달 보이기
		var modalName = "#registerModal" + $(this).attr("id");
		$(modalName).modal('show');
	});
	
	$("button[name=cancelLecture]").click(function(e){
		//모달 보이기
		var modalName = "#cancelModal" + $(this).attr("id");
		$(modalName).modal('show');
	});
});

</script>

	<h2>수강 등록</h2>
	
	<div id="headerTest">
		<table id="TableID" class="table table-hover">
			 <tr>
	            <th>강좌명</th>
				<th>날짜</th>
				<th>시간</th>
				<th>장소</th>
				<th>대상</th>
				<th>강사소속</th>
				<th>강사이름</th>
				<th>학점</th>
				<th>신청</th>
				<th>삭제</th>
	        </tr> 
			<c:forEach var="lectureUser" items="${LectureUserList}">
	            <tr>
	                <td>
	                	<a href="LectureDetail?lid=<c:out value="${lectureUser.lid}"/>"><c:out value="${lectureUser.lname}" /></a></td><!-- 강좌명 -->
	                <td><c:out value="${lectureUser.YMD_STD} ~ ${lectureUser.YMD_END}" /></td>
	                <td><c:out value="${lectureUser.times}" /></td>
	                <td><c:out value="${lectureUser.place}" /></td>
	                <td><c:out value="${lectureUser.target}" /></td>
	                <td><c:out value="${lectureUser.team}" /></td>
	                <td><c:out value="${lectureUser.uname}" /></td>
	                <td><c:out value="${lectureUser.credit}" /></td>
	                <td>
	               		<form class="form-signin" action="/education/jobedu/registerLecture" method="post">
	               			<input type="hidden" name="lecture_id" value="<c:out value="${lectureUser.lid}"/>"/>
	               			<input type="hidden" name="type" value="register"/>
							
							<div class="bs-example">
							    <button id="<c:out value="${lectureUser.lid}"/>" name="registerLecture" type="button" class="btn btn-primary">수강신청</button>
							    							    
							    <!-- Modal HTML -->
							    <div id="registerModal<c:out value="${lectureUser.lid}"/>" class="modal fade">
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
							                    <button id="registerBtn" type="submit" class="btn btn-primary">수강신청</button>
							                </div>
							            </div>
							        </div>
							    </div>
							    
							    <!-- Modal HTML -->
							    <div id="registerSuccessModal" name="registerSuccessModal" class="modal fade">
							        <div class="modal-dialog">
							            <div class="modal-content">
							                <div class="modal-header">
							                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							                    <h4 class="modal-title">Confirmation</h4>
							                </div>
							                <div class="modal-body">
							                    <p>트랜잭션 성공!</p>
							                    <p class="text-warning"><small>수강 내역 페이지에서 신청 내역을 확인하세요.</small></p>
							                </div>
							                <div class="modal-footer">
							                    <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
							                </div>
							            </div>
							        </div>
							    </div>
							    
							    <!-- Modal HTML -->
							    <div id="registerFailModal" name="registerFailModal" class="modal fade">
							        <div class="modal-dialog">
							            <div class="modal-content">
							                <div class="modal-header">
							                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							                    <h4 class="modal-title">Confirmation</h4>
							                </div>
							                <div class="modal-body">
							                    <p>트랜잭션 실패!</p>
							                    <p class="text-warning"><small>정상적으로 동작을 완료할 수 없습니다.</small></p>
							                </div>
							                <div class="modal-footer">
							                    <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
							                </div>
							            </div>
							        </div>
							    </div>
							    
							</div>
						</form>
	                </td>
	                <td>
	                	<form class="form-signin" action="/education/jobedu/registerLecture" method="post">
	               			<input type="hidden" name="lecture_id" value="<c:out value="${lectureUser.lid}"/>"/>
	               			<input type="hidden" name="type" value="delete"/>
	               			
	               			<div class="bs-example">
							    <!-- Button HTML (to Trigger Modal) -->
							    <!-- <a href="#" name="btn1" id="btn1" class="btn btn-danger">수강취소</a>  -->
							    <button id="<c:out value="${lectureUser.lid}"/>" name="cancelLecture" type="button" class="btn btn-danger">수강취소</button>
							    
							    <!-- Modal HTML -->
							    <div id="cancelModal<c:out value="${lectureUser.lid}"/>" class="modal fade">
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
							                    <button id="cancelBtn" type="submit" class="btn btn-danger">수강삭제</button>
							                </div>
							            </div>
							        </div>
							    </div>
							    
							    <!-- Modal HTML -->
							    <div id="registerSuccessModal" name="registerSuccessModal" class="modal fade">
							        <div class="modal-dialog">
							            <div class="modal-content">
							                <div class="modal-header">
							                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							                    <h4 class="modal-title">Confirmation</h4>
							                </div>
							                <div class="modal-body">
							                    <p>처리가 성공하였습니다!</p>
							                    <p class="text-warning"><small>수강 내역 페이지에서 신청 내역을 확인하세요.</small></p>
							                </div>
							                <div class="modal-footer">
							                    <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
							                </div>
							            </div>
							        </div>
							    </div>
							    
							    <!-- Modal HTML -->
							    <div id="registerFailModal" name="registerFailModal" class="modal fade">
							        <div class="modal-dialog">
							            <div class="modal-content">
							                <div class="modal-header">
							                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							                    <h4 class="modal-title">Confirmation</h4>
							                </div>
							                <div class="modal-body">
							                    <p>처리가 실패하였습니다!</p>
							                    <p class="text-warning"><small>정상적으로 동작을 완료할 수 없습니다.</small></p>
							                </div>
							                <div class="modal-footer">
							                    <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
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