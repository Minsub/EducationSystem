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

<title>User Info Lecture</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">


<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<script type="text/javascript">

	function fncModifyUser(uId, lid) {
		document.getElementsById('user_id').value=uId;
		document.getElementsById('lecture_id').value=lId;
		document.uSearch.action="education/jobedu/UserDetail";
		document.uSearch.submit();
	}
	
</script>

</head>
<body>
	<h2>User Info Lecture</h2>
	<div class="container" >
	<form class="form-inline" name="uSearch" method="post" action="">
	<input type="hidden" name="user_id" id="user_id" value="">
	
			소속<input type="text" value = "<c:out value="${registerUser.team}" />"  disabled><br>
			이름<input type="text" value = "<c:out value="${registerUser.uname}" />"  disabled><br>
			직위<input type="text" value = "<c:out value="${registerUser.rank}" />"  disabled><br>
			취소여부<input type="text" value = "<c:out value="${registerUser.cancelation}" />"><br>
           	 수료여부<input type="text" value = "<c:out value="${registerUser.pass}" />"><br>
            Test점수<input type="text" value = "<c:out value="${registerUser.testscore}" />"><br>
            비고<input type="text" value = "<c:out value="${registerUser.note}" />"><br>
   	</form> 
   	<button class="btn btn-lg btn-primary btn-block" onclick="fncModifyUser('<c:out value="${registerUser.user_id}" />','<c:out value="${registerUser.lecture_id}" />')">수정</button>
   	<button class="btn btn-lg btn-primary btn-block" onclick="history.back();">취소</button>
	</div>
</body>
</html>