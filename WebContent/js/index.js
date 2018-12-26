function formValidator()
{
	var email = document.getElementById("email").value;
	var password = document.getElementById("password").value;
	var e=1;
	var p=1;
	
	if(email.length == 0)
	{
		document.getElementById("email").innerText = "* This field is mandatory *";
		e=1;
	}
	else
	{
		return true;
		e=0;
	}
	
	if(password.length == 0)
	{
		alert("* Password field is mandatory *");
		p=1;
	}
	else
	{
		p=0;
	}
	
	if(e==0 && p==0)
	{
		return true;
	}
	else
	{
		return false;
	}
}