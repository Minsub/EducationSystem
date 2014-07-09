<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">

// redirect 이후, resultCode 에 따라 modal 창 선택하여 출력
$.urlParam = function(name){
    var results = new RegExp('[\?&amp;]' + name + '=([^&amp;#]*)').exec(window.location.href);
    return results[1] || 0;
}
function checkResultCode(){
	var code = $.urlParam('resultCode');
	// TODO: Insert CODE
	
	if(code==0){
		$("#registerSuccessModal").modal('show');
	} else {
		$("#registerFailModal").modal('show');
	}
}
window.onload=checkResultCode;

//id속성 : #btn(수강신청) #btn1(수강삭제)
//name속성 : button[name=registerLecture](수강신청) button[name=cancelLecture](수강삭제)
$(document).ready(function(){
	$("button[name=cancelUser]").click(function(e){
		//모달 보이기
		var modalName = "#cancelUser" + $(this).attr("id");
		$(modalName).modal('show');
	});
	
	$("button[name=registerUser]").click(function(e){
		//모달 보이기
		var modalName = "#registerUser" + $(this).attr("id");
		$(modalName).modal('show');
	});
	
});
</script>

	<h2>강좌 수강생 관리</h2>
	
<table class="table table-hover">
	 <tr>
         <th>소속</th>
         <th>이름</th>
         <th>직위</th>
         <th>취소여부</th>
         <th>수료여부</th>
         <th>TEST점수</th>
         <th>비고</th>
         <th>수강생 삭제</th>
     </tr> 
	<c:forEach var="registrationUser" items="${RegistrationUserList}">
		
           <tr>
               <td><c:out value="${registrationUser.team}" /></td>
               <td><a href="/education/jobedu/UserInfoInLecture?uid=<c:out value="${registrationUser.user_id}"/>&lid=<c:out value="${registrationUser.lecture_id}"/>"><c:out value="${registrationUser.uname}" /></a></td>
               <td><c:out value="${registrationUser.rank}" /></td>
               <td><c:out value="${registrationUser.cancelation}" /></td>
               <td><c:out value="${registrationUser.pass}" /></td>
               <td><c:out value="${registrationUser.testscore}" /></td>
               <td><c:out value="${registrationUser.note}" /></td>
               <td>
               	<form class="form-signin" action="/education/jobedu/UserListInLecture" method="post">
                	<input name=user_id type="hidden" value="<c:out value="${registrationUser.user_id}" />">
					<input name=lecture_id type="hidden" value="<c:out value="${registrationUser.lecture_id}" />">
                	
                	<div class="bs-example">
                	
                	<button id="<c:out value="${registrationUser.user_id}"/>" name="cancelUser" class="btn btn-danger"  type="button">삭제</button>
                	
                	<!-- Modal HTML -->
				    <div id="cancelUser<c:out value="${registrationUser.user_id}"/>" class="modal fade">
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
		</tr>
       </c:forEach>
   </table>
    
	
<script>

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