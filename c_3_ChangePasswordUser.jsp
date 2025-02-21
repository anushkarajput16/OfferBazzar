<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<body>
<center>
<style type="text/css">

	label{
	width:100px;
	display:inline-block;
	}
	body
{
background-color:skyblue;
}
form{
border-radius:100px;
background:pink;
color:black;
width:480px;
padding:10px;}</style>

</head>


	<h1>Welcome in the Offer Bazar</h1>
	<br><br><br>
<h2>Change Password of User</h2>

<form action="c_3_ChangePasswordUser" method="post">
	<label for="uid"><b>User Id :</b> </label>
	<input type="uid" placeholder="Enter Id" name="uid" required>
	<br><br><br>
	<label for="new_password"><b>New_Password:</b> </label>
	 <input type="new_password" placeholder="Enter new_password" name="new_password" required>
	<br><br><br>
	
	
	
	<button type="Submit">Submit</button>
	
	</center>
</form>

</body>
</html>