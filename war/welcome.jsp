<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Welcome Page</title>
    <link rel="shortcut icon" type="image/png" href="{%  static 'Child.png' %}"/>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/fontawesome.css.css">
    <link href="css/clean.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Satisfy' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-add-clear.js"></script>
    <script src="js/bootstrap-add-clear.min.js"></script>
    <script src="js/main.js"></script>    
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">

        <!-- Header -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#topNavBar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="home.jsp">USER APPS</a>
        </div>

        <!-- Items -->
        <div class="collapse navbar-collapse" id="topNavBar">
            <ul class="nav navbar-nav">
                <li>
                    <a href="showusers.jsp">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp; SHOWUSERS
                    </a>
                </li>
				 
               
				</ul>
                        <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="Upload.jsp">
                        <span class="glyphicon glyphicon-import" aria-hidden="true"></span>&nbsp; UPLOAD CSV FILE
                    </a>
                </li>
                
                <form class="navbar-form navbar-right" role="search" method="get" action="search">
                <div class="form-group">
                    <input type="text" name="focus" required class="search-box" placeholder="Enter search" />
					<button class="close-icon" type="reset"></button>
					</div>
                <button type="submit" class="btn btn-default">Search</button>
            </form>
          </ul>
        </div> 
        </div>
</nav>
<div align="center"><div class="container">
  <div class="row-fluid">
    <div class="span12">
    <h1>Welcome you Registration is Successfully <small> <a href="showusers.jsp">(click here to view users)</small></a></h1>
          <br/>


          
</div>
</div>
<!-- .container --> 

<script src="assets/js/jquery-1.7.1.min.js"></script> 

<script src="assets/js/jquery.validate.js"></script> 

<script src="js/script.js"></script> 
<script>
		addEventListener('load', prettyPrint, false);
		$(document).ready(function(){
		$('pre').addClass('prettyprint linenums');
			});
		</script> 
</body>
</html>
