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

<title>UNI Education System</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<div class="page-header" >
	<h1>Hyundai U&I Education System <small></small></h1>
</div>
</head>

<body>
	<header class="navbar navbar-inverse bs-docs-nav" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="/education/jobedu" class="navbar-brand">U&I Education System</a>
			</div>
			<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
				<ul class="nav navbar-nav">
					<li><a href="/education/jobedu">직무교육</a></li>
					<li><a href="/education/jobedu">그룹교육</a></li>
					<li><a href="/education/jobedu">어학교육</a></li>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">${uname} (${uid})<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Change Info.</a></li>
							<li><a href="/education/logout">Logout</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			
		</div>
	</header>

	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<div class="bs-sidebar hidden-print" role="complementary">
					<ul class="nav bs-sidenav">
						<li><a href="/education/jobedu/registerLecture">수강신청</a></li>
						<li><a href="/education/login">수강내역</a></li>
						<li><a href="/education/jobedu/makeLectureStd">강좌개설 신청</a></li>
						</br>
						<li><a href="/education/login">사용자관리</a></li>
						<li><a href="/education/login">요청중인 강좌</a></li>
						<li><a href="/education/login">강좌개설</a></li>
						<li><a href="/education/login">수강신청 관리</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-10" role="main">
				<div class="bs-docs-section">
	    			<div class="page-header">
						<div id="body">
							<tiles:insertAttribute name="body" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="col-md-12">
			<div class="well">
		 		<p> Page Footer</p>
		      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur.</p>
		    </div>
		</div>
	</div>

</body>
</html>