
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<% User user= (User) session.getAttribute("loginsuccess");
		if(user==null){
			session.setAttribute("loginMsg", "Please Login to view Profile");
			response.sendRedirect("login.jsp");
		}
	  %>
	
	
<!DOCTYPE html>
<html>
<head>
<title>Profile page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body
	style="background-image: linear-gradient(to right top, #0b0537, #003e79, #0077a8, #00b2b6, #12eba7); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
	
	 <%User user1= (User) session.getAttribute("loginsuccess"); %>
	
	
	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="#"><span class="fa fa-code"></span> InFosys India</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><span class="fa fa-file-code-o" ></span> Home <span class="sr-only">(current)</span></a>
      </li>
      <% 
      if(user1!=null){
    	  %>
      <li class="nav-item active">
        <a class="nav-link" href=#><span class="fa fa-user-plus" ></span> <%=user1.getName() %></a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link " href=#><span class="fa fa-user-circle" ></span> <%=user1.getEmail() %></a>
      </li>
     <%} %>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
		 

	<div class="container">
	  <div class="row  d-flex justify-content-center align-items-center mt-4">
	  	<div class="col-md-6">
	  	<div class="card">
	  	 <div class="card-body">
	  	 
	 
	  	 <%
	  	 	if(user1!=null){
	  	 		%>
	  	 	
	<h3>Name: <%=user1.getName() %></h3>
	<h3>Email:  <%=user1.getEmail()%></h3>
	
	
	  
	  	 	<div class="container text-center">
	  	 		<a href="logoutServlet" class="btn btn-primary  text-white">Logout</a>
	  	 	</div>
	  	 </div>
	  	 
	  	 <% }
	  	 
	  	 %>
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