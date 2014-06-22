<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>test</title>


<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

<link href="<c:url value='/css/bootstrap-datetimepicker.min.css'/>" rel="stylesheet" type="text/css" media="screen">

<!-- Latest compiled and minified JavaScript -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/bootstrap-datetimepicker.js'/>"></script>


<body>

	<div class="container" >
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
		</div>	

<form class="form-signin" action="/education/test" method="get">
<div class="input-group date form_date col-md-5" data-date="" data-date-format="yyyy/MM/dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input name="uid" class="form-control" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <button type="submit" class="btn btn-lg btn-danger btn-block">TEST</button>
 </form>


 <div class="container">
                    <div class="row">
                        <div class='col-sm-6'>
                            <div class="form-group">
                                <div class='input-group date' id='datetimepicker5' data-date-format="YYYY/MM/DD">
                                    <input type='text' class="form-control" />
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(function () {
                                $('#datetimepicker5').datetimepicker({
                                    pickTime: false
                                });
                            });
                        </script>
                    </div>
                </div>

<script type="text/javascript">
    $('.form_date').datetimepicker({
        language:  'en',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
</script>
</body>
</html>