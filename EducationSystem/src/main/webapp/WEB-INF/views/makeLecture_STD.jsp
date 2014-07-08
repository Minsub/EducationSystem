<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
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
	showDiv();
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

	<h2>강좌개설 신청 (수강생용)</h2>
	
<DIV>
	<form role=form class=form-horizontal action="/education/jobedu/makeLectureStd" method="post">
		
		<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=lname> 강좌명 </LABEL> 
			<DIV class=col-lg-10>
				<INPUT id=lname name="lname" class=form-control placeholder="강좌명">
			</DIV>
		</DIV>
		
		<DIV class="form-group date">
        	<LABEL class="col-xs-2 control-label" for=YMD_STD> 시작날짜 </LABEL> 
			<DIV class="col-lg-3">
				<div class="input-group date">
		            <input id="YMD_STD" name="YMD_STD" type="text" class="form-control">
		            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
		        </div>
	        </div>
		</DIV>
		
        <DIV class="form-group date">
        	<LABEL class="col-xs-2 control-label" for=YMD_END> 종료날짜 </LABEL> 
			<DIV class="col-lg-3">
				<div class="input-group date">
		            <input id="YMD_END" name="YMD_END" type="text" class="form-control">
		            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
		        </div>
	        </div>
		</DIV>
				
		<!-- LectureVO : String target // 교육대상 -> checkbox로 어떻게 값 넘어가는지 check -->
		<DIV class=form-group>
			<label class="col-xs-2 control-label" for=checkbox> 교육 대상 </label> 
			<DIV class=col-sm-10>
		   		<label class="radio-inline"><input type="radio" name="radio" id="radio" value="DEV">Developer</label>
			   	<label class="radio-inline"><input type="radio" name="radio" id="radio" value="NOR">Normal</label>
		  	</DIV>
		</DIV>
		
    	<DIV class=form-group>
			<LABEL class="col-xs-2 control-label" for=inputPassword3> 커리큘럼 Description </LABEL> 
			<DIV class=col-sm-10>
				<TEXTAREA id=curriculum name=curriculum class=form-control rows=4 placeholder="커리큘럼을 입력하세요."></TEXTAREA>
		  	</DIV>
		</DIV>
		
		<DIV class=form-group>
			<DIV class="col-sm-offset-2 col-sm-10">
				<BUTTON name="submitLectureStd" class="btn btn-primary" type=submit>Submit</BUTTON>
			
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
			                    <p class="text-warning"><small>요청중인 강좌 메뉴에서 확인해주세요.</small></p>
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
			                    <p class="text-warning"><small>처리가 정상적으로 종료되지 않았습니다. 시스템 관리자에게 문의하세요.</small></p>
			                </div>
			                <div class="modal-footer">
			                    <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
			                </div>
			            </div>
			        </div>
			    </div>
			    
		    </DIV>
		</DIV>
	</FORM>
</DIV>

	<!-- off-set example -->
   	<!--
   	<DIV class=form-group>
		<DIV class="col-sm-offset-2 col-sm-10">
			<DIV class=checkbox>
				<LABEL> <INPUT type=checkbox> Remember me </LABEL>
			</DIV>
		</DIV>
	</DIV>
	-->
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
	