<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">

	function fncModifyUser(uId, lid) {
		document.getElementsById('user_id').value=uId;
		document.getElementsById('lecture_id').value=lId;
		document.uSearch.action="education/jobedu/UserInfoInLecture";
		document.uSearch.submit();
	}
	
	//$(':radio[name="cancelation"]:checked').val();
	window.onload = function() {
		var cancelation_r 		= $('#cancelation_value').val();
		$('input:radio[name=cancelation]:input[value='+cancelation_r+']').attr("checked", true);
		
		var pass_r 		= $('#pass_value').val();
		$('input:radio[name=pass]:input[value='+pass_r+']').attr("checked", true);
	}
	

</script>

	<h2>강좌 수강생 정보</h2>
	
	<form role=form class=form-horizontal action="/education/jobedu/UserInfoInLecture" method="post" >
		<INPUT name=user_id type=hidden value="<c:out value="${RegistrationUserList.user_id}" />">
		<INPUT name=lecture_id type=hidden value="<c:out value="${RegistrationUserList.lecture_id}" />">
			<DIV class=form-group>	
			<LABEL class="col-xs-2 control-label" for=team> 소속 </LABEL> 
			<DIV class=col-lg-2>
				<INPUT id=team class=form-control type=text placeholder="  소속"  value="<c:out value="${RegistrationUserList.team}" />" disabled>
		  	</DIV>
		  	</DIV>
		  	<DIV class=form-group>	
			<LABEL class="col-xs-2 control-label" for=uname> 이름 </LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=uname class=form-control type=text placeholder="이름"  value="<c:out value="${RegistrationUserList.uname}" />" disabled>
			</DIV>
			<LABEL class="col-xs-2 control-label" for=rank> 직위 </LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=rank class=form-control type=text  value="<c:out value="${RegistrationUserList.rank}" />" disabled>
			</DIV>
			</DIV>
			
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=cancelation> 취소 여부</LABEL> 
			<input type="hidden" id="cancelation_value" value="<c:out value="${RegistrationUserList.cancelation}" />">
			<DIV class=col-lg-3>
				<label class="radio-inline"><input type="radio" name="cancelation" id="cancelation" value="Y">Yes</label>
				<label class="radio-inline"><input type="radio" name="cancelation" id="cancelation" value="N">No</label>
			</DIV>
			<LABEL class="col-xs-2 control-label" for=pass> 수료 여부</LABEL>
			<input type="hidden" id="pass_value" value="<c:out value="${RegistrationUserList.pass}" />">
			<DIV class=col-lg-3>
				<label class="radio-inline"><input type="radio" name="pass" id="pass" value="Y">Yes</label>
				<label class="radio-inline"><input type="radio" name="pass" id="pass" value="N">No</label>
			</DIV>
			</DIV>
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=testscore> Test 점수</LABEL> 
			<DIV class=col-lg-4>
				<INPUT name=testscore class=form-control type=text  value="<c:out value="${RegistrationUserList.testscore}" />">
			</DIV>
			</DIV>
			
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=note> 비고</LABEL> 
			<DIV class=col-sm-10>
				<TEXTAREA id=note name=note class=form-control rows=4 placeholder="비고를 입력하세요." value="<c:out value="${RegistrationUserList.note}" />"></TEXTAREA>
		  	</DIV>
			</DIV>
			
			<div align="center">
				<button class="btn btn-primary" type="submit" style="display:inline;width:100px;margin:20px">확인</button>
				<button class="btn btn-danger" onclick="history.back();" style="display:inline;width:100px;margin:20px">취소</button>
			</div>
	</form>
