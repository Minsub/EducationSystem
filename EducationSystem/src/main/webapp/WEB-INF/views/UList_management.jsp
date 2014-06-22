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

<title>수강신청</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

<!-- Select theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-select.min.css">


<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
function ste(state){
	  f=document.form1;
	  if(state=='nameSearch'){
		  f.elements["1"].style.display='';
		  f.elements["2"].style.display='none';
		  f.elements["3"].style.display='none';
	  }
	  else if(state=='teamSearch') {
		  f.elements["1"].style.display='none';
		  f.elements["2"].style.display='';
		  f.elements["3"].style.display='none';
	  }
	  else if(state=='teamSearch') {
		  f.elements["1"].style.display='none';
		  f.elements["2"].style.display='none';
		  f.elements["3"].style.display='';
	  }
}
</script>

</head>
<body>
	<h2>UList_management</h2>
	
	<form class="form-inline" name="uSearch" method="post" action="/education/jobedu/UserManagement">
		<div class="form-group" align="center">
			<select class="form-control" id="SearchCondition" onchange="ste(this.value)">
				<option value="nameSearch">이름</option>
				<option value="teamSearch">팀</option>
				<option value="rankSearch">직급</option>
			</select>
			
			<!-- 검색조건 리스트 -->
			<input type="text" class="form-control" id="1" name="uname">
			<input type="text" class="form-control" id="2" name="team" style="display='none';">
			<select class="form-control" id="3" name="rank" style="display='none';">
				<option value="사원">사원</option>
				<option value="대리">대리</option>
				<option value="과장">과장</option>
				<option value="차장">차장</option>
				<option value="부장">부장</option>
			</select>
			
			<button type="submit" class="btn btn-lg btn-primary btn-block">검색</button>
		</div>
	</form>
	
	<div class="col-md-10>
	
	<div class="container" >
	<table class="table table-hover">
		 <tr>
            <td>사번</td>
			<td>소속</td>
			<td>직급</td>
			<td>이름</td>
			<td>강사 권한</td>
			<td>타입</td>
			<td>관리자여부</td>
        </tr> 
		<c:forEach var="user" items="${userList}">
            <tr>
                <td><c:out value="${user.uid}" /></td>
                <td><c:out value="${user.team}" /></td>
                <td><c:out value="${user.rank}" /></td>
                <td><c:out value="${user.uname}" /></td>
                <td><c:out value="${user.teacher}" /></td>
                <td><c:out value="${user.utype}" /></td>
                <td><c:out value="${user.admin}" /></td>
            </tr>   
        </c:forEach>
    </table>
	</div>
	
	</div>
</body>
</html>