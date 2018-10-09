<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Showusers</title>
    <link rel="shortcut icon" type="image/png" href="{%  static 'Child.png' %}"/>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/fontawesome.css.css">
    <link href="css/clean.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Satisfy' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>   
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
    <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="register.jsp">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp; Add Name 
                    </a>
                </li>
    </div>
  </div>
  
        <table class="table table-bordered">
<tr>
      
                <th>Name</th>

                <th>Surname</th>

                <th>Age</th>
				
				<th>Email</th>
				
				<th>Date</th>
				
				<th>Mobile</th>

            </tr>
           </thead>
          
             <tr>
                <c:forEach var="user" items="${Name}">
                    
                    <td>${fn:escapeXml(user.name)}</td>
                    <td>${fn:escapeXml(user.surname)}</td>
                    <td>${fn:escapeXml(user.age)}</td>
                    <td>${fn:escapeXml(user.email)}</td>
                    <td>${fn:escapeXml(user.date)}</td>
                    <td>${fn:escapeXml(user.mobile)}</td>
                     </tr>
            </c:forEach>
        
  
</table>
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
