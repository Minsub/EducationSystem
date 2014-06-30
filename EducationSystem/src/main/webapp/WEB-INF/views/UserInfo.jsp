<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<h2>User Info</h2>
		<form class=form-horizontal action="/education/jobedu/UserDetail" method="post" >
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=uid> 사번 </LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=uid class=form-control type=text placeholder="사번" value="<c:out value="${user.uid}" />">
			</DIV>
			
			<LABEL class="col-xs-2 control-label" for=team> 소속 </LABEL> 
			<DIV class=col-lg-2>
				<INPUT id=team class=form-control type=text placeholder="  소속"  value="<c:out value="${user.team}" />">
		  	</DIV>
			</DIV>
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=uname> 이름 </LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=uname class=form-control type=text placeholder="이름"  value="<c:out value="${user.uname}" />">
			</DIV>
			</DIV>
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=teacher> 강사여부 </LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=teacher class=form-control type=text placeholder="Y/N"  value="<c:out value="${user.teacher}" />">
			</DIV>
			</DIV>
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=utype> 타입 </LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=utype class=form-control type=text placeholder="일반/개발"  value="<c:out value="${user.utype}" />">
			</DIV>
			</DIV>
			<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=admin> 관리자여부</LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=admin class=form-control type=text placeholder="Y/N"  value="<c:out value="${user.admin}" />">
			</DIV>
			</DIV>
			
			<div align="center">
			<button class="btn btn-lg btn-primary btn-block" type="submit" style="display:inline;width:100px;margin:20px">확인</button>
			<button class="btn btn-lg btn-primary btn-block" onclick="history.back();" style="display:inline;width:100px;margin:20px">취소</button>
			</div>
		</form>
