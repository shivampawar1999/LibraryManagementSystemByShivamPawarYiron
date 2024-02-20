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

<title>DASHBOARD</title>
</head>
<body class="img-with-bg">

	<!----------------------------------------- Start Coding------------------------------------------------------------------------------------ -->

 

  <!-- Navigation Bar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-info">
    <a class="navbar-brand" href="#">Library Management System</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
   
  </nav>

  <!-- Main Content -->
  <div class="container mt-4">
    <div class="row">
      <div class="col-md-3">
        <!-- Sidebar -->
        <div class="list-group">
          <a href="#" class="list-group-item list-group-item-action active">Dashboard</a>
          <a href="/allBooks" class="list-group-item list-group-item-action">Book Management</a>
          <a href="/allUser" class="list-group-item list-group-item-action">User Management</a>
          <a href="/allIssue" class="list-group-item list-group-item-action">Borrowed Books</a>
          <a href="/allReturn" class="list-group-item list-group-item-action">Returned Books</a>
          <a href="/searchBook" class="list-group-item list-group-item-action">Search Book</a>
        </div>
      </div>
      <div class="col-md-9 " style="color: white" >
        <!-- Content Area -->
        <h2> <strong>Welcome to Library Management System Dashboard</strong></h2>
        <p><strong>This is where you can manage your library efficiently.</strong></p>
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
		


</body>
</html>