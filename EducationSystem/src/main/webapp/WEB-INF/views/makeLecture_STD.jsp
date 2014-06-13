<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>MakeLecture_STD</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">


<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>



</head>
<body>
	<h2>MakeLecture_STD</h2>
	<div class="container" >
		<form class="form-signin" action="/education/jobedu/makeLectureStd" method="post" >
			강좌명<input name="lname" type="text" /> <br>
			시작(ex 20140701)<input name="YMD_STD" type="text"  /> <br>
			끝(ex 20140701)<input name="YMD_END" type="text"  /> <br>
			커리큘럼 <input name="curriculum" type="text"  /> <br>
			
			<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
		</form>
	</div>
</body>
</html>