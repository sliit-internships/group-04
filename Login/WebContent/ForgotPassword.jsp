<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">    

<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Forgot Password</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/custom.css">
        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        
        
        <script>

function validateForm() 

{
	var a = document.forms["addPay"]["uemail"].value;
  if (a == "") {
    alert("User E-mail cannot be Empty!!");
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
                            <h3  style="font-family:courier;"><strong>FORGOT PASSWORD</strong></h3>
                            <!--h5>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis quam numquam</h5-->
                        </div>
                        <div class="login-body">
                            <form action="LoginForm" method="post" class="login-form" name="addPay" onsubmit="return validateForm()">
                            
                                <div class="form-group ">
                                    <div class="pos-r">                                        
                                        <input   id="uemail" type="email" name="uemail" placeholder="Enter E-mail" class="form-username form-control">
                                        <i class="fa fa-user"></i>
                                    </div><br>
                                    <div class="form-text text-muted">
										By clicking "Reset Password" we will send a password reset link
									</div>
                                </div>
                                <!--  >div class="form-group">
                                    <div class="pos-r">                                    
                                        <input id="psw" type="password" name="psw" placeholder="Enter Password" class="form-password form-control" >
                                        <i class="fa fa-lock"></i>                                        
                                    </div>
                                </div-->
                                
                                 <div class="form-group">  
   							                           
 									<a href="Login.jsp">Back</a> <br>
 									
 									
     						 </div> 
   							 
                                <div class="form-group">     
                                    <button type="submit" class="btn btn-primary form-control"><strong>Reset Password</strong></button>  
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
