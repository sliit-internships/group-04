<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">    

<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Reset Password Form</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/custom.css">
        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">

<script>

function validateForm() 

{
	var a = document.forms["addPay"]["psw"].value;
  if (a == "") {
    alert("Current Password cannot be Empty!!");
    return false;
   }
   
	var b = document.forms["addPay"]["npsw"].value;
  if (b == "") {
	    alert("New Password cannot be Empty!!");
	    return false;
	  }
	  
	var c = document.forms["addPay"]["cpsw"].value;
  if (c == "") {
	    alert("Confirm New Password cannot be Empty!!");
	    return false;
	  }
   
}

</script>

    </head>

    <body>
	
        <div class="container ">
            <div class="row">            
                <div class="login-container col-lg-4 col-md-6 col-sm-8 col-xs-12">
                     <div class="login-title text-center">
                           
							<h1 style="font-family:courier;"><span><strong><b>Internship Record Management System</span></strong></b></h1>
                     </div>
                    <div class="login-content">
                        <div class="login-header ">
                            <h3  style="font-family:courier;"><strong>RESET PASSWORD</strong></h3>
                            <!--h5>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis quam numquam</h5-->
                        </div>
                        <div class="login-body">
                            <form action="LoginForm" method="post" class="login-form" name="addPay" onsubmit="return validateForm()">
                            
                                <div class="form-group ">
                                    <div class="pos-r">                                        
                                        <input   id="psw" type="password" name="psw" placeholder="Current Password" class="form-password form-control">
                                        <i class="fa fa-lock"></i>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="pos-r">                                    
                                        <input id="npsw" type="password" name="npsw" placeholder="New Password" class="form-password form-control" >
                                        <i class="fa fa-lock"></i>                                        
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <div class="pos-r">                                    
                                        <input id="cpsw" type="password" name="cpsw" placeholder="Confirm New Password" class="form-password form-control" >
                                        <i class="fa fa-lock"></i>                                        
                                    </div>
                                </div>
                                 <div class="form-group">  
   							                           
 									<a href="Login.jsp">Back</a> <br>
 									
 									
     						 </div> 
   							 
   							 
                                <div class="form-group">     
                                    <button type="submit" class="btn btn-primary form-control"><strong>Submit</strong></button>  
                                </div>   
                                                                              
                            </form>
                        </div> <!-- end  login-body -->                     
                    </div><!-- end  login-content -->  
                    
                </div>  <!-- end  login-container -->      

            </div>
        </div><!-- end container -->

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </body>

</html>
