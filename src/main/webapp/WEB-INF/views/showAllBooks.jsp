<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.Librarysystem.model.BookManagement"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">


<link href="css/style.css" rel="stylesheet">




<title>List OF Books</title>
</head>
<body class="img-with-bg">

	<!----------------------------------------- Start Coding------------------------------------------------------------------------------------ -->



	<!-- Designing Show ALL BOOKs Page-->
	<div class="container" style="background-color: white;">

		<div class="row">




			<!-- register Image Logo -->
			<div class="container text-center">
				<img alt="Login-Logo" src="/images/manageBook.png"
					style="width: 80px">
			</div>

			<div class="container text-center">
				<h1 class="text-center">Manage Book</h1>
			</div>


			<div class="container">
			
			
				<!-- Add Dashboard button -->
				<a href="/dashboard" class="btn btn-danger"> 
					<i class="fas fa-tachometer-alt"></i> &nbsp;Dashboard
				</a>
			
				<!-- Add new book button -->
				<a href="/manageBook" class="btn btn-success"> <i
					class="fas fa-plus-circle"></i>&nbsp; Add New Book
				</a>
			</div>




			<table class="table table-striped mt-3">
				<thead>
					<tr>
						<th>Book ID</th>
						<th>Title</th>
						<th>Author</th>
						<th>Publisher</th>
						<th>ISBN Number</th>
						<th>Publish Year</th>
						<th>Quantity</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<%
					Object attribute = request.getAttribute("allBooks");
					if (attribute instanceof List) {
						List<BookManagement> allBooks = (List<BookManagement>) attribute;
						for (BookManagement book : allBooks) {
					%>
					<tr>
						<td><%=book.getBookId()%></td>
						<td><%=book.getBookTitle()%></td>
						<td><%=book.getAuthor()%></td>
						<td><%=book.getPublisher()%></td>
						<td><%=book.getISBNnumber()%></td>
						<td><%=book.getPublishYear()%></td>
						<td><%=book.getQuantity()%></td>
						<td>
							<!-- Edit button --> <a href="editBook/<%=book.getBookId()%>"
							class="btn btn-primary btn-sm"><i class="fas fa-pen"></i>&nbsp;
								Edit</a> <!-- Delete button --> <a
							href="deleteBook/<%=book.getBookId()%>"
							class="btn btn-danger btn-sm mt-1"><i class="fas fa-trash"></i>&nbsp;
								Delete</a>
						</td>
					</tr>
					<%
					}
					} else {
					%>
					<tr>
						<td colspan="8">No books found</td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>


		</div>
	</div>



	<!----------------------------------------- End Coding------------------------------------------------------------------------------------ -->

	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>


</body>

</html>