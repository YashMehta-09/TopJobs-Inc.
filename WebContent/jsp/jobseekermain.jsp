<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://localhost:8080/TopJobs/css/jobseekermain.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Main Page</title>
</head>
<body class="body">

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">TopJobs Inc.</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>

			<li><a href="#">About Us</a></li>
			<li><a href="#">Contact Us</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Resume<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="jsp/resume.jsp">Make Resume</a></li>
					<li><a href="#">Edit Resume</a></li>
				</ul></li>
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
					JobSeeker</a></li>
			<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>
					Log Out</a></li>
		</ul>
	</div>
	</nav>

</body>
</html>