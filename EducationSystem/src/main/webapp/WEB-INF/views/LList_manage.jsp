<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet">
<script src="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	


<script type="text/javascript">
	function fncLecSearch() {
		document.uSearch.action="/education/jobedu/RegistrationManaement";
		document.uSearch.submit();
	}
	function fncGetLecUserList(lecId) {
		var targetURL;
		targetURL="/education/jobedu/UserListInLecture" + lecID;
		document.getElementsById('lid').value=lecId;
		document.uSearch.action=targetURL;
		
	}
	
	
	
</script>

	<h2>LList_management</h2>
	<form class="form-inline" name="uSearch" method="post" action="">
			<input type="hidden" name="lid" id="lid" value="">
			<!-- 검색조건 리스트 -->
			<table align="right">
			<tr>
			<td style="padding-right:10px;">시작</td>
			<td>
				<div class="input-group date" style="width:130px;">
            		<input type="text" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
        		</div>
        	</td>
        	<td>~ 종료</td>
        	<td>
        		<div class="input-group date" style="width:130px;">
        		    <input type="text" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
       		 	</div>
			</td>
			<td>강좌명</td>
			<td><input type="text" class="form-control" name="lname"  style="display:inline;"></td>
			<td>교육타입</td>
			<td> <input type="text" class="form-control" name="ltype"  style="display:inline;"></td>
			<td><button class="btn btn-lg btn-primary btn-block" onClick="fncLecSearch()" style="width:70px; display:inline;">검색</button></td>
			</tr>
			</table>
	</form>
	<br><br>
	<table class="table table-hover">
		 <tr>
            <td>년도</td>
			<td>월</td>
			<td>강좌명</td>
			<td>강사이름</td>
			<td>날짜</td>
        </tr> 
		<c:forEach var="lecture" items="${lectureUserList}">
            <tr>
                <td><c:out value="${lecture.lname}" /></td>
                <td><c:out value="${lecture.team}" /></td>
                <td><a href="" onClick="fncGetLecUserList('<c:out value="${lecture.lid}" />')"><c:out value="${lecture.lname}" /></a></td>
                <td><c:out value="${lecture.teacherID}" /></td>
                <td><c:out value="${lecture.YMD_STD} ~ ${lecture.YMD_END}" /></td>
            </tr>   
        </c:forEach>
    </table>

<script>
	$('.input-group.date').datepicker({
	    format: "yyyymmdd",
	    startDate: "20100101",
	    endDate: "20200101",
	    todayBtn: "linked",
	    autoclose: true,
	    todayHighlight: true
	});

</script>
    