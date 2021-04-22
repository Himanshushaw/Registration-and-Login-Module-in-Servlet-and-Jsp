<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: linear-gradient(to right top, #0b0537, #003e79, #0077a8, #00b2b6, #12eba7); background-repeat:no-repeat; background-attachment:fixed; background-size:cover;">
<%@include file="Navbar.jsp"%>
	<div class="conatiner">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-3 ">
					<div class="card-header text-center c-head text-white">
						<span class="	fa fa-user-circle-o fa-2x"></span>
						<h4>Login page</h4>
						<% 
						String logoutMsg=(String)session.getAttribute("logoutMsg");
						if(logoutMsg!=null){
							%>
							
							
							<div class="alert alert-success" role="alert"><%= logoutMsg%>
  							
						</div>
							
							
							
							<% 
							session.removeAttribute("logoutMsg");
						}
						
						%>
					</div>
					<div class="card-body">
						<form action="loginServlet" method="post">
							<div class="form-group">
								<label for="email">Enter Email address</label>
								 <input
									type="email" class="form-control" id="email"
									aria-describedby="emailHelp" name="email">
							</div>
							<div class="form-group">
								<label for="password">Enter Password</label> <input
									type="password" class="form-control" name="password" id="password">
							</div>
							<button type="submit" class="btn btn-primary btn-block badge-pill">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>







	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>