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

	<h2>강좌 관리</h2>
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
			<td>강의타입</td>
			<td>
			<DIV class=col-lg-6>
				<select name="ltype">
					<option value=""></option>
			        <option value="IN">내부</option>
			        <option value="OUT">외부</option>
		        </select>
		    </DIV>
			</td>
			<td><button class="btn btn-primary" onClick="fncLecSearch()" style="width:70px; display:inline;">검색</button></td>
			</tr>
			</table>
	</form>
	<br><br>
	<table class="table table-hover">
		 <tr>
            <td>강좌명</td>
			<td>일 수</td>
			<td>교육대상</td>
			<td>강의타입</td>
			<td>강사이름</td>
			<td>날짜</td>
        </tr> 
		<c:forEach var="lecture" items="${lectureUserList}">
            <tr>
                <td><a href="/education/jobedu/UserListInLecture?lid=<c:out value="${lecture.lid}"/>"><c:out value="${lecture.lname}" /></a></td>
                <td><c:out value="${lecture.days}" /></td>
                <td><c:out value="${lecture.target}" /></td>
                <td><c:out value="${lecture.ltype}" /></td>
                <td><c:out value="${lecture.uname}" /></td>
                <td><c:out value="${lecture.YMD_STD} ~ ${lecture.YMD_END}" /></td>
            </tr>   
        </c:forEach>
    </table>

<script>
	$('.input-group.date').datepicker({
	    format: "yyyymmdd",
	    startDate: "2010-01-01",
	    endDate: "2020-01-01",
	    todayBtn: "linked",
	    autoclose: true,
	    todayHighlight: true
	});
	
	$('.form-group.date').datepicker({
	    format: "yyyymmdd",
	    startDate: "2010-01-01",
	    endDate: "2020-01-01",
	    todayBtn: "linked",
	    autoclose: true,
	    todayHighlight: true
	});

</script>
    