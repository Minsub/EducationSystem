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

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<link href="<c:url value='/css/datepicker.css'/>" rel="stylesheet">

<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script src="<c:url value='/js/bootstrap-datepicker.js'/>"></script>
<script src="/education/js/bootstrap-datepicker.js"></script>



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
</body>
</html>