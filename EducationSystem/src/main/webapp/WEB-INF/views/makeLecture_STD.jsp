<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<h2>MakeLecture_STD</h2>
	
	<div class="col-md-10" >
		<div class="container" >
		    <DIV class="bs-example bs-example-type">
		    	<form role=form class=form-horizontal action="/education/jobedu/makeLectureStd" method="post">
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputEmail3> 강좌명 </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputEmail3 name="lname" class=form-control placeholder="강좌명">
						</DIV>
					</DIV>
					
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 시작(ex 20140701) </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputPassword3 name="YMD_STD" type="text" class=form-control placeholder="시작">
						</DIV>
					</DIV>
					
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 끝(ex 20140701) </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputPassword3 name="YMD_END" type="text"  class=form-control placeholder="끝">
						</DIV>
					</DIV>
					
					
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 교육 대상 </LABEL> 
						<DIV class=col-sm-10>
					   		<label class="checkbox-inline"><input type="radio" name="check1" id="check1" value="SW">사원</label>
						   	<label class="checkbox-inline"><input type="radio" name="check2" id="check2" value="DR">대리</label>
						   	<label class="checkbox-inline"><input type="radio" name="check3" id="check3" value="GJ">과장</label>
						   	<label class="checkbox-inline"><input type="radio" name="check4" id="check4" value="CJ">차장</label>
						   	<label class="checkbox-inline"><input type="radio" name="check5" id="check5" value="BJ">부장</label>
					  	</DIV>
					</DIV>
					
	      			<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 커리큘럼 Description <CODE>rows</CODE> </LABEL> 
						<DIV class=col-sm-10>
							<TEXTAREA class=form-control rows=3 placeholder="커리큘럼을 입력하세요."></TEXTAREA>
					  	</DIV>
					</DIV>
					
	      			<DIV class=form-group>
						<DIV class="col-sm-offset-2 col-sm-10">
							<DIV class=checkbox>
								<LABEL> <INPUT type=checkbox> Remember me </LABEL>
							</DIV>
						</DIV>
					</DIV>

					<DIV class=form-group>
						<DIV class="col-sm-offset-2 col-sm-10">
							<BUTTON class="btn btn-primary" type=submit>Submit</BUTTON>
						</DIV>
					</DIV>
				</FORM>
			</DIV>
		    
		</div>
	</div>
	