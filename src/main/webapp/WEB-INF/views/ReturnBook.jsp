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

<title>Return Book</title>
</head>
<body class="img-with-bg">

	<!----------------------------------------- Start Coding------------------------------------------------------------------------------------ -->



	<!-- Designing Return Page-->
	<div class="container">

		<div class="row">
			<div class="col-md-6 offset-md-3 mt-3">
				<div class="my-card">

					<!-- issueBook/returnBook Logo -->
					<div class="container text-center">
						<img alt="Login-Logo" src="/images/issueReturn.png"
							style="width: 80px">
					</div>

					<h1 class="text-center">Return BOOK</h1>


					<!-- Form Login -->
					<form action="/processReturnBook" method="post">

					
						<!-- Hidden input field for bookId -->
						<input type="hidden" name="issueId"
							value="${issueBook.getIssueId()}">

						<!-- ------------------------------------------------------------------------------------------------------------------- -->

						<div class="form-group">
							<label for="issueId" class="is-invalid">IssueBook Id </label> <input
								type="number" class="form-control" id="issueId"
								name="IssueBook.issueId" value="${issueBook.getIssueId()}"
								aria-describedby="emailHelp" autocomplete="off" disabled>
						</div>

						<div class="form-group">
							<label for="returnDate" class="is-invalid">Return Date </label> <input
								type="date" id="returnDate" name="returnDate"
								class="form-control" autocomplete="off" required>
						</div>



						<!-- ------------------------------------------------------------------------------------------------------------------- -->




						<!-- Button Field-->

						<div class="text-center">
							<button type="submit" class="btn btn-info">
								<i class="fas fa-plus-circle"></i>&nbsp; Return BOOK
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