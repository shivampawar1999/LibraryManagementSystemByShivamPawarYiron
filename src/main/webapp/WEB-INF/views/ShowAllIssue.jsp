<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.Librarysystem.model.UserManagement"%>
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




<title>List OF Issue</title>
</head>
<body class="img-with-bg">

	<!----------------------------------------- Start Coding------------------------------------------------------------------------------------ -->



	<!-- Designing Show ALL User Page-->
	<div style="background-color: white;">

		<div class="row">




			<!-- ManageUser Logo -->
			<div class="container text-center">
				<img alt="Login-Logo" src="/images/all_records.png"
					style="width: 80px">
			</div>

			<div class="container text-center">
				<h1 class="text-center">Returned Book Details</h1>
			</div>


			<div class="container">

				<!-- DashBoard -->
				<a href="/dashboard" class="btn btn-danger"> <i
					class="fas fa-tachometer-alt"></i> &nbsp;Dashboard
				</a>
			</div>



		</div>




		<table class="table table-striped mt-3" style="width: 100%;">
			<thead>
				<tr>
					<th>Return ID</th>
					<th>Return Date</th>
					<th>Overdue</th>
					<th>Issue Id</th>
					<th>Issue Date</th>
					<th>Due Date</th>
					<th>Status</th>
					<th>User Id</th>
					<th>User Name</th>
					<th>Email</th>
					<th>Contact</th>
					<th>Book Id</th>
					<th>Book Title</th>
					<th>Author</th>
					<th>Quantity</th>

				</tr>
			</thead>
			<tbody>

				<%
				for (Object[] returnBook : (List<Object[]>) request.getAttribute("returnBook")) {
				%>
				<tr>
					<td><%=returnBook[0]%></td>
					<td><%=returnBook[1]%></td>
					<td><%=returnBook[2]%></td>
					<td><%=returnBook[3]%></td>
					<td><%=returnBook[4]%></td>
					<td><%=returnBook[5]%></td>
					<td><%=returnBook[6]%></td>
					<td><%=returnBook[7]%></td>
					<td><%=returnBook[8]%></td>
					<td><%=returnBook[9]%></td>
					<td><%=returnBook[10]%></td>
					<td><%=returnBook[11]%></td>
					<td><%=returnBook[12]%></td>
					<td><%=returnBook[13]%></td>
					<td><%=returnBook[14]%></td>

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