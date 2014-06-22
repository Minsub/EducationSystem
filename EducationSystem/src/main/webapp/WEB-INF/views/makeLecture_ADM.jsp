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

<title>Make Lecture Admin</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">


<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

</head>
<body>
	<h2>Make Lecture Admin</h2>
	
	
	<div class="col-md-10>
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
	
	<div class="col-md-10>
	
	<div class="container" >
		<form class="form-signin" action="/education/jobedu/makeLectureAdmin" method="post" >
			달<input name="?????" type="text" /> <br>
			강좌명<input name="lname" type="text" /> <br>
			커리큘럼 <input name="curriculum" type="text"  /> <br>
			날짜(ex 20140701)<input name="YMD_STD" type="text"  />   <input name="YMD_END" type="text"  /> <br>
			종 일 수<input name="days" type="text"  /> <br>
			총 시간<input name="hours" type="text"  /> <br>
			장소<input name="place" type="text" /> <br>
			대상<input name="target" type="text" /> <br>
			강사소속<input name="강사id -> team" type="text" /> <br>
			강사이름<input name="강사id -> uname" type="text" /> <br>
			학점<input name="credit" type="text" /> <br>
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
		</form>
	</div>
	
	</div>
</body>
</html>