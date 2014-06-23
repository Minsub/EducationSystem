<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<h2>MakeLecture_STD</h2>
	
<DIV>
	<form role=form class=form-horizontal action="/education/jobedu/makeLectureStd" method="post">
		
		<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=lname> 강좌명 </LABEL> 
			<DIV class=col-sm-10>
				<INPUT id=lname name="lname" class=form-control placeholder="강좌명">
			</DIV>
		</DIV>
		
		<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=YMD_STD> 시작(ex 20140701) </LABEL> 
			<DIV class=col-sm-10>
				<INPUT id=YMD_STD name="YMD_STD" type="text" class=form-control placeholder="시작">
			</DIV>
		</DIV>
		
		<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=YMD_END> 끝(ex 20140701) </LABEL> 
			<DIV class=col-sm-10>
				<INPUT id=YMD_END name="YMD_END" type="text"  class=form-control placeholder="끝">
			</DIV>
		</DIV>
		
		<!-- LectureVO : String target // 교육대상 -> checkbox로 어떻게 값 넘어가는지 check -->
		<DIV class=form-group>
			<label class="col-sm-2 control-label" for=checkbox> 교육 대상 </label> 
			<DIV class=col-sm-10>
		   		<label class="checkbox-inline"><input type="checkbox" name="checkbox1" id="checkbox1" value="SW">사원</label>
			   	<label class="checkbox-inline"><input type="checkbox" name="checkbox2" id="checkbox2" value="DR">대리</label>
			   	<label class="checkbox-inline"><input type="checkbox" name="checkbox3" id="checkbox3" value="GJ">과장</label>
			   	<label class="checkbox-inline"><input type="checkbox" name="checkbox4" id="checkbox4" value="CJ">차장</label>
			   	<label class="checkbox-inline"><input type="checkbox" name="checkbox5" id="checkbox5" value="BJ">부장</label>
		  	</DIV>
		</DIV>
		
    	<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=inputPassword3> 커리큘럼 Description </LABEL> 
			<DIV class=col-sm-10>
				<TEXTAREA id=curriculum name=curriculum class=form-control rows=4 placeholder="커리큘럼을 입력하세요."></TEXTAREA>
		  	</DIV>
		</DIV>
		
		<!-- off-set example -->
    	<!--
    	<DIV class=form-group>
			<DIV class="col-sm-offset-2 col-sm-10">
				<DIV class=checkbox>
					<LABEL> <INPUT type=checkbox> Remember me </LABEL>
				</DIV>
			</DIV>
		</DIV>
		-->

		<DIV class=form-group>
			<DIV class="col-sm-offset-2 col-sm-10">
				<BUTTON class="btn btn-primary" type=submit>Submit</BUTTON>
			</DIV>
		</DIV>
	</FORM>
</DIV>
	