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
	  if(state=='yearSearch'){
		  f.elements["1"].style.display='';
		  f.elements["2"].style.display='none';
		  f.elements["3"].style.display='none';
		  f.elements["4"].style.display='none';
	  }
	  else if(state=='monthSearch') {
		  f.elements["1"].style.display='none';
		  f.elements["2"].style.display='';
		  f.elements["3"].style.display='none';
		  f.elements["4"].style.display='none';
	  }
	  else if(state=='lecSearch') {
		  f.elements["1"].style.display='none';
		  f.elements["2"].style.display='none';
		  f.elements["3"].style.display='';
		  f.elements["4"].style.display='none';
	  }
	  else if(state=='lecTypeSearch') {
		  f.elements["1"].style.display='none';
		  f.elements["2"].style.display='none';
		  f.elements["3"].style.display='none';
		  f.elements["4"].style.display='';
	  }
}
</script>

</head>
<body>
	<h2>UList_management</h2>
	<form class="form-inline" name="uSearch" method="post" action="/education/jobedu/UserManagement">
		<div class="form-group" align="center">
		
			<select class="form-control" id="SearchCondition" onchange="ste(this.value)">
				<option value="yearSearch">년도</option>
				<option value="monthSearch">월</option>
				<option value="lecSearch">강좌명</option>
				<option value="lecTypeSearch">교육타입</option>
			</select>
			
			<!-- 검색조건 리스트 -->
			<input type="text" class="form-control" id="1" name="year">
			<input type="text" class="form-control" id="3" name="team" style="display='none';">
			<select class="form-control" id="2" name="month" style="display='none';">
				<option value="01">1월</option> <option value="02">2월</option>
				<option value="03">3월</option> <option value="04">4월</option>
				<option value="05">5월</option> <option value="06">6월</option>
				<option value="07">7월</option> <option value="08">8월</option>
				<option value="09">9월</option> <option value="10">10월</option>
				<option value="11">11월</option> <option value="12">12월</option>
			</select>
			<select class="form-control" id="4" name="rank" style="display='none';">
				<option value="사원">사원</option>
				<option value="대리">대리</option>
				<option value="과장">과장</option>
				<option value="차장">차장</option>
				<option value="부장">부장</option>
			</select>
			
			<button type="submit" class="btn btn-lg btn-primary btn-block">검색</button>
		</div>
	</form>
			
	<table class="table table-hover">
		 <tr>
            <td>년도</td>
			<td>월</td>
			<td>강좌명</td>
			<td>강사이름</td>
			<td>날짜</td>
        </tr> 
		<c:forEach var="lecture" items="${LectureUserList}">
            <tr>
                <td><c:out value="${lecture.lname}" /></td>
                <td><c:out value="${lecture.team}" /></td>
                <td><c:out value="${lecture.lname}" /></td>
                <td><c:out value="${lecture.teacherID}" /></td>
                <td><c:out value="${lecture.YMD_STD} ~ ${lecture.YMD_END}" /></td>
            </tr>   
        </c:forEach>
    </table>
</body>
</html>