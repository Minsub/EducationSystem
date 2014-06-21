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

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">


<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>


</head>
<body>
	<h2>Lecture Detail</h2>
	<div class="container" >
		달			<input type="text" placeholder="This is an input!"> <br>
		강좌명 강좌명	<input type="text" placeholder="This is an input!"> <br>
		날짜 date		<div class="input-append date" id="dp3" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
					  <input class="span2" size="16" type="text" value="12-02-2012">
					  <span class="add-on"><i class="icon-th"></i></span>
					</div>  <br>
		시간 time		<input type="text" placeholder="This is an input!">  <br>
		장소 select	
		<select>
	        <option>United States</option>
	        <option>United Kingdom</option>
	        <option>Bolivia</option>
	        <option>Argentina</option>
	        <option>New Zealand</option>
        </select>
        <select multiple="multiple">
	        <option>1</option>
	        <option>2</option>
	        <option>3</option>
	        <option>4</option>
	        <option>5</option>
    	</select>
    
		대상
	   	<label class="radio"><input type="radio" name="optionsRadios" id="optionsRadios1" value="사원">사원</label>
	   	<label class="radio"><input type="radio" name="optionsRadios" id="optionsRadios1" value="사원">대리</label>
	   	<label class="radio"><input type="radio" name="optionsRadios" id="optionsRadios1" value="사원">과장</label>
	   	<label class="radio"><input type="radio" name="optionsRadios" id="optionsRadios1" value="사원">차장</label>
	   	<label class="radio"><input type="radio" name="optionsRadios" id="optionsRadios1" value="사원">부장</label>
      	
		강사소속 내부/외부<input type="text" placeholder="This is an input!"> <br>
		강사이름 이름<input type="text" placeholder="This is an input!"> <br>
		커리큘럼 text area      <textarea rows="3" placeholder="This is a textarea!"></textarea> <br>
		수강생목록 팝업창띄우기<input type="text" placeholder="This is an input!"> <br>
		학점 3<input type="text" placeholder="This is an input!"> <br>
		
     	<!-- 단일 버튼에 토글 기능을 활성화 하기 위해 data-toggle="button" 을 추가 -->
  		<form class="form-signin" action="/education/jobedu/registerLecture" method="post">
  			<input type="hidden" name="lecture_id" value="${lecture.lid}"/>
  			<input type="hidden" name="type" value="register"/>
			<button type="submit" class="btn btn-primary">신청</button>
		</form>	
	</div>
</body>
</html>