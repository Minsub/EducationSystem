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

<h2>강좌 개설 (관리자용)</h2>

<div>
	<form role=form class=form-horizontal action="/education/jobedu/makeLectureAdmin" method="post">	
		<INPUT id=lid name=lid class=form-control type=hidden value="<c:out value="${lecture.lid}" />">
		<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=lname> 강좌명 </LABEL> 
			<DIV class=col-lg-4>
				<INPUT id=lname name=lname class=form-control type=text placeholder="강좌명" value="<c:out value="${lecture.lname}" />">
			</DIV>
			
			<LABEL class="col-xs-2 control-label" for=credit> 학점 </LABEL> 
			<DIV class=col-lg-2>
				<INPUT id=credit name=credit class=form-control type=text placeholder="  학점" value="<c:out value="${lecture.credit}" />">
		  	</DIV>
		</DIV>
		
		<DIV class="form-group date">
        	<LABEL class="col-xs-2 control-label" for=YMD_STD> 시작날짜 </LABEL> 
			<DIV class=col-lg-3>
				<div class="input-group date">
		            <input id=YMD_STD name="YMD_STD" type="text" class="form-control" value="<c:out value="${lecture.YMD_STD}" />">
		            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
		        </div>
	        </div>
		</DIV>
		
        <DIV class="form-group date">
        	<LABEL class="col-xs-2 control-label" for=YMD_END> 종료날짜 </LABEL> 
			<DIV class=col-lg-3>
				<div class="input-group date">
		            <input id=YMD_END name="YMD_END" type="text" class="form-control" value="<c:out value="${lecture.YMD_END}" />">
		            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
		        </div>
	        </div>
		</DIV>
		
		<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=uname> 강사 이름 </LABEL> 
			<DIV class=col-lg-3>
				<INPUT id=uname name=uname class=form-control type=text placeholder="강사 이름을 입력하세요." >
		  	</DIV>
		  	
		  	<LABEL class="col-xs-2 control-label" for=ltype> 강사 소속 </LABEL> 
			<DIV class=col-lg-3>
				<label class="radio-inline"><input type="radio" name="ltype" id="radio" value="IN">내부</label>
				<label class="radio-inline"><input type="radio" name="ltype" id="radio" value="OUT">외부</label>
			</DIV>
		</DIV>
				
		<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=times> 시작~종료시간 </LABEL> 
			<DIV class=col-lg-6>
				<INPUT id=times name="times" class="form-control" type="text" placeholder="시작~종료시간">
			</DIV>
		</DIV>

		<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=days> 기간 (일) </LABEL> 
			<DIV class=col-lg-3>
				<INPUT id=days name="days" class="form-control" type="text" placeholder="기간 (일)" value="<c:out value="${lecture.days}" />">
			</DIV>
			
			<LABEL class="col-sm-2 control-label" for=hours> 기간 (시간) </LABEL> 
			<DIV class=col-lg-3>
				<INPUT id=hours name="hours" class="form-control" type="text" placeholder="기간 (시간)" value="<c:out value="${lecture.hours}" />">
			</DIV>
		</DIV>
		
		<!-- select 확인 필요 -->
		<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=place> 장소 </LABEL> 
			
			<DIV class=col-lg-3>
				<INPUT id=place name="place" class="form-control" type="text" placeholder="교육 장소" value="<c:out value="${lecture.place}" />">
			</DIV>
		</DIV>
		
		<DIV class=form-group>
			<label class="col-xs-2 control-label" for=checkbox> 교육 대상 </label> 
			<DIV class=col-sm-10>
		   		<label class="radio-inline"><input type="radio" name="radio" id="radio" value="DEV">Developer</label>
			   	<label class="radio-inline"><input type="radio" name="radio" id="radio" value="NOR">Normal</label>
		  	</DIV>
		</DIV>
		
    	<DIV class=form-group>
			<LABEL class="col-sm-2 control-label" for=inputPassword3> 커리큘럼 Description </LABEL> 
			<DIV class=col-sm-10>
				<TEXTAREA id=curriculum name="curriculum" class="form-control" rows="3" placeholder="커리큘럼을 입력하세요." value="<c:out value="${lecture.curriculum}" />"></TEXTAREA>
		  	</DIV>
		</DIV>
		
		<DIV align="center" class="col-sm-offset-2 col-sm-10">
			<button name="submitLectureStd" class="btn btn-primary" type="submit" style="display:inline;width:100px;margin:10px">확인</button>
			<button class="btn btn-danger" onclick="history.back();" style="display:inline;width:100px;margin:10px">취소</button>
			
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
		                    <p class="text-warning"><small>'요청중인 강좌' 메뉴에서 확인할 수 있습니다.</small></p>
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
		                    <p class="text-warning"><small>정상적으로 처리되지 않았습니다. 시스템 관리자에게 문의 바랍니다.</small></p>
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
