
<%@page import="ua.com.foxminded.dynamicweb.DatabaseFacade"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Library</title>
 <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<h1 align="center"><em> List of books  your books</em></h1>
	
	
	<%
	for (String name : DatabaseFacade.getBooks()) {
		out.print(name + "<br/>");
	}
	%>
	<br>
	
	<form method="post" action="addbook.jsp">
		<label for="name">Write book title you want to add:</label>
		<input type="text" id="name" name="name">
		<button style = "
    top:50%;
    background-color:#0a0a23;
    color: #fff;
    border:none;
    border-radius:10px;
    box-shadow: 0px 0px 2px 2px rgb(0,0,0);" type="submit">Add book</button>
	</form>



	
	<b>If you want, you could delete your book :)</b>
	
	<form method="post" action="deletebook.jsp">
		<label for="name">Enter the title of the book you want to delete:</label>
		<input type="text" id="name" name="name">
		<button style = "
    top:50%;
    background-color:#0a0a23;
    color: #fff;
    border:none;
    border-radius:10px;
    box-shadow: 0px 0px 2px 2px rgb(0,0,0);" type="submit">Delete</button>
	</form>
	<form action="deleteallbooks.jsp">
	<b>If you want, you could delete all books from your library.</b>
	<br>
	
	<button style = "
    top:50%;
    background-color:#0a0a23;
    color: #fff;
    border:none;
    border-radius:10px;
    box-shadow: 0px 0px 2px 2px rgb(0,0,0);" type="submit">Delete All Books</button>
	</form>
	
	
	
</body>
</html>