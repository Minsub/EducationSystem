<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Education System</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<tiles:insertAttribute name="header" />
</head>

<body>
	<div id="header">
		<tiles:insertAttribute name="menu" />
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="bs-sidebar hidden-print" role="complementary">
					<ul class="nav bs-sidenav">
						<li><a href="/education/login">수강신청</a></li>
						<li><a href="/education/login">수강내역</a></li>
						<li><a href="/education/login">강좌개설 신청</a></li>
						</br>
						<li><a href="/education/login">사용자관리</a></li>
						<li><a href="/education/login">요청중인 강좌</a></li>
						<li><a href="/education/login">강좌개설</a></li>
						<li><a href="/education/login">수강신청 관리</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-9" role="main">
				<div id="body">
					<tiles:insertAttribute name="body" />
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="col-md-12">
			<div id="footer">
				<tiles:insertAttribute name="footer" />
			</div>
		</div>
	</div>

</body>
</html>