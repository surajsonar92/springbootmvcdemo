<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<title>Register Here</title>
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
	padding: 16px;
	background-color: white;
	width: 50%;
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
	border: none;
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
	
</script>
</head>

<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="">Library Management System</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="/user/profile">Profile</a></li>
			</ul>
		</div>
	</nav>


	<form name="addBook" action="/book/save" method="post">
		<div class="container">
			<c:choose>
				<c:when test="${updateBookInfo!=null}">
					<h1>Update Book</h1>
				</c:when>

				<c:otherwise>
					<h1>Add Book</h1>
				</c:otherwise>
			</c:choose>

			<hr>
			<label for="bookName"><b>Book Name</b></label>

			<c:choose>
				<c:when test="${updateBookInfo.getBookName()!=null}">
					<input type="hidden" value="${updateBookInfo.getBookId()}" name="bookId"/>
					<input type="text" placeholder="Enter Book Name"
						value="${updateBookInfo.getBookName()}" name="bookName"
						id="bookName" required />

				</c:when>
				<c:otherwise>

					<input type="text" placeholder="Enter Book Name" name="bookName"
						id="bookName" required>

				</c:otherwise>
			</c:choose>
			<label for="aurthor"><b>Author</b></label>
			<c:choose>
				<c:when test="${updateBookInfo.getAurthor()!=null}">
					<input type="text" placeholder="Enter Author Name"
						value="${updateBookInfo.getAurthor()}" name="aurthor" id="aurthor"
						required />
				</c:when>
				<c:otherwise>
					<input type="text" placeholder="Enter Author Name" name="aurthor"
						id="aurthor" required>
				</c:otherwise>
			</c:choose>



			<label for="description"><b>Description</b></label>
			<c:choose>
				<c:when test="${updateBookInfo.getDescription()!=null}">
					<input type="text" placeholder="Enter Description"
						value="${updateBookInfo.getDescription()}" name="description"
						id="description" required />
				</c:when>
				<c:otherwise>
					<input type="text" placeholder="Enter Description"
						name="description" id="description" required>
				</c:otherwise>
			</c:choose>

			<label for="price"><b>Price</b></label>
			<c:choose>
				<c:when test="${updateBookInfo.getPrice()!=null}">
					<input type="text" placeholder="Enter Price"
						value="${updateBookInfo.getPrice()}" name="price" id="price"
						required />
				</c:when>
				<c:otherwise>
					<input type="text" placeholder="Enter Price" name="price"
						id="price" required>
				</c:otherwise>
			</c:choose>

			<div class="row">
				<div class="col-sm-3">
					<button type="submit" class="registerbtn">Save</button>
				</div>
				<div class="col-sm-3">
					<button type="reset" class="registerbtn">Reset</button>
				</div>
			</div>

		</div>

	</form>
</body>
</html>