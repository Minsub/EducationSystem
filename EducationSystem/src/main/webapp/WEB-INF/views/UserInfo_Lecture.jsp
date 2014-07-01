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

	<h2>강좌 수강생 정보</h2>
	
	<form class=form-horizontal action="/education/jobedu/UserInfoInLecture" method="post" >
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
			<LABEL class="col-xs-2 control-label" for=cancelation> 취소 여부 </LABEL> 
			<DIV class=col-lg-4>
				<select id="cancelation" value="<c:out value="${RegistrationUserList.cancelation}" />">
			        <option value="Y">Y</option>
			        <option value="N">N</option>
		        </select>
			</DIV>
			<LABEL class="col-xs-2 control-label" for=pass> 수료 여부</LABEL> 
			<DIV class=col-lg-4>
				<select id="pass" value="<c:out value="${RegistrationUserList.pass}" />">
			        <option value="Y">Y</option>
			        <option value="N">N</option>
		        </select>
			</DIV>
			</DIV>
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=testscore> Test 점수</LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=testscore class=form-control type=text  value="<c:out value="${RegistrationUserList.testscore}" />">
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
