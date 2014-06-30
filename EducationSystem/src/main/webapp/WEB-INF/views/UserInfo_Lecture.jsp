<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">

	function fncModifyUser(uId, lid) {
		document.getElementsById('user_id').value=uId;
		document.getElementsById('lecture_id').value=lId;
		document.uSearch.action="education/jobedu/UserDetail";
		document.uSearch.submit();
	}
	
</script>

	<h2>User Info in Lecture</h2>
	
	<form class=form-horizontal action="/education/jobedu/UserInfoInLecture" method="post" >
			<DIV class=form-group>	
			<LABEL class="col-xs-2 control-label" for=team> 소속 </LABEL> 
			<DIV class=col-lg-2>
				<INPUT id=team class=form-control type=text placeholder="  소속"  value="<c:out value="${registerUser.team}" />" disabled>
		  	</DIV>
			</DIV>
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=uname> 이름 </LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=uname class=form-control type=text placeholder="이름"  value="<c:out value="${registerUser.uname}" />" disabled>
			</DIV>
			</DIV>
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=rank> 직위 </LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=rank class=form-control type=text placeholder="Y/N"  value="<c:out value="${registerUser.rank}" />">
			</DIV>
			</DIV>
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=cancelation> 취소 여부 </LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=cancelation class=form-control type=text placeholder="Y/N"  value="<c:out value="${registerUser.cancelation}" />">
			</DIV>
			<LABEL class="col-xs-2 control-label" for=pass> 수료 여부</LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=pass class=form-control type=text placeholder="Y/N"  value="<c:out value="${registerUser.pass}" />">
			</DIV>
			</DIV>
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=testscore> Test 점수</LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=testscore class=form-control type=text  value="<c:out value="${registerUser.testscore}" />">
			</DIV>
			</DIV>
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=note> 비고</LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=note class=form-control type=text placeholder=""  value="<c:out value="${registerUser.note}" />">
			</DIV>
			</DIV>
			
			<div align="center">
			<button class="btn btn-lg btn-primary btn-block" type="submit" style="display:inline;width:100px;margin:20px">확인</button>
			<button class="btn btn-lg btn-primary btn-block" onclick="history.back();" style="display:inline;width:100px;margin:20px">취소</button>
			</div>
		</form>
