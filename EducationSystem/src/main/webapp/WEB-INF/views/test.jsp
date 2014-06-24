<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet">
<script src="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>


<script>
$(".alert").alert();

</script>

<div class="bs-callout bs-callout-warning">
	<h4>수정 세부 정보</h4>
	<div class="ms-breadcrumb">
		<ol class="breadcrumb">
		  <li><a href="#">Home</a></li>
		  <li><a href="#">Library</a></li>
		  <li class="active">Data</li>
		</ol>
	</div>
</div>

<div class="ms-header">
	<h1> 수정 세부 정보</h1>
	<div class="ms-breadcrumb">
		<ol class="breadcrumb">
		  <li><a href="#">Home</a></li>
		  <li><a href="#">Library</a></li>
		  <li class="active">Data</li>
		</ol>
	</div>
</div>

<div class="alert alert-danger fade in">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <h4>Oh snap! You got an error!</h4>
        <p>Change this and that and try again. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum.</p>
        <p>
          <button type="button" class="btn btn-danger">Take this action</button>
          <button type="button" class="btn btn-default">Or do this</button>
        </p>
      </div>


		<h2>Lecture Detail</h2>
		
   		<p class="lead">Show lecture detail</p>

		    <DIV class="bs-example bs-example-type">
		    	<form role=form action="/education/jobedu/registerLecture" method="post">
					
					<div class="row">
					<DIV class=form-inline>
						<LABEL class="col-md-2 control-label" for=inputEmail3> 달 </LABEL> 
						<DIV class=col-md-8>
							<INPUT id=inputEmail3 class=form-control placeholder="월별">
						</DIV>
					</DIV>
					</div>
					
					<div class="row">
					<DIV class=form-inline>
						<LABEL class="col-md-2 control-label" for=inputPassword3> 강좌명 </LABEL> 
						<DIV class=col-md-8>
							<INPUT id=inputPassword3 class=form-control type=text placeholder="강좌명">
						</DIV>
					</DIV>
					</div>

					<div class="row">
			        <div class="input-group date">
			        	<LABEL class="col-md-2 control-label" for=inputPassword3> 날짜 </LABEL>
			        	<DIV class="form-inline col-sm-2">
				            <input type="text" class="form-control">
				            <span class="input-group-addon">
				            <i class="glyphicon glyphicon-calendar"></i>
				            </span>
				        </div>
			        </div>
			        </div>
			        
			        
			        <div class="input-group date">
			        	<LABEL class="col-sm-2 control-label" for=inputPassword3> 날짜 </LABEL>
			            <input type="text" class="col-xs-2 form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
			        </div>
					
  
			        <DIV class="form-inline date">
			        	<LABEL class="col-sm-2 control-label" for=inputPassword3> 날짜 </LABEL> 
						<DIV class=col-sm-10>
							<input type="text" class="form-control">
							<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
						</DIV>
					</DIV>
					
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 시간 </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputPassword3 class=form-control type=password placeholder="시간">
						</DIV>
					</DIV>

					<DIV class=form-group>
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
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 교육 대상 </LABEL> 
						<DIV class=col-sm-10>
					   		<label class="checkbox-inline"><input type="radio" name="check1" id="check1" value="SW">사원</label>
						   	<label class="checkbox-inline"><input type="radio" name="check2" id="check2" value="DR">대리</label>
						   	<label class="checkbox-inline"><input type="radio" name="check3" id="check3" value="GJ">과장</label>
						   	<label class="checkbox-inline"><input type="radio" name="check4" id="check4" value="CJ">차장</label>
						   	<label class="checkbox-inline"><input type="radio" name="check5" id="check5" value="BJ">부장</label>
					  	</DIV>
					</DIV>
					
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 강사 소속 </LABEL> 
						<DIV class=col-sm-10>
							<label class="radio-inline"><input type="radio" name="optionsRadios1" id="optionsRadios1" value="i">내부</label>
							<label class="radio-inline"><input type="radio" name="optionsRadios2" id="optionsRadios2" value="e">외부</label>
					  	</DIV>
					</DIV>
	      			
	      			<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 강사 이름 </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputPassword3 class=form-control type=password placeholder="강사 이름을 입력하세요.">
					  	</DIV>
					</DIV>
	      			
	      			<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 커리큘럼 Description <CODE>rows</CODE> </LABEL> 
						<DIV class=col-sm-10>
							<TEXTAREA class=form-control rows=3 placeholder="커리큘럼을 입력하세요."></TEXTAREA>
					  	</DIV>
					</DIV>
					
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 수강생목록 팝업창띄우기 </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputPassword3 class=form-control type=password placeholder="강사 이름을 입력하세요.">
					  	</DIV>
					</DIV>
					
					<DIV class=form-group>
						<LABEL class="col-sm-2 control-label" for=inputPassword3> 학점 </LABEL> 
						<DIV class=col-sm-10>
							<INPUT id=inputPassword3 class=form-control type=password placeholder="  학점">
					  	</DIV>
					</DIV>
					
	      			
	      			<DIV class=form-group>
						<DIV class="col-sm-offset-2 col-sm-10">
							<DIV class=checkbox>
								<LABEL> <INPUT type=checkbox> Remember me </LABEL>
							</DIV>
						</DIV>
					</DIV>

					<DIV class=form-group>
						<DIV class="col-sm-offset-2 col-sm-10">
							<BUTTON class="btn btn-primary" type=submit>Submit</BUTTON>
						</DIV>
					</DIV>
				</FORM>
			</DIV>
		    

	
<script>
    $('.input-group.date').datepicker({
        format: "yyyymmdd",
        startDate: "2010-01-01",
        endDate: "2020-01-01",
        todayBtn: "linked",
        autoclose: true,
        todayHighlight: true
    });
    
    $('.input-inline.date').datepicker({
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