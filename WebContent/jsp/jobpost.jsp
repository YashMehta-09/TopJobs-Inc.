<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://localhost:8080/TopJobs/css/jobpost.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Job Post</title>
</head>
<body class="body">
	<div class="header">
		<h1>Job Posting Form</h1>
	</div>	
	<div class="container">
 		
		    <div class="col-sm-4">	
    		</div>
    		<div class="col-sm-8 roundBorder">
    			<form class="form1" method="post" action="../MainServlet">
	      			<table class="table">
	      				<tr>
	      					<td>
			      			<label class="label">Company Name</label>
			      			</td>
	      					<td>
			      			<input class="input textbox" type="text" id="companyname" name="companyname" placeholder="Enter the name of the company or organisation"/>
			      			<br>
			      			</td>
		      			</tr>
		      			<tr>
	      					<td>
			      			<label class="label">Company Branch</label>
			      			</td>
	      					<td>
			      			<input class="input textbox" type="text" id="companybranch" name="companybranch" placeholder="Enter the branch of the company or organisation"/>
			      			<br>
			      			</td>
		      			</tr>
		      			<tr>
	      					<td>
			      			<label class="label">Company City</label>
			      			</td>
	      					<td>
			      			<input class="input textbox" type="text" id="companycity" name="companycity" placeholder="Enter the city of the company or organisation"/>
			      			<br>
			      			</td>
		      			</tr>
		      			<tr>
	      					<td>
			      			<label class="label">Company State</label>
			      			</td>
	      					<td>
			      			<input class="input textbox" type="text" id="companystate" name="companystate" placeholder="Enter the state of the company or organisation"/>
			      			<br>
			      			</td>
		      			</tr>
		      			<tr>
	      					<td>
			      			<label class="label">Job Type</label>
			      			</td>
	      					<td>
			      			<input class="input textbox" type="text" id="jobtype" name="jobtype" placeholder="Enter the job type"/>
			      			<br>
			      			</td>
		      			</tr>
		      			<tr>
	      					<td>
			      			<label class="label">Job Description</label>
			      			</td>
	      					<td>
			      			<input class="input textbox" type="text" id="jobdescription" name="jobdescription" placeholder="Enter the job description"/>
			      			<br>
			      			</td>
		      			</tr>
		      			<tr>
	      					<td>
			      			<label class="label">Contact Number</label>
			      			</td>
	      					<td>
			      			<input class="input textbox" type="text" id="contactnumber" name="contactnumber" placeholder="Enter the contact number"/>
			      			<br>
			      			</td>
		      			</tr>
		      			<tr>
	      					<td>
			      			<label class="label">Vacancy</label>
			      			</td>
	      					<td>
			      			<input class="input textbox" type="text" id="vacancy" name="vacancy" placeholder="Enter the no. of vacancy"/>
			      			<br>
			      			</td>
		      			</tr>
		      			<tr>
	      					<td>
			      			<label class="label">CTC</label>
			      			</td>
	      					<td>
			      			<input class="input textbox" type="text" id="ctc" name="ctc" placeholder="Enter the package in LPA"/>
			      			<br>
			      			</td>
		      			</tr>
						</table>
						
					
						<div class="container2">
							<label class="label">Qualification Required :</label><br><br>
							<label class="checkbox-inline label">
						      <input type="checkbox" name="qualification" value="PHD">PHD
						      <span class="checkmark"></span>
						    </label>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="qualification" value="BTECH">B.Tech
						      <span class="checkmark"></span>
						    </label>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="qualification" value="MTECH">M.Tech
						      <span class="checkmark"></span>
						    </label>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="qualification" value="BSC">B.Sc
						      <span class="checkmark"></span>
						    </label>
							<label class="checkbox-inline label">
						      <input type="checkbox" name="qualification" value="MSC">M.Sc
						      <span class="checkmark"></span>
						    </label><p></p>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="qualification" value="ANY">Any
						      <span class="checkmark"></span>
						    </label>
						</div>
						<input class="input textbox" type="text" id="otherqualification" name="otherqualification" placeholder="Any other qualification ? Mention it separated by comma (',')"/>
						<br><br>
						<div class="container2">
							<label class="label">Skills Required :</label><br><br>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="skill" value="Java">Java
						      <span class="checkmark"></span>
						    </label>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="skill" value="C">C
						      <span class="checkmark"></span>
						    </label>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="skill" value="Python">Python
						      <span class="checkmark"></span>
						    </label>
							<label class="checkbox-inline label">
						      <input type="checkbox" name="skill" value="Asp.Net">Asp.Net
						      <span class="checkmark"></span>
						    </label>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="skill" value="AngularJS">Angular JS
						      <span class="checkmark"></span>
						    </label>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="skill" value="NodeJS">Node JS
						      <span class="checkmark"></span>
						    </label><p></p>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="skill" value="Jsp">JSP
						      <span class="checkmark"></span>
						    </label>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="skill" value="Servlet">Servlet
						      <span class="checkmark"></span>
						    </label>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="skill" value="CoreJava">Core Java
						      <span class="checkmark"></span>
						    </label>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="skill" value="DataScience">Data Science
						      <span class="checkmark"></span>
						    </label><p></p>
						    <label class="checkbox-inline label">
						      <input type="checkbox" name="skill" value="IOT">Internet Of Things[IOT]
						      <span class="checkmark"></span>
						    </label><p></p>
						</div>
						<input class="input textbox" type="text" id="otherskill" name="otherskill" placeholder="Any other skill ? Mention it separated by comma (',')"/>	
						<br><br>					
		      			<input class="input button" type="submit" name="postjob" value="Post"/>
		      			
      			</form>
    		</div>
   			<div class="col-sm-2">
    		</div>
  		</div>
</body>
</html>