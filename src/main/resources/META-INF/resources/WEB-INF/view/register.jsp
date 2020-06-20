<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: white;
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	padding: 10px;
	background-color: white;
	width: 50%;
	left: 30%; position : absolute;
	left: 30%;
	position: absolute;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: 0;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}

/* Add a blue text color to links */
a {
	color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
	background-color: #f1f1f1;
	text-align: center;
}
</style>
<script type="text/javascript">
	function matchpass() {
		var firstpassword = document.registerForm.password.value;
		var secondpassword = document.registerForm.conpassword.value;

		if (firstpassword == secondpassword) {
			return true;
		} else {
			alert("password must be same!");
			return false;
		}
	}
</script>
</head>

<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="">Library Management System</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="/user/login">Sign In</a></li>
			</ul>
		</div>
	</nav>


	<form name="registerForm" action="/user/save" method="post"
		onsubmit="return matchpass()">

		<div class="container">
			

			<label for="firstname"><b>First Name</b></label> <input type="text"
				placeholder="Enter First Name" name="firstName" id="fname" required>

			<label for="lastname"><b>Last Name</b></label> <input type="text"
				placeholder="Enter Last Name" name="lastName" id="lname" required>

			<label for="phone"><b>Mobile No</b></label> <input type="text"
				placeholder="Enter Mobile No" name="phoneNo" id="phoneno" required>

			<label for="email"><b>Email</b></label> <input type="text"
				placeholder="Enter Email" name="emailId" id="email" required>

			<label for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="password" id="password">

			<label for="psw-repeat"><b>Repeat Password</b></label> <input
				type="password" placeholder="Repeat Password" name="conpassword"
				id="conpassword">

			<div class="row">
				<div class="col-sm-3">
					<button type="submit" class="registerbtn">Login</button>
				</div>
				<div class="col-sm-3">
					<button type="reset" class="registerbtn">Reset</button>
				</div>


			</div>
		</div>
	</form>
</body>
</html>