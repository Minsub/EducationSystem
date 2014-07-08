<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- for datepicker -->
<link href="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet">
<script src="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>

<script type="text/javascript">
	function fncLecSearch() {
		document.uSearch.action="/education/jobedu/LectureListPast";
		document.uSearch.submit();
	}
</script>

<h2>수강 내역</h2>
	
	<!-- <input type="hidden" name="lid" id="lid" value=""> -->
	<!-- 검색조건 리스트 -->
<form class="form-inline" name="uSearch" method="post" action="">
	<input type="hidden" name="lid" id="lid" value="">
	
	<table align="right">
		<tr>
			<td>시작</td>
			<td>
				<div class="input-group date">
	           		<input name="startDay" type="text" class="form-control">
	           		<span class="input-group-addon">
	           		<i class="glyphicon glyphicon-calendar"></i>
	           		</span>
	       		</div>
	       	</td>
	       	
	       	<td> ~ 종료</td>
	       	<td>
	       		<div class="input-group date">
	       		    <input name="endDay" type="text" class="form-control">
	       		    <span class="input-group-addon">
	       		    <i class="glyphicon glyphicon-calendar">
	       		    </i>
	       		    </span>
	      		 </div>
			</td>
			
			<td>강의타입</td>
			<td>
			<DIV class=col-lg-6>
				<select class="form-control" name="rank">
					<option value=""></option>
			        <option value="IN">내부</option>
			        <option value="OUT">외부</option>
		        </select>
		    </DIV>
			</td>
			<td><button class="btn btn-primary" onClick="fncLecSearch()">검색</button></td>
		</tr>
	</table>
</form>
		
	<p><br></p>
	
<div>	
	
	<table class="table table-hover">
		<tr>
            <th>시작일</th>
			<th>종료일</th>
			<th>강좌명</th>
			<th>강사이름</th>
			<th>학점</th>
			<th>점수</th>
			<th>수료여부</th>
			<th>비고</th>
        </tr> 
		<c:forEach var="lecture" items="${RLectureList}">
            <tr>
				<td><c:out value="${lecture.YMD_STD}" /></td>					<!-- 년 -->
  				<td><c:out value="${lecture.YMD_END}" /></td>				<!-- 월 -->
                <td>		<!-- 강좌명 클릭하면 LectureDetail 로 이동 -->
                	<a href="LectureDetail?lid=<c:out value="${lecture.lecture_id}"/>"><c:out value="${lecture.lname}" /></a></td><!-- 강좌명 -->
                <td><c:out value="${lecture.uname}" /></td>		<!-- 사용자 이름 : 선생이름 -->
                <td><c:out value="${lecture.credit}" /></td>	<!-- 학점 -->
                <td><c:out value="${lecture.testscore}" /></td> <!-- 점수 -->
                <td><c:out value="${lecture.pass}" /></td>		<!-- 수료여부 -->
                <td><c:out value="${lecture.note}" /></td>		<!-- 비고 -->
            </tr>   
        </c:forEach>
    </table>
    
</div>
	

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