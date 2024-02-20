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

<title>Admin_Registration_Form</title>
</head>
<body class="img-with-bg">

	<!----------------------------------------- Start Coding------------------------------------------------------------------------------------ -->



	<div class="container">

		<div class="row">
			<div class="col-md-6 offset-md-3 mt-3">
				<div class="my-card">


					<!-- register Image Logo -->
					<div class="container text-center">
						<img alt="Register-Logo" src="/images/Register_Logo_Img.png"
							style="width: 80px">
					</div>

					<h1 class="text-center">Register Here !!</h1>

					<!-- Form Admin Register -->
					<form action="/processAdminRegister" method="post">




						<%
						// Retrieve the BindingResult object from the request attributes
						org.springframework.validation.BindingResult result = (org.springframework.validation.BindingResult) request
								.getAttribute("org.springframework.validation.BindingResult.adminRegistrationForm");

						// Check if there are errors for the 'firstName' field
						if (result.hasFieldErrors("firstName")) {
						%>
						<div class="form-group">
							<label for="firstName" class="is-invalid">First Name </label> <input
								type="text" class="form-control" id="firstName" name="firstName"
								aria-describedby="emailHelp" placeholder="Your First Name..."
								autocomplete="off" value="${adminRegistrationForm.firstName}"
								required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'firstName' field
								java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("firstName");
								for (org.springframework.validation.FieldError error : errors) {
								%>
								<p><%=error.getDefaultMessage()%></p>
								<%
								}
								%>
							</div>
						</div>
						<%
						} else {
						%>
						<div class="form-group">
							<label for="firstName">First Name </label> <input type="text"
								class="form-control" id="firstName" name="firstName"
								aria-describedby="emailHelp" placeholder="Your First Name..."
								autocomplete="off" value="${adminRegistrationForm.firstName}"
								required>
						</div>
						<%
						}
						%>
						<!-- ------------------------------------------------------------------------------------------------------------------- -->
						<%
						// Check if there are errors for the 'LastName' field
						if (result.hasFieldErrors("lastName")) {
						%>
						<div class="form-group">
							<label for="lastName" class="is-invalid">Last Name </label> <input
								type="text" class="form-control" id="lastName" name="lastName"
								aria-describedby="emailHelp" placeholder="Your Last Name..."
								value="${adminRegistrationForm.lastName}" autocomplete="off"
								required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'lastName' field
								java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("lastName");
								for (org.springframework.validation.FieldError error : errors) {
								%>
								<p><%=error.getDefaultMessage()%></p>
								<%
								}
								%>
							</div>
						</div>
						<%
						} else {
						%>
						<div class="form-group">
							<label for="lastName">Last Name </label> <input type="text"
								class="form-control" id="lastName" name="lastName"
								aria-describedby="emailHelp" placeholder="Your Last Name..."
								value="${adminRegistrationForm.lastName}" autocomplete="off"
								required>
						</div>
						<%
						}
						%>

						<!-- ------------------------------------------------------------------------------------------------------------------- -->

						<%
						// Check if there are errors for the 'email' field
						if (result.hasFieldErrors("email")) {
						%>
						<div class="form-group">
							<label for="email" class="is-invalid">Email ID </label> <input
								type="email" class="form-control" id="email" name="email"
								aria-describedby="emailHelp" placeholder="Your Email Address.."
								autocomplete="off" value="${adminRegistrationForm.email}"
								required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'email' field
								java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("email");
								for (org.springframework.validation.FieldError error : errors) {
								%>
								<p><%=error.getDefaultMessage()%></p>
								<%
								}
								%>
							</div>
						</div>
						<%
						} else {
						%>
						<div class="form-group">
							<label for="email">Email ID </label> <input type="email"
								class="form-control" id="email" name="email"
								aria-describedby="emailHelp" placeholder="Your Email Address.."
								autocomplete="off" value="${adminRegistrationForm.email}"
								required>
						</div>

						<%
						}
						%>


						<!-- ------------------------------------------------------------------------------------------------------------------- -->


						<%
						// Check if there are errors for the 'password' field
						if (result.hasFieldErrors("password")) {
						%>
						<div class="form-group">
							<label for="password" class="is-invalid">Password </label> <input
								type="password" class="form-control" id="password"
								name="password" aria-describedby="emailHelp"
								placeholder="Your Password.." autocomplete="off"
								value="${adminRegistrationForm.password}" required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'password' field
								java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("password");
								for (org.springframework.validation.FieldError error : errors) {
								%>
								<p><%=error.getDefaultMessage()%></p>
								<%
								}
								%>
							</div>
						</div>
						<%
						} else {
						%>
						<div class="form-group">
							<label for="password">Password </label> <input type="password"
								class="form-control" id="password" name="password"
								aria-describedby="emailHelp" placeholder="Your Password.."
								autocomplete="off" value="${adminRegistrationForm.password}"
								required>
						</div>

						<%
						}
						%>


						<!-- ------------------------------------------------------------------------------------------------------------------- -->


						<%
						// Check if there are errors for the 'contact' field
						if (result.hasFieldErrors("contact")) {
						%>
						<div class="form-group">
							<label for="contact" class="is-invalid">Contact Number </label> <input
								type="number" class="form-control" id="contact" name="contact"
								aria-describedby="emailHelp"
								placeholder="Your Contact Number..." autocomplete="off"
								value="${adminRegistrationForm.contact}" required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'contact' field
								java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("contact");
								for (org.springframework.validation.FieldError error : errors) {
								%>
								<p><%=error.getDefaultMessage()%></p>
								<%
								}
								%>
							</div>
						</div>
						<%
						} else {
						%>
						<div class="form-group">
							<label for="contact">Contact Number </label> <input type="number"
								class="form-control" id="contact" name="contact"
								aria-describedby="emailHelp"
								placeholder="Your Contact Number..." autocomplete="off"
								value="${adminRegistrationForm.contact}" required>
						</div>

						<%
						}
						%>


						<!-- ------------------------------------------------------------------------------------------------------------------- -->



						<!-- Button Field-->

						<div class="text-center">
							<button type="submit" class="btn btn-info">
								<i class="fas fa-plus-circle"></i>&nbsp; REGISTER
							</button>
							<button type="reset" class="btn btn-warning">
								<i class="fas fa-sync"></i> &nbsp;RESET
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
	<script src="js/script.js"></script>





</body>
</html>