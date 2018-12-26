<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://localhost:8080/TopJobs/css/register.css">
<script src="js/register.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Registration Form</title>
</head>
<body class="body">
	<div class="header">
		<h1>Registration Form</h1>
	</div>	
	<div class="container">
 		<div class="row">
		    <div class="col-sm-2">	
    		</div>
    		<div class="col-sm-8 roundBorder">
    			<form class="form1" method="post" action="RegisterServlet" onSubmit="return formValidation()">
	      			<table class="table">
	      				<tr>
	      					<td>
	      					<label class="label">First Name</label>
	      					</td>
	      					<td>
		      				<input class="input textbox" type="text" id="firstname" name="firstname" placeholder="Enter your first name"/>
		      				<br>
		      				</td>
		      			</tr>
		      			<tr>
	      					<td>
			      			<label class="label">Middle Name</label>
			      			</td>
	      					<td>
			      			<input class="input textbox" type="text" id="middlename" name="middlename" placeholder="Enter your middle name"/>
			      			<br>
			      			</td>
		      			</tr>
		      			<tr>
	      					<td>
			      			<label class="label">Last Name</label>
			      			</td>
	      					<td>
			      			<input class="input textbox" type="text" id="lastname" name="lastname" placeholder="Enter your last name"/>
			      			<br>
			      			</td>
		      			</tr>
		      			<tr>
	      					<td>
			      			<label class="label">Date Of Birth</label>
			      			</td>
	      					<td>
			      			<input class="input" type="date" id="dob" name="dob"/>
			      			<br>
			      			</td>
		      			</tr>
		      
		      			<tr>
	      					<td>
		      				<label class="label">Gender</label><br>
		      				</td>
		      				<td>	
		      				<div class="container2">
								<label class="radio-inline label">
								     <input class="input" type="radio" name="gender" value="Male" checked>Male
								     <span class="checkmark"></span>
		    					</label>
		    					<label class="radio-inline label">
							      	 <input class="input" type="radio" name="gender" value="Female">Female
								     <span class="checkmark"></span>
		    					</label>
		    					<label class="radio-inline label">
							      	 <input class="input" type="radio" name="gender" value="Others">Others
								     <span class="checkmark"></span>
		    					</label>
							</div>
		      				</td>
		      			</tr>
		      			
		      			<tr>
	      					<td>
			      			<label class="label">Email</label>
			      			</td>
	      					<td>
			      			<input class="input textbox" type="text" id="email" name="email" placeholder="Enter your email"/>
			      			<br>
			      			</td>
		      			</tr>
		      			<tr>
	      					<td>
			      			<label class="label">Password</label>
			      			</td>
	      					<td>
			      			<input class="input textbox" type="password" id="password" name="password" placeholder="Enter your password"/>
							<br>
							</td>
						</tr>
						<tr>
	      					<td>
							<label class="label">Confirm Password</label>
							</td>
	      					<td>
		      				<input class="input textbox" type="password" id="confirmpassword" name="confirmpassword" placeholder="Confirm your password"/>
							<br>
							</td>
						</tr>
							
						</table>
						
						
						

	
						
						<div class="container2">
							<label class="radio-inline label">
							     <input class="input" type="radio" name="usertype" value="JobSeeker" checked>JobSeeker
							     <span class="checkmark"></span>
	    					</label>
	    					<label class="radio-inline label">
						      	 <input class="input" type="radio" name="usertype" value="Employer">Employer
							     <span class="checkmark"></span>
	    					</label><br>
						</div>
		      			<input class="input button" type="submit" name="create" value="Create Account"/>
	      			
      			</form>
    		</div>
   			<div class="col-sm-2">
    		</div>
  		</div>
	</div>
	
</body>
</html>