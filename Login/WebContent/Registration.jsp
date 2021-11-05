<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Registration Form</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
	
	<script>

function validateForm() 

{
  var a = document.forms["addReg"]["fname"].value;
  if (a == "") {
    alert("User First-Name cannot be Empty!!");
    return false;
   
  }
  var b = document.forms["addReg"]["lname"].value;
  if (b == "") {
	    alert("User Last-Name cannot be Empty!!");
	    return false;
	  }
  var c = document.forms["addReg"]["email"].value;
  if (c == "") {
	    alert("User E-mail cannot be Empty!!");
	    return false;
	  }
	  
  var d = document.forms["addReg"]["password"].value;
  if (d == "") {
	    alert("User Password cannot be Empty!!");
	    return false;
	  }
  
  var e = document.forms["addReg"]["cpassword"].value;
  if (e == "") {
	    alert("User Confirm Password cannot be Empty!!");
	    return false;
	  }
	  
}

</script>
	
</head>
<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<img src="images/1.jpg" alt="bootstrap 4 login page">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">USER SIGNUP</h4>
							<form action="RegServlet" method="POST" class="my-login-validation" name="addReg" onsubmit="return validateForm()">
								<div class="form-group">
									<label for="name">First Name</label>
									<input id="fname" type="text" class="form-control" name="fname">
									
								</div>
								<div class="form-group">
									<label for="name">Last Name</label>
									<input id="lname" type="text" class="form-control" name="lname">
									
								</div>
								
								<div class="form-group">
									<label for="email">E-Mail Address</label>
									<input id="email" type="email" class="form-control" name="email" >
									
								</div>

								<div class="form-group">
									<label for="password">Password</label>
									<input id="password" type="password" class="form-control" name="password">
									
								</div>
								<div class="form-group">
									<label for="password">Confirm Password</label>
									<input id="cpassword" type="password" class="form-control" name="cpassword">
									
								</div>

								<div class="form-group">
									<div class="custom-checkbox custom-control">
										<input type="checkbox" name="agree" id="agree" class="custom-control-input" required="">
										<label for="agree" class="custom-control-label">I agree to the <a href="#">Terms and Conditions</a></label>
										<div class="invalid-feedback">
											You must agree with our Terms and Conditions
										</div>
									</div>
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										Register
									</button>
								</div>
								<div class="mt-4 text-center">
									Already have an account? <a href="Login.jsp">Login</a>
								</div>
							</form>
						</div>
					</div>
					<div class="footer">
						Copyright &copy; 2021 &mdash; Group-04
					</div>
				</div>
			</div>
		</div>
	</section>

	<!--script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="js/my-login.js"></script-->
</body>
</html>