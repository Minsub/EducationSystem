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

<title>Lecture Detail</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link href="<c:url value='/css/datepicker.css'/>" rel="stylesheet">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

</head>
<body>
	<h2>Lecture Detail</h2>
	
	<div class="col-md-10>
		<div class="container" >
		    
		    <DIV class="bs-example bs-example-type">
		    	<form role=form class=form-horizontal action="/education/jobedu/registerLecture" method="post">
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputEmail3> 달 </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputEmail3 class=form-control placeholder="월별">
						</DIV>
					</DIV>
					
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 강좌명 </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputPassword3 class=form-control type=password placeholder="강좌명">
						</DIV>
					</DIV>
					
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 날짜 </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputPassword3 class=form-control type=password placeholder="날짜">
						</DIV>
					</DIV>
					
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 시간 </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputPassword3 class=form-control type=password placeholder="시간">
						</DIV>
					</DIV>

					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 장소 </LABEL> 
						<DIV class=col-sm-10>
							<select>
						        <option>E601</option>
						        <option>E602</option>
						        <option>E603</option>
						        <option>E604</option>
						        <option>E302</option>
					        </select>
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
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 강사 소속 </LABEL> 
						<DIV class=col-sm-10>
							<label class="radio-inline"><input type="radio" name="optionsRadios1" id="optionsRadios1" value="i">내부</label>
							<label class="radio-inline"><input type="radio" name="optionsRadios2" id="optionsRadios2" value="e">외부</label>
					  	</DIV>
					</DIV>
	      			
	      			<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 강사 이름 </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputPassword3 class=form-control type=password placeholder="강사 이름을 입력하세요.">
					  	</DIV>
					</DIV>
	      			
	      			<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 커리큘럼 Description <CODE>rows</CODE> </LABEL> 
						<DIV class=col-sm-10>
							<TEXTAREA class=form-control rows=3 placeholder="커리큘럼을 입력하세요."></TEXTAREA>
					  	</DIV>
					</DIV>
					
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 수강생목록 팝업창띄우기 </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputPassword3 class=form-control type=password placeholder="강사 이름을 입력하세요.">
					  	</DIV>
					</DIV>
					
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 학점 </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputPassword3 class=form-control type=password placeholder="  학점">
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
</body>
</html>