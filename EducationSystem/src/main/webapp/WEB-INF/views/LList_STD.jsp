<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<h2>LList_STD</h2>
	
	<div>	
	
	<table class="table table-hover">
		<tr>
            <th>년</td>
			<th>월</th>
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
  					<td><c:out value="${lecture.YMD_STD}" /></td>				<!-- 월 -->
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