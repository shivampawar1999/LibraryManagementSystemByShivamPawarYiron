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

<title>Search Book</title>
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
						<img alt="AddUser-Logo" src="/images/searching_book.png"
							style="width: 80px">
					</div>

					<h1 class="text-center">Search Book</h1>


					<!-- Form Login -->
					<form action="/searchBookprocess" method="post">

						<!-- ------------------------------------------------------------------------------------------------------------------- -->

						<div class="row">
							<div class="col-md-4 offset-2">
								<label class="text-center" for="cars"><i
									class="fas fa-search">&nbsp;</i>Search Book By </label>
							</div>
							<div class="col-md-4">

								<select name="booksearch" id="booksearch">
									<option value="bookTitle">bookTitle</option>
									<option value="author">author</option>
									<option value="ISBNnumber">ISBNnumber</option>
								</select>

							</div>
						</div>

						<!-- Input Fields -->
						<div class="form-group">
							<label for="value">Enter here</label> <input
								type="text" class="form-control" id="value" name="value">
						</div>





						<!-- Button Field-->

						<div class="text-center mt-3">
							<button type="submit" class="btn btn-info">
								<i class="fas fa-search"></i>&nbsp; Search Book
							</button>

						</div>

					</form>


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