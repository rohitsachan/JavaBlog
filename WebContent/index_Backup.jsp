<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Spring 3.0</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="mycss.css" rel="stylesheet">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<style type="text/css">
	
</style>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" >
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html"><img height="35px" src="https://spring.io/img/spring-by-pivotal.png" /></a>
    </div>
    <ul id="myTopnav" class="nav navbar-nav topnav">
      <li class="active"><a href="home">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Q&amp;A
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">IOC</a></li>
          <li><a href="#">AOP</a></li>
          <li><a href="#">Security</a></li>
        </ul>
      </li>
      
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Programs
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">IOC</a></li>
          <li><a href="#">AOP</a></li>
          <li><a href="#">Security</a></li>
        </ul>
      </li>
      <li><a href="blog.html">Blog</a></li>
      <li><a href="forum.html">Forum</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>

    </ul>

  </div>
</nav>

<div id="space" class="container-fluid">
<!-- ---------------------------------------------------- -->
<%! int i = 1;String Ques="Ques"; %> 	<!-- not used -->

<c:forEach items="${items}" var="item">
	<div id="${item.qid}"><h4><b>${item.qno}  :  ${item.que}</b></h4></div>
	<div class="ans"><h4>Ans : </h4>${item.ans}<br/>
		<button id="source" type="button" class="btn btn-warning btn-link"><a href="${item.source }" target="blank">Source</a></button>
	</div>
	<% i=i+1; %> <!-- not used -->

</c:forEach>

<br><br><br><br><br>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="jquery.popdown.js"></script>
<script src="myjs.js"></script>

</body>
</html>