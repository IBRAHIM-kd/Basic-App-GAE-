<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Basic User Sign up and search application</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/fontawesome.css.css">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/clean.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Satisfy' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>   


</script>

<script type="text/javascript">
   <!--
      // Form validation code will come here.
      function validate()
      {
      
         if( document.myForm.ename.value == "" )
         {
            alert( "Please provide your name!" );
            document.myForm.ename.focus() ;
            return false;
         }

         if( document.myForm.surname.value == "" )
         {
            alert( "Please provide your surname!" );
            document.myForm.surname.focus() ;
            return false;
         }

         if( document.myForm.age.value == "" ||
         isNaN( document.myForm.age.value ) ||
         document.myForm.age.value.length != 2 )
         {
            alert( "Please provide a Age in the format ##." );
            document.myForm.age.focus() ;
            return false;
         }
         
         if( document.myForm.email.value == "" )
         {
            alert( "Please provide your email!" );
            document.myForm.email.focus() ;
            return false;
         }
         
         if( document.myForm.mobile.value == "" ||
         isNaN( document.myForm.mobile.value ) ||
         document.myForm.mobile.value.length != 10 )
         {
            alert( "Please provide a Mobile number in the format ##########." );
            document.myForm.mobile.focus() ;
            return false;
         }
         
      }
   //-->
</script>

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

            <center><h1>Basic Registration form <small>(Fill up the form to get register)</small></h1></center>
		 <hr/>
		 <br/>
 <form class="form-horizontal" action="register" method="post" name="myForm" onsubmit="return(validate());">
  <div class="form-group">
    <label class="control-label col-sm-2" for="name">Name:</label>
    <div class="col-sm-3">
      <input type="text"  class="form-control" name="ename" placeholder="Enter Name" />
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="Surname">Surname:</label>
    <div class="col-sm-3">
      <input type="text"  class="form-control" name="surname" placeholder="Enter Surname" />
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="name">Age:</label>
    <div class="col-sm-3">
      <input type="text"  class="form-control" name="age" placeholder="Enter Age" />
    </div>
  </div>
 
 <div class="form-group">
    <label class="control-label col-sm-2" for="name">Email:</label>
    <div class="col-sm-3">
      <input type="text"  class="form-control" name="email" placeholder="Enter Email" />
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="name">Mobile:</label>
    <div class="col-sm-3">
      <input type="text"  class="form-control" name="mobile" placeholder="Enter Mobile" />
    </div>
  </div>
 
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form> 


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
