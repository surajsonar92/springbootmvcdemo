<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html> 
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Welcome to Profile</title>
<style>
#books {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#books td, #books th {
  border: 1px solid #ddd;
  padding: 8px;
}

#books tr:nth-child(even){background-color: #f2f2f2;}

#books tr:hover {background-color: #ddd;}

#books th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}

</style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="">Library Management System</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="/book/add">Add Book</a></li>
      <li><a href="/user/logout">Log Out</a></li>
    </ul>
  </div>
</nav>
<%-- 	${user.getFirstName()}! --%>
	<table border="1" width="100" id="books">
		<tr>
			<th>Book Id</th>
			<th>Book Name</th>
			<th>Author</th>
			<th>Description</th>
			<th>Price</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${allBooks}" var="b">
		<tr>
		<td>${b.getBookId()}</td>
		<td>${b.getBookName()}</td>
		<td>${b.getAurthor()}</td>
		<td>${b.getDescription()}</td>
		<td>${b.getPrice()}</td>
		<td><a href="/book/edit/${b.getBookId()}">Edit</a></td>
		<td><a href="/book/delete/${b.getBookId()}">Delete</a></td>
		</tr>
		</c:forEach>
	</table>





</body>
</html>