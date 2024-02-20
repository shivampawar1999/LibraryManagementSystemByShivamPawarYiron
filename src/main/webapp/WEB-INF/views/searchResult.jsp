<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
<link href="css/style.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<title>Search Result</title>
</head>
<body class="img-with-bg">

	<!----------------------------------------- Start Coding------------------------------------------------------------------------------------ -->


	<!-- Designing Show ALL User Page-->
	<div class="container" style="background-color: white;">

		<div class="row">


			<!-- search Book Logo -->
			<div class="container text-center">
				<img alt="AddUser-Logo" src="/images/searching_book.png"
					style="width: 80px">
			</div>


			<div class="container">

				<!-- DashBoard -->
				<a href="/dashboard" class="btn btn-danger"> <i
					class="fas fa-tachometer-alt"></i> &nbsp;Dashboard
				</a>
			</div>

			<div class="container text-center">
				<h1 class="text-center">Search Result</h1>
			</div>


			<!-- data in table--------------------------------------------------------- -->

			<table class="table table-striped">
				<thead>
					<tr class="thead-dark">
						<th>Book ID</th>
						<th>Book Title</th>
						<th>Author</th>
						<th>ISBN Number</th>
						<th>Publisher</th>
						<th>Publish_Year</th>
						<th>Quantity</th>
					</tr>
				</thead>
				<tbody>
					<!-- Use scriptlets to iterate over BookList and populate table rows -->
					<%
					for (com.Librarysystem.model.BookManagement book : (java.util.List<com.Librarysystem.model.BookManagement>) request
							.getAttribute("BookList")) {
					%>
					<tr>
						<td><%=book.getBookId()%></td>
						<td><%=book.getBookTitle()%></td>
						<td><%=book.getAuthor()%></td>
						<td><%=book.getISBNnumber()%></td>
						<td><%=book.getPublisher()%></td>
						<td><%=book.getPublishYear()%></td>
						<td><%=book.getQuantity()%></td>
						<!-- Add more columns as needed -->
					</tr>
					<%
					}
					%>
				</tbody>
			</table>




			<!-- table close--------------------------------------------------------- -->

			<!-- Showing Error Message -->

			<%
			if (request.getAttribute("error") != null) {
			%>
			<p class="error"><%=request.getAttribute("error")%></p>
			<%
			} else {
			// No action needed
			}
			%>



			<!-- <hr>

					link for SignUp Page
					<div class="container text-center mt-2">
						<a href="/adminRegister" class="btn btn-primary">Go To Sign-Up</a>
					</div> -->


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

	<!-- Success Alert -->
	<script src="js/script.js"></script>



</body>
</html>