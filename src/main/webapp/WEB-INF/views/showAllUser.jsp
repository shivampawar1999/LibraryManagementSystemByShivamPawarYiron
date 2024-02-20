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




<title>List OF User</title>
</head>
<body class="img-with-bg">

	<!----------------------------------------- Start Coding------------------------------------------------------------------------------------ -->



	<!-- Designing Show ALL User Page-->
	<div class="container" style="background-color: white;">

		<div class="row">




			<!-- ManageUser Logo -->
			<div class="container text-center">
				<img alt="Login-Logo" src="/images/UserManage.png"
					style="width: 80px">
			</div>

			<div class="container text-center">
				<h1 class="text-center">Manage User</h1>
			</div>


			<div class="container">

				<!-- Add new book button -->
				<a href="/dashboard" class="btn btn-danger"> <i
					class="fas fa-tachometer-alt"></i> &nbsp;Dashboard
				</a>
				<!-- Add new User button -->
				<a href="/addUser" class="btn btn-success"> <i
					class="fas fa-plus-circle"></i>&nbsp; Add New User
				</a>
			</div>




			<table class="table table-striped mt-3" style="width: 100%;">
				<thead>
					<tr>
						<th>User ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Contact</th>
					</tr>
				</thead>
				<tbody>
					<%
					Object attribute = request.getAttribute("allUser");
					if (attribute instanceof List) {
						List<UserManagement> allUser = (List<UserManagement>) attribute;
						for (UserManagement user : allUser) {
					%>
					<tr>
						<td><%=user.getUserId()%></td>
						<td><%=user.getUserName()%></td>
						<td><%=user.getEmail()%></td>
						<td><%=user.getContact()%></td>

						<td>
							<!-- Edit button --> <a href="editUser/<%=user.getUserId()%>"
							class="btn btn-primary btn-sm"><i class="fas fa-pen"></i>&nbsp;
								Edit</a> <!-- Delete button --> <a
							href="deleteUser/<%=user.getUserId()%>"
							class="btn btn-danger btn-sm mt-1"><i class="fas fa-trash"></i>&nbsp;
								Delete</a>
						</td>
					</tr>
					<%
					}
					} else {
					%>
					<tr>
						<td colspan="8">No User found</td>
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