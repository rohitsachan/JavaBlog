<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Control Panel</title>
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




<!-- <h2><a href="submitQA.jsp">Submit a Question</a> </h2> -->



<div class="container dynamicTile">
<h1>Welcome <i>${username} </i></h1>
<h2></h2>
<div class="row">

  <a href="submitQA.jsp">
  <div class="col-sm-4 col-xs-8">
		<div id="tile10" class="tile">
    	 
           <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <h3 class="tilecaption"><i class="fa fa-child fa-4x"></i></h3>
            </div>
            <div class="item">
              <h3 class="tilecaption">Submit a Question</h3>
            </div>
            <div class="item">
              <h3 class="tilecaption">Text, Icons, Images</h3>
            </div>
            <div class="item">
              <h3 class="tilecaption">Combine them and create your metro style</h3>
            </div>
          
          </div>
        </div>
         
		</div>
	</div></a>
	
  
  <a href="#">
	<div class="col-sm-2 col-xs-4">
		<div id="tile3" class="tile">
    	 
        <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
               <img src="http://handsontek.net/demoimages/tiles/weather2.png" class="img-responsive"/>
            </div>
            <div class="item">
               <img src="http://handsontek.net/demoimages/tiles/weather.png" class="img-responsive"/>
            </div>
            </div>
         </div>
		</div>
	</div>
	</a>
	<a href="#">
	<div class="col-sm-2 col-xs-4">
		<div id="tile4" class="tile">
    	 
        <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="http://handsontek.net/demoimages/tiles/facebook3.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="http://handsontek.net/demoimages/tiles/facebook2.png" class="img-responsive"/>
            </div>
          </div>
        </div>
         
		</div>
	</div></a>
	
	<a href="#">
    <div class="col-sm-2 col-xs-4">
		<div id="tile5" class="tile">
    	 
         <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="http://handsontek.net/demoimages/tiles/neews.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="http://handsontek.net/demoimages/tiles/neews2.png" class="img-responsive"/>
            </div>
          </div>
        </div>
         
		</div>
	</div></a>
	
	<a href="#">
	<div class="col-sm-2 col-xs-4">
		<div id="tile6" class="tile">
    	 
         <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="http://handsontek.net/demoimages/tiles/skype.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="http://handsontek.net/demoimages/tiles/skype2.png" class="img-responsive"/>
            </div>
          </div>
        </div>
         
		</div>
	</div></a>
</div>

<a href="#">
<div class="row">

<a href="#">
	<div class="col-sm-4 col-xs-8">
		<div id="tile7" class="tile">
    	 
        <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="http://handsontek.net/demoimages/tiles/gallery.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="http://handsontek.net/demoimages/tiles/gallery2.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="http://handsontek.net/demoimages/tiles/gallery3.png" class="img-responsive"/>
            </div>
          </div>
        </div>
         
		</div>
	</div></a>
	
	
<a href="#">
	<div class="col-sm-2 col-xs-4">
		<div id="tile8" class="tile">
    	 
         <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
               <img src="http://handsontek.net/demoimages/tiles/music.png" class="img-responsive"/>
            </div>
            <div class="item">
               <img src="http://handsontek.net/demoimages/tiles/music2.png" class="img-responsive"/>
            </div>
            </div>
         </div>
         
		</div>
	</div>
	</a>
	
	<a href="#">
	<div class="col-sm-2 col-xs-4">
		<div id="tile9" class="tile">
    	 
          <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="http://handsontek.net/demoimages/tiles/calendar.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="http://handsontek.net/demoimages/tiles/calendar2.png" class="img-responsive"/>
            </div>
          </div>
        </div>
         
		</div>
	</div></a>
	
	<a href="#">
	<div class="col-sm-2 col-xs-4">
    	<div id="tile1" class="tile">
        
         <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
               <img src="http://handsontek.net/demoimages/tiles/twitter1.png" class="img-responsive"/>
            </div>
            <div class="item">
               <img src="http://handsontek.net/demoimages/tiles/twitter2.png" class="img-responsive"/>
            </div>
          </div>
        </div>
         
    	</div>
	</div></a>
	
	<a href="#">
	<div class="col-sm-2 col-xs-4">
		<div id="tile2" class="tile">
    	 
         <div class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="http://handsontek.net/demoimages/tiles/hot.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="http://handsontek.net/demoimages/tiles/hot2.png" class="img-responsive"/>
            </div>
            <div class="item">
              <img src="http://handsontek.net/demoimages/tiles/hot3.png" class="img-responsive"/>
            </div>
          </div>
        </div>
         
		</div>
	</div></a>
	
	
	
  </div>
</div>







	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="tiles.js"></script>
</body>
</html>