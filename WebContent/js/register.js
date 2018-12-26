function formValidation()
{
	var firstname =  document.getElementById("firstname");
	var lastname =  document.getElementById("lastname");
	var dob =  document.getElementById("dob");
	var email =  document.getElementById("email");
	var password =  document.getElementById("password");
	var confirmpassword =  document.getElementById("confirmpassword");
	var f=1;
	var l=1;
	var d=1;
	var e=1;
	var p=1;
	var c=1;
	
	 if(firstname.value.length == 0)
	 {
			document.getElementById("firstname").innerText = "* This field is mandatory *";
			//alert("Firstname cannot be empty");//this segment displays the validation rule for all fields
			f=1;
	 }
	 else{
		 var alphaExp = /^[a-zA-Z]+$/;
			if(firstname.value.match(alphaExp)){
				f=0;
			}else{
			 //this segment displays the validation rule for name
				//alert(alertMsg);
				document.getElementById("firstname").innerText = "* For your first name please use alphabets only *";
				f=1;
			}
		 
		 }
	 if(lastname.value.length == 0)
	 {
			document.getElementById("lastname").innerText = "* This field is mandatory *"; //this segment displays the validation rule for all fields
			l=1;
	 }
	 else{
		 var alphaExp = /^[a-zA-Z]+$/;
			if(lastname.value.match(alphaExp)){
				l=0;
			}
			else{
			 //this segment displays the validation rule for name
				//alert(alertMsg);
				document.getElementById("lastname").innerText = "* For your first name please use alphabets only *";
				l=1;
			}
	 }
	 
	if(dob.value.length == 0)
	 {
			document.getElementById("dob").innerText = "* This field is mandatory *"; //this segment displays the validation rule for all fields
			d=1;
	 }
	 else
	 {
		 d=0;
	 }
	 
	 if(email.value.length == 0)
	 {
		 	document.getElementById("email").innerText = "* This field is mandatory *"; //this segment displays the validation rule for all fields
			e=1;
	 }
	 
	 else{
		 var emailExp = /^[\w]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
			if(email.value.match(emailExp)){
				e=0;
			}
			else{
				document.getElementById("email").innerText = "* For your email please use valid email address *" ; //this segment displays the validation rule for email
				e=1;
			}
	 }
	 
	if((password.value).length == 0)
	 {
		 	alert("* Password field is mandatory *"); //this segment displays the validation rule for all fields
			p=1;
	 }
	 
	 else{
		 var alphaExp = /^[a-zA-Z]{10,}$/;
			if((password.value).match(alphaExp)){
				p=0;
			}
			else{
				alert("* For your password please use alphabets of minimum length 10 *") ; //this segment displays the validation rule for email
				p=1;
			}
	 }
	
	
	
	if((password.value) == (confirmpassword.value))
	 {
		 c=0;
	 }
	 else
	 {
		alert("* Passwords need to be Matched *");
		 c=1;
	 }
	
	 if(f==0 && l==0 && d==0 && e==0 && p==0 && c==0)
	 {
		 return true;
	 }
	 else
	 {
		 return false;
	 }
}

