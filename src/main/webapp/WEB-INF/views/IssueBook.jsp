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

<title>Issue Book</title>
</head>
<body class="img-with-bg">

	<!----------------------------------------- Start Coding------------------------------------------------------------------------------------ -->



	<!-- Designing Login Page-->
	<div class="container">

		<div class="row">
			<div class="col-md-6 offset-md-3 mt-3">
				<div class="my-card">

					<!-- issueBook Logo -->
					<div class="container text-center">
						<img alt="Login-Logo" src="/images/issueReturn.png"
							style="width: 80px">
					</div>

					<h1 class="text-center">ISSUE BOOK</h1>


					<!-- Form Login -->
					<form action="/processIssueBook" method="post">

						<%
						// Retrieve the BindingResult object from the request attributes
						org.springframework.validation.BindingResult result = (org.springframework.validation.BindingResult) request
								.getAttribute("org.springframework.validation.BindingResult.issueBook");
						%>

						<!-- ------------------------------------------------------------------------------------------------------------------- -->

						<%
						// Check if there are errors for the 'userId' field
						if (result == null || result.hasFieldErrors("userId")) {
						%>
						<div class="form-group">
							<label for="userId" class="is-invalid">Enter User ID </label> <input
								type="number" class="form-control" id="userId"name="userManagement.userId"
								value="${issueBook.userManagement.userId}"
								aria-describedby="emailHelp" placeholder="Enter User Id .."
								autocomplete="off" value="${issueBook.userManagement.userId}"required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'userId' field

								if (result != null) {
									java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("userId");
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
							<label for="userId">Enter User ID </label> <input type="text"
								class="form-control" id="userId" name="userManagement.userId"
								value="${issueBook.userManagement.userId}"
								aria-describedby="emailHelp" placeholder="Enter User Id.."
								autocomplete="off"value="${issueBook.userManagement.userId}" required>
						</div>

						<%
						}
						%>


						<!-- ------------------------------------------------------------------------------------------------------------------- -->


						<%
						// Check if there are errors for the 'bookId' field
						if (result == null || result.hasFieldErrors("bookId")) {
						%>
						<div class="form-group">
							<label for="bookId" class="is-invalid">Enter Book ID </label> <input
								type="number" class="form-control" id="bookId" name="bookManagement.bookId"
								value="${issueBook.bookManagement.bookId}"
								aria-describedby="emailHelp" placeholder="Enter Book Id.."
								autocomplete="off" value="${issueBook.bookManagement.bookId}"required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'bookId' field

								if (result != null) {
									java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("bookId");
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
							<label for="bookId">Enter Book ID </label> <input type="number"
								class="form-control" id="bookId" name="bookManagement.bookId"
								value="${issueBook.bookManagement.bookId}"
								aria-describedby="emailHelp" placeholder="Enter Book Id.."
								autocomplete="off" value="${issueBook.bookManagement.bookId}"required>
						</div>

						<%
						}
						%>

						<!-- ------------------------------------------------------------------------------------------------------------------- -->


						<%
						// Check if there are errors for the 'issueDate' field
						if (result == null || result.hasFieldErrors("issueDate")) {
						%>
						<div class="form-group">
							<label for="issueDate" class="is-invalid">Issue Date </label>
							<input type="date" id="issueDate" name="issueDate" class="form-control"
								autocomplete="off" value="${issueBook.issueDate}" required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'issueDate' field

								if (result != null) {
									java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("issueDate");
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
						    <label for="issueDate">Issue Date </label>
							<input type="date" id="issueDate" name="issueDate" class="form-control"
								autocomplete="off" value="${issueBook.issueDate}" required>
						</div>

						<%
						}
						%>

						<!-- ------------------------------------------------------------------------------------------------------------------- -->


						<%
						// Check if there are errors for the 'returnDate' field
						if (result == null || result.hasFieldErrors("dueDate")) {
						%>
						<div class="form-group">
							<label for="dueDate" class="is-invalid">Due Date </label>
							<input type="date" id="returnDate" name="dueDate" class="form-control"
								autocomplete="off" value="${issueBook.dueDate}" required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'issueDate' field

								if (result != null) {
									java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("dueDate");
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
						    <label for="dueDate">Due Date </label>
							<input type="date" id="dueDate" name="dueDate" class="form-control"
								autocomplete="off" value="${issueBook.dueDate}" required>
						</div>

						<%
						}
						%>


						<!-- ------------------------------------------------------------------------------------------------------------------- -->

                       <!-- Hidden input field for Status -->
						<input type="hidden" name="status" value="Return_pending">

						<!-- ------------------------------------------------------------------------------------------------------------------- -->




						<!-- Button Field-->

						<div class="text-center">
							<button type="submit" class="btn btn-info">
								<i class="fas fa-plus-circle"></i>&nbsp; ISSUE BOOK
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