<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="#"><span class="fa fa-code" ></span> InFosys India</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><span class="	fa fa-file-code-o" ></span> Home <span class="sr-only">(current)</span></a>
      </li>
      
       <%User user1= (User) session.getAttribute("loginsuccess"); %>
       
       <%
       
       if(user1!=null){
    	   %>
         <li class="nav-item active">
        <a class="nav-link" href=#><span class="fa fa-user-plus" ></span> <%=user1.getName()%></a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link " href=#><span class="fa fa-user-circle" ></span> <%=user1.getEmail() %></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link " href="home.jsp"><span class="fa  fa-info-circle" ></span> Profile</a>
      </li>
        <%
        }else{
       %>
      
      <li class="nav-item active">
        <a class="nav-link" href="register.jsp"><span class="fa fa-user-plus" ></span> Register</a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link " href="login.jsp"><span class="fa fa-user-circle"></span> Login</a>
      </li>
      
      <%	}
       		
       		%>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>


</body>
</html>