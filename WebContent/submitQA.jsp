<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Submit a Question</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="mycss.css" rel="stylesheet">
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

<div class="container">
<div class="row ">
	
<h1>Hello <i>${username} Guest</i></h1>
<h2></h2>

<form action="submit.do" method="post">
		
  <div class="form-group">
    <label for="ques">Question : </label>
    <input type="text" class="form-control" name="ques" id="ques"></input>
  </div>
  
  <div class="form-group">
    <label for="exampleSelect1">Answer Type :</label>
    <select name="QType" class="form-control" id="exampleSelect1">Please Select
      
      <option value="longAns">Long Answer</option>
      <option value="shortAns">Short Answer</option>
      <option value="singlechoice">Single Choice</option>
      <option value="multichoice">Multiple Choice</option>
    </select>
  </div>
  
  <div class="form-group">
    <label for="answer">Answer : </label>
    <textarea name="answer" class="form-control" id="answer" rows="5"></textarea>
  </div>
		
  <div class="form-group">
    <label for="source">Do you want to provide a Source(URL etc.) : </label>
    <input type="text" class="form-control" name="source" id="source"></input>
  </div>
  
  
  <div class="form-group">
    <label for="exampleSelect2">Tags</label>
    <select name="tags" multiple class="form-control" id="exampleSelect2">
      <option>Spring</option>
      <option>Java</option>
      <option>JDBC</option>
      <option>Servlet</option>
      <option>Hibernate</option>
    </select>
  </div>
  
   <div class="form-group">
    <label for="topic">Answer Type</label>
    <select name="QType" class="form-control" id="topic">
      <option value="Spring">Spring</option>
      <option value="java">java</option>
      <option value="hibernate">hibernate</option>
      <option value="JDBC">JDBC</option>
    </select>
  </div>

	<!-- 	  <div class="form-group">
		    <label for="fileupload">File Upload</label>
		    <input type="file" class="form-control-file" id="fileupload" aria-describedby="fileHelp">
		    <small id="fileHelp" class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
		  </div>
		  <fieldset class="form-group">
		    <legend>Radio buttons</legend>
		    <div class="form-check">
		      <label class="form-check-label">
		        <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="longAns" checked>
		        Option one is this and that&mdash;be sure to include why it's great
		      </label>
		    </div>
		    <div class="form-check">
		    <label class="form-check-label">
		        <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="shortAns">
		        Option two can be something else and selecting it will deselect option one
		      </label>
		    </div>
		    <div class="form-check disabled">
		    <label class="form-check-label">
		        <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios3" value="option3" disabled>
		        Option three is disabled
		      </label>
		    </div>
		  </fieldset> -->
		  
		  
		  
		  <div class="form-check">
		    <label class="form-check-label">
		      <input type="checkbox" class="form-check-input" required="true">
		      Check me out (Terms and conditions)
		    </label>
		  </div>
		  <button type="submit" class="btn btn-primary">Submit</button>
		</form>


  
  </div>
</div>

<br/><br/><br/><br/>




	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="tiles.js"></script>
</body>
</html>