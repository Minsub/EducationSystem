<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<link href="<c:url value='/css/template-docs.css'/>" rel="stylesheet">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

<!-- <link href="<c:url value='/css/bootstrap-responsive.css'/>" rel="stylesheet">  -->


<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<script language="javascript">
function showDiv() {
	var teacher = "<%=(String)session.getAttribute("teacher")%>";
	var admin = "<%=(String)session.getAttribute("admin")%>";
	
	if (teacher == null || teacher == "N") {
		$(".teacher").hide();
	}
	
	if (admin == null || admin == "N") {
		$(".admin").hide();	
	}
	
}
//window.onload=showDiv
</script>	
	

</head>

<body onload="showDiv()">

<div id="wrap">
	<div class="page-header" >
			<h1><img src="<c:url value='/img/logo.jpg'/>" height="70" />Hyundai U&I Education System <small></small></h1>
	</div>

	<header class="navbar navbar-inverse bs-docs-nav" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="/education/jobedu" class="navbar-brand">Home</a>
			</div>
			<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
				<ul class="nav navbar-nav">
					<li><a href="/education/jobedu">직무교육</a></li>
					<li><a href="/education/jobedu">그룹교육</a></li>
					<li><a href="/education/jobedu">어학교육</a></li>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">${uname} (${uid})</a>
						<ul class="dropdown-menu">
							<li><a href="#">Change Info.</a></li>
							<li><a href="/education/logout">Logout</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			
		</div>
	</header>



	<div class="container bs-docs-container">
		<div class="row">
			<div class="col-xs-2">
				<div class="bs-sidebar hidden-print" role="complementary">
					<ul class="nav bs-sidenav">
						<li><a href="/education/jobedu/registerLecture">수강신청</a></li>
						<li><a href="/education/jobedu/LectureListPast">수강내역</a></li>
						<li class="teacher"><a href="/education/jobedu/makeLectureStd">강좌개설 신청</a></li>
						<br>
						
						<li class="admin"><a href="/education/jobedu/UserManagement">사용자관리</a></li>
						<li class="admin"><a href="/education/jobedu/LectureListRequested">요청중인 강좌</a></li>
						<li class="admin"><a href="/education/jobedu/makeLectureAdmin">강좌개설</a></li>
						<li class="admin"><a href="/education/jobedu/RegistrationManaement">수강신청 관리</a></li>
						
					</ul>
				</div>
			</div>

			<div class="col-xs-10" role="main">
				<div id="body">
					<tiles:insertAttribute name="body" />
				</div>
			</div>
		</div>
	</div>
</div>



	
<!--
<div class="well">
		<p>Hyundai Ubiquitous & Information technology</p>
       <p>This is a private system operated for Hyundai U&I company business. All corporate policies and standards must be strictly followed. 
	<br>2014 Hyundai U&I Co.,LTD All Rights Reserved.</p>


</div>
 -->
</body>
</html>