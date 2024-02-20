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

<title>Manage Book</title>
</head>
<body class="img-with-bg">

	<!----------------------------------------- Start Coding------------------------------------------------------------------------------------ -->



	<!-- Designing Login Page-->
	<div class="container">

		<div class="row">
			<div class="col-md-6 offset-md-3 mt-3">
				<div class="my-card">

					<!-- register Image Logo -->
					<div class="container text-center">
						<img alt="Login-Logo" src="/images/add_book.png"
							style="width: 80px">
					</div>

					<h1 class="text-center">ADD NEW BOOK</h1>


					<!-- Form Login -->
					<form action="/processBook" method="post">

						<%
						// Retrieve the BindingResult object from the request attributes
						org.springframework.validation.BindingResult result = (org.springframework.validation.BindingResult) request
								.getAttribute("org.springframework.validation.BindingResult.bookManagement");
						%>

						<!-- ------------------------------------------------------------------------------------------------------------------- -->

						<%
						// Check if there are errors for the 'bookTitle' field
						if (result == null || result.hasFieldErrors("bookTitle")) {
						%>
						<div class="form-group">
							<label for="bookTitlel" class="is-invalid">Book Title </label> <input
								type="text" class="form-control" id="bookTitle" name="bookTitle"
								aria-describedby="emailHelp" placeholder="Your Book Title.."
								autocomplete="off" value="${bookManagement.bookTitle}" required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'email' field

								if (result != null) {
									java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("bookTitle");
									for (org.springframework.validation.FieldError error : errors) {
								%>
								<p><%=error.getDefaultMessage()%></p>
								<%
								}
								}
								%>
							</div>
						</div>
						<%
						} else {
						%>
						<div class="form-group">
							<label for="bookTitle">Book Title </label> <input type="text"
								class="form-control" id="bookTitle" name="bookTitle"
								aria-describedby="emailHelp" placeholder="Your Book Title.."
								autocomplete="off" value="${bookManagement.bookTitle}" required>
						</div>

						<%
						}
						%>


						<!-- ------------------------------------------------------------------------------------------------------------------- -->


						<%
						// Check if there are errors for the 'bookTitle' field
						if (result == null || result.hasFieldErrors("author")) {
						%>
						<div class="form-group">
							<label for="author" class="is-invalid">Author </label> <input
								type="text" class="form-control" id="author" name="author"
								aria-describedby="emailHelp" placeholder="Author name.."
								autocomplete="off" value="${bookManagement.author}" required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'email' field

								if (result != null) {
									java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("author");
									for (org.springframework.validation.FieldError error : errors) {
								%>
								<p><%=error.getDefaultMessage()%></p>
								<%
								}
								}
								%>
							</div>
						</div>
						<%
						} else {
						%>
						<div class="form-group">
							<label for="author">Author </label> <input type="text"
								class="form-control" id="author" name="author"
								aria-describedby="emailHelp" placeholder="Author Name.."
								autocomplete="off" value="${bookManagement.author}" required>
						</div>

						<%
						}
						%>

						<!-- ------------------------------------------------------------------------------------------------------------------- -->


						<%
						// Check if there are errors for the 'bookTitle' field
						if (result == null || result.hasFieldErrors("publisher")) {
						%>
						<div class="form-group">
							<label for="publisher" class="is-invalid">Publisher </label> <input
								type="text" class="form-control" id="publisher" name="publisher"
								aria-describedby="emailHelp" placeholder="publisher name.."
								autocomplete="off" value="${bookManagement.publisher}" required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'email' field

								if (result != null) {
									java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("publisher");
									for (org.springframework.validation.FieldError error : errors) {
								%>
								<p><%=error.getDefaultMessage()%></p>
								<%
								}
								}
								%>
							</div>
						</div>
						<%
						} else {
						%>
						<div class="form-group">
							<label for="publisher">Publisher </label> <input type="text"
								class="form-control" id="publisher" name="publisher"
								aria-describedby="emailHelp" placeholder="publisher Name.."
								autocomplete="off" value="${bookManagement.publisher}" required>
						</div>

						<%
						}
						%>

						<!-- ------------------------------------------------------------------------------------------------------------------- -->


						<%
						// Check if there are errors for the 'bookTitle' field
						if (result == null || result.hasFieldErrors("ISBNnumber")) {
						%>
						<div class="form-group">
							<label for="ISBNnumber" class="is-invalid">ISBN Number </label> <input
								type="text" class="form-control" id="ISBNnumber"
								name="ISBNnumber" aria-describedby="emailHelp"
								placeholder="ISBN number.." autocomplete="off"
								value="${bookManagement.ISBNnumber}" required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'email' field

								if (result != null) {
									java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("ISBNnumber");
									for (org.springframework.validation.FieldError error : errors) {
								%>
								<p><%=error.getDefaultMessage()%></p>
								<%
								}
								}
								%>
							</div>
						</div>
						<%
						} else {
						%>
						<div class="form-group">
							<label for="ISBNnumber">ISBN Number </label> <input type="text"
								class="form-control" id="ISBNnumber" name="ISBNnumber"
								aria-describedby="emailHelp" placeholder="ISBN number.."
								autocomplete="off" value="${bookManagement.ISBNnumber}" required>
						</div>

						<%
						}
						%>

						<!-- ------------------------------------------------------------------------------------------------------------------- -->


						<%
						// Check if there are errors for the 'bookTitle' field
						if (result == null || result.hasFieldErrors("publishYear")) {
						%>
						<div class="form-group">
							<label for="publishYear" class="is-invalid">Publish Year
							</label> <input type="text" class="form-control" id="publishYear"
								name="publishYear" aria-describedby="emailHelp"
								placeholder="publish Year.." autocomplete="off"
								value="${bookManagement.publishYear}" required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'email' field

								if (result != null) {
									java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("publishYear");
									for (org.springframework.validation.FieldError error : errors) {
								%>
								<p><%=error.getDefaultMessage()%></p>
								<%
								}
								}
								%>
							</div>
						</div>
						<%
						} else {
						%>
						<div class="form-group">
							<label for="publishYear">Publish Year </label> <input type="text"
								class="form-control" id="publishYear" name="publishYear"
								aria-describedby="emailHelp" placeholder="publish Year.."
								autocomplete="off" value="${bookManagement.publishYear}"
								required>
						</div>

						<%
						}
						%>

						<!-- ------------------------------------------------------------------------------------------------------------------- -->


						<%
						// Check if there are errors for the 'bookTitle' field
						if (result == null || result.hasFieldErrors("quantity")) {
						%>
						<div class="form-group">
							<label for="quantity" class="is-invalid">Quantity </label> <input
								type="number" class="form-control" id="quantity" name="quantity"
								aria-describedby="emailHelp" placeholder="book quantity.."
								autocomplete="off" value="${bookManagement.quantity}" required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'email' field

								if (result != null) {
									java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("quantity");
									for (org.springframework.validation.FieldError error : errors) {
								%>
								<p><%=error.getDefaultMessage()%></p>
								<%
								}
								}
								%>
							</div>
						</div>
						<%
						} else {
						%>
						<div class="form-group">
							<label for="quantity">Quantity </label> <input type="number"
								class="form-control" id="quantity" name="quantity"
								aria-describedby="emailHelp" placeholder="Book Quantity.."
								autocomplete="off" value="${bookManagement.quantity}" required>
						</div>

						<%
						}
						%>

						<!-- ------------------------------------------------------------------------------------------------------------------- -->




						<!-- Button Field-->

						<div class="text-center">
							<button type="submit" class="btn btn-info">
								<i class="fas fa-plus-circle"></i>&nbsp; ADD BOOK
							</button>
						</div>

					</form>



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