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

<title>Add User</title>
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
						<img alt="AddUser-Logo" src="/images/addUser.png"
							style="width: 80px">
					</div>

					<h1 class="text-center">ADD USER</h1>


					<!-- Form Login -->
					<form action="/processUser" method="post">

						<%
						// Retrieve the BindingResult object from the request attributes
						org.springframework.validation.BindingResult result = (org.springframework.validation.BindingResult) request
								.getAttribute("org.springframework.validation.BindingResult.userManagement");
						%>

						<!-- ------------------------------------------------------------------------------------------------------------------- -->

						<%
						// Check if there are errors for the 'userName' field
						if (result == null || result.hasFieldErrors("userName")) {
						%>
						<div class="form-group">
							<label for="userName" class="is-invalid">User Name </label> <input
								type="text" class="form-control" id="userName" name="userName"
								aria-describedby="emailHelp" placeholder="Your User name.."
								autocomplete="off" value="${userManagement.userName}" required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'email' field

								if (result != null) {
									java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("userName");
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
							<label for="userName">User Name </label> <input type="text"
								class="form-control" id="userName" name="userName"
								aria-describedby="emailHelp" placeholder="Your User Name.."
								autocomplete="off" value="${userManagement.userName}" required>
						</div>

						<%
						}
						%>


						<!-- ------------------------------------------------------------------------------------------------------------------- -->


						<%
						// Check if there are errors for the 'contact' field
						if (result == null || result.hasFieldErrors("contact")) {
						%>
						<div class="form-group">
							<label for="contact" class="is-invalid">Contact </label> <input
								type="text" class="form-control" id="contact" name="contact"
								aria-describedby="emailHelp" placeholder="Contact Number.."
								autocomplete="off" value="${userManagement.contact}" required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'email' field

								if (result != null) {
									java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("contact");
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
							<label for="contact">Contact </label> <input type="text"
								class="form-control" id="contact" name="contact"
								aria-describedby="emailHelp" placeholder="Contact Number.."
								autocomplete="off" value="${userManagement.contact}" required>
						</div>

						<%
						}
						%>

						<!-- ------------------------------------------------------------------------------------------------------------------- -->


						<%
						// Check if there are errors for the 'email' field
						if (result == null || result.hasFieldErrors("email")) {
						%>
						<div class="form-group">
							<label for="email" class="is-invalid">Email ID </label> <input
								type="text" class="form-control" id="email" name="email"
								aria-describedby="emailHelp" placeholder="Email ID.."
								autocomplete="off"  value="${userManagement.email}" required>
							<div id="validationServer03Feedback" class="invalid-feedback">
								<%
								// Retrieve errors for the 'email' field

								if (result != null) {
									java.util.List<org.springframework.validation.FieldError> errors = result.getFieldErrors("email");
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
							<label for="email">Email ID </label> <input type="text"
								class="form-control" id="email" name="email"
								aria-describedby="emailHelp" placeholder="Email id.."
								autocomplete="off" value="${userManagement.contact}" required>
						</div>

						<%
						}
						%>

						<!-- ------------------------------------------------------------------------------------------------------------------- -->


						<!-- Button Field-->

						<div class="text-center">
							<button type="submit" class="btn btn-info">
								<i class="fas fa-plus-circle"></i>&nbsp; ADD USER
							</button>
							<button type="reset" class="btn btn-warning">
								<i class="fas fa-sync"></i> &nbsp; RESET
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