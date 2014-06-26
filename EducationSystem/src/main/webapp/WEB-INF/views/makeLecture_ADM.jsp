<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- for datepicker -->
<link href="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet">
<script src="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		
<h2>Make Lecture Admin</h2>
 	<!-- <p class="lead">Show lecture detail</p> -->

<div>
   	<form role=form class=form-horizontal action="/education/jobedu/makeLectureAdmin" method="post">
		
		<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=lname> 강좌명 </LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=lname class=form-control type=text placeholder="강좌명">
			</DIV>
			
			<LABEL class="col-xs-2 control-label" for=credit> 학점 </LABEL> 
			<DIV class=col-lg-2>
				<INPUT id=credit class=form-control type=text placeholder="  학점">
		  	</DIV>
		</DIV>
		
		<DIV class="form-group date">
        	<LABEL class="col-xs-2 control-label" for=YMD_STD> 시작날짜 </LABEL> 
			<DIV class=col-lg-3>
				<div class="input-group date">
		            <input type="text1" class="form-control">
		            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
		        </div>
	        </div>
		</DIV>
		
        <DIV class="form-group date">
        	<LABEL class="col-xs-2 control-label" for=YMD_END> 종료날짜 </LABEL> 
			<DIV class=col-lg-3>
				<div class="input-group date">
		            <input type="text1" class="form-control">
		            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
		        </div>
	        </div>
		</DIV>
		
		<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=uname> 강사 이름 </LABEL> 
			<DIV class=col-lg-3>
				<INPUT id=inputPassword3 class=form-control type=text placeholder="강사 이름을 입력하세요.">
		  	</DIV>
		  	
		  	<LABEL class="col-xs-2 control-label" for=radio> 강사 소속 </LABEL> 
			<DIV class=col-lg-3>
				<label class="radio-inline"><input type="radio" name="radio" id="ltype" value="i">내부</label>
				<label class="radio-inline"><input type="radio" name="radio" id="ltype" value="e">외부</label>
			</DIV>
		</DIV>
				
		<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=times> 시작~종료시간 </LABEL> 
			<DIV class=col-lg-6>
				<INPUT id=times class=form-control type=text placeholder="시작~종료시간">
			</DIV>
		</DIV>

		<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=days> 기간 (일) </LABEL> 
			<DIV class=col-lg-3>
				<INPUT id=days class=form-control type=text placeholder="기간 (일)">
			</DIV>
			
			<LABEL class="col-sm-2 control-label" for=hours> 기간 (시간) </LABEL> 
			<DIV class=col-lg-3>
				<INPUT id=hours class=form-control type=text placeholder="기간 (시간)">
			</DIV>
		</DIV>
		
		<!-- select 확인 필요 -->
		<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=place> 장소 </LABEL> 
			<DIV class=col-lg-6>
				<select>
			        <option>E601</option>
			        <option>E602</option>
			        <option>E603</option>
			        <option>E604</option>
			        <option>E302</option>
		        </select>
		        
		        <!-- <INPUT id=place class=form-control type=text placeholder="장소"> -->
			</DIV>
		</DIV>
		
		<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=target> 교육 대상 </LABEL> 
			<DIV class=col-lg-6>
				<INPUT id=target class=form-control type=text placeholder="교육 대상"
						value="<c:out value="${lectureUser.target}" />" disabled>
			</DIV>
		</DIV>
		
		<!-- 강좌 개설에서 활성화 시켜야할 select 부분 -->
		<!-- <DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=inputPassword3> 장소 </LABEL> 
			<DIV class=col-sm-10>
				<select>
			        <option>E601</option>
			        <option>E602</option>
			        <option>E603</option>
			        <option>E604</option>
			        <option>E302</option>
		        </select>
			</DIV>
		</DIV>
		
		<DIV class=form-group>
			<label class="col-sm-2 control-label" for=checkbox> 교육 대상 </label> 
			<DIV class=col-sm-10>
		   		<label class="checkbox-inline"><input type="checkbox" name="checkbox1" id="checkbox1" value="SW">사원</label>
			   	<label class="checkbox-inline"><input type="checkbox" name="checkbox2" id="checkbox2" value="DR">대리</label>
			   	<label class="checkbox-inline"><input type="checkbox" name="checkbox3" id="checkbox3" value="GJ">과장</label>
			   	<label class="checkbox-inline"><input type="checkbox" name="checkbox4" id="checkbox4" value="CJ">차장</label>
			   	<label class="checkbox-inline"><input type="checkbox" name="checkbox5" id="checkbox5" value="BJ">부장</label>
		  	</DIV>
		</DIV>
		
		<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=radio> 강사 소속 </LABEL> 
			<DIV class=col-sm-10>
				<label class="radio-inline"><input type="radio" name="radio" id="radio" value="i">내부</label>
				<label class="radio-inline"><input type="radio" name="radio" id="radio" value="e">외부</label>
		  	</DIV>
		</DIV>
		
		  -->
    			
    			
    	<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=inputPassword3> 커리큘럼 Description <CODE>rows</CODE> </LABEL> 
			<DIV class=col-sm-10>
				<TEXTAREA class=form-control rows=3 placeholder="커리큘럼을 입력하세요."></TEXTAREA>
		  	</DIV>
		</DIV>
		
		<!-- modal로 띄우자 -->
		<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=inputPassword3> 수강생목록 팝업창띄우기 </LABEL> 
			<DIV class=col-sm-10>
				<INPUT id=inputPassword3 class=form-control type=password placeholder="강사 이름을 입력하세요.">
		  	</DIV>
		</DIV>
		
		<DIV class=form-group>
			<DIV class="col-sm-offset-2 col-sm-10">
				<BUTTON class="btn btn-primary" type=submit>Submit</BUTTON>
			</DIV>
		</DIV>
		
		
	</FORM>
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



<script>
	$(document).ready(function() {
		
	});
</script>


	<h2>Make Lecture Admin</h2>

		<form class="form-signin" action="/education/jobedu/makeLectureAdmin" method="post" >
			강좌명<input name="lname" type="text" /> <br>
			커리큘럼 <input name="curriculum" type="text"  /> <br>
			날짜(ex 20140701)
			<div class="input-group date">
            <input type="text" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
        	</div>
        	 ~ 
        	<div class="input-group date">
            <input type="text" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
        	</div>
        	<br>
			총 일 수<input name="days" type="text"  /> <br>
			총 시간<input name="hours" type="text"  /> <br>
			장소<input name="place" type="text" /> <br>
			대상<input name="target" type="text" /> <br>
			강사소속<input name="강사id -> team" type="text" /> <br>
			강사이름<input name="강사id -> uname" type="text" /> <br>
			학점<input name="credit" type="text" /> <br>
			
			<div align="center">
				<button class="btn btn-lg btn-primary btn-block" type="submit" style="display:inline; width:170px; margin:20px">수정</button>
				<button class="btn btn-lg btn-primary btn-block" type="submit" style="display:inline; width:170px; margin:20px">생성</button>
				<button class="btn btn-lg btn-danger btn-block" onclick="history.back();" style="display:inline;width:170px; margin:20px">취소</button>
			</div>
		</form>

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