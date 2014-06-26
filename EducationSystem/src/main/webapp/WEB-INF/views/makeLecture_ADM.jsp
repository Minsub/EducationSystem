<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- for datepicker -->
<link href="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet">
<script src="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>


<script type="text/javascript">
// redirect 이후, resultCode 에 따라 modal 창 선택하여 출력
$.urlParam = function(name){
    var results = new RegExp('[\?&amp;]' + name + '=([^&amp;#]*)').exec(window.location.href);
    return results[1] || 0;
}
function checkResultCode(){
	var code = $.urlParam('resultCode');
	// TODO: Insert CODE
	if(code==0){
		$("#registerSuccessModal").modal('show');
	} else {
		$("#registerFailModal").modal('show');
	}
}
window.onload=checkResultCode;
</script>

		
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
		            <input id="YMD_STD" type="text" class="form-control">
		            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
		        </div>
	        </div>
		</DIV>
		
        <DIV class="form-group date">
        	<LABEL class="col-xs-2 control-label" for=YMD_END> 종료날짜 </LABEL> 
			<DIV class=col-lg-3>
				<div class="input-group date">
		            <input id="YMD_END" type="text" class="form-control">
		            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
		        </div>
	        </div>
		</DIV>
		
		<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=uname> 강사 이름 </LABEL> 
			<DIV class=col-lg-3>
				<INPUT id=lname class=form-control type=text placeholder="강사 이름을 입력하세요.">
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
				<INPUT id="times" class="form-control" type="text" placeholder="시작~종료시간">
			</DIV>
		</DIV>

		<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=days> 기간 (일) </LABEL> 
			<DIV class=col-lg-3>
				<INPUT id="days" class="form-control" type="text" placeholder="기간 (일)">
			</DIV>
			
			<LABEL class="col-sm-2 control-label" for=hours> 기간 (시간) </LABEL> 
			<DIV class=col-lg-3>
				<INPUT id="hours" class="form-control" type="text" placeholder="기간 (시간)">
			</DIV>
		</DIV>
		
		<!-- select 확인 필요 -->
		<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=place> 장소 </LABEL> 
			<DIV class=col-lg-6>
				<select id="place">
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
				<INPUT id="target" class="form-control" type="text" placeholder="교육 대상">
			</DIV>
		</DIV>
		<!-- 
		
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
		
		  -->
    			
    			
    	<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=inputPassword3> 커리큘럼 Description <CODE>rows</CODE> </LABEL> 
			<DIV class=col-sm-10>
				<TEXTAREA id="curriculum" class="form-control" rows="3" placeholder="커리큘럼을 입력하세요."></TEXTAREA>
		  	</DIV>
		</DIV>
		
		<DIV class=form-group>
			<DIV class="col-sm-offset-2 col-sm-10">
				<BUTTON class="btn btn-primary" type=submit>Submit</BUTTON>
				<button class="btn btn-lg btn-primary btn-block" type="submit" style="display:inline; width:170px; margin:20px">수정</button>
				<button class="btn btn-lg btn-primary btn-block" type="submit" style="display:inline; width:170px; margin:20px">생성</button>
				<button class="btn btn-lg btn-danger btn-block" onclick="history.back();" style="display:inline;width:170px; margin:20px">취소</button>
			</DIV>
			
			<!-- Modal HTML -->
		    <div id="registerSuccessModal" class="modal fade">
		        <div class="modal-dialog">
		            <div class="modal-content">
		                <div class="modal-header">
		                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                    <h4 class="modal-title">Confirmation</h4>
		                </div>
		                <div class="modal-body">
		                    <p>신청 성공!</p>
		                    <p class="text-warning"><small>수강 내역 페이지에서 신청 과목을 확인하세요.</small></p>
		                </div>
		                <div class="modal-footer">
		                    <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
		                </div>
		            </div>
		        </div>
		    </div>
		    
		    <!-- Modal HTML -->
		    <div id="registerFailModal" class="modal fade">
		        <div class="modal-dialog">
		            <div class="modal-content">
		                <div class="modal-header">
		                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                    <h4 class="modal-title">Confirmation</h4>
		                </div>
		                <div class="modal-body">
		                    <p>신청 실패!</p>
		                    <p class="text-warning"><small>이미 신청한 강좌입니다.</small></p>
		                </div>
		                <div class="modal-footer">
		                    <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
		                </div>
		            </div>
		        </div>
		    </div>
		    
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

<!-- 

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

 -->