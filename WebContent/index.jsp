<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
	  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  	<link rel="stylesheet" href="css/index.css">
	  	<script src="js/index.js"></script>
	  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>TopJobs Inc.</title>
</head>

	<body class="body">
	<div class="header">
		<h1>TopJobs Inc.</h1>
	</div>
	<div class="container">
 		<div class="row">
		    <div class="col-sm-4">	
    		</div>
    		<div class="col-sm-4 roundBorder">
    			<form class="form1" method="post" action="LoginServlet" onSubmit="return formValidator()">
	      			<input class="input textbox" type="text" id="email" name="email" placeholder="Email"/><br>
	      			<input class="input textbox" type="password" id="password" name="password" placeholder="Password"/><br>
					<div class="container2">
						<label class="radio-inline label">
						     <input class="input" type="radio" name="usertype" value="JobSeeker" checked>JobSeeker
						     <span class="checkmark"></span>
    					</label>
    					<label class="radio-inline label">
					      	 <input class="input" type="radio" name="usertype" value="Employer">Employer
						     <span class="checkmark"></span>
    					</label><br>
    					<label class="radio-inline label">
      						<input class="input" type="radio" name="usertype" value="Administrator">Administrator
      						<span class="checkmark"></span>
    					</label>
					</div>
	      			<input class="input button" type="submit" name="login" value="Login"/>
      			</form>
    		</div>
   			<div class="col-sm-4">
    		</div>
  		</div>
	</div>
	<div class="hyperlink">
		<form class="form2" method="get" action="LoginServlet">
	      	<input class="button" type="submit" name="register" value="Register ?"/>
      	</form>
	</div>
</body>
</html>