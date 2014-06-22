<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link href="<c:url value='/css/signin.css'/>" rel="stylesheet">


<link href="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet">
<script src="http://eternicode.github.io/bootstrap-datepicker/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>

<script language="javascript"> 
$.urlParam = function(name){
    var results = new RegExp('[\?&amp;]' + name + '=([^&amp;#]*)').exec(window.location.href);
    return results[1] || 0;
}
function checkResultCode(){
	var code = $.urlParam('resultCode');
	alert(code);
	// TODO: Insert CODE
}
window.onload=checkResultCode
</script> 	
	
	
		<form class="form-signin" action="/education/test" method="post" >
			<h2 class="form-signin-heading">Please sign in</h2>
			<input name="uid" type="text" class="form-control" placeholder="User Name" autofocus> 
			<input name="pw" type="password" class="form-control" placeholder="Password">

			<div class="row">
				<div class="col-md-6">
					<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
				</div>
			
		</form>
	

		<div class="col-md-6">
			<form class="form-signin" action="/education/signup" method="get">
				<button type="submit" class="btn btn-lg btn-danger btn-block">Sign-Up</button>
			</form>
		</div>

<form class="form-signin" action="/education/test" method="get">
<div class="input-group date form_date col-md-5" data-date="" data-date-format="yyyy/MM/dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input name="uid" class="form-control" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <button type="submit" class="btn btn-lg btn-danger btn-block">TEST</button>
 </form>



        
        
    
 
        <div class="input-group date">
            <input type="text" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
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
</script>