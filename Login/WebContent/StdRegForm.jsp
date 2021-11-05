<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Student Registration Form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	
	<script>

function validateForm() 

{
  var a = document.forms["addStd"]["cyear"].value;
  if (a == "") {
    alert("Student current year cannot be Empty!!");
    return false;
   
  }
  var b = document.forms["addStd"]["calendar"].value;
  if (b == "") {
	    alert("Planning date cannot be Empty!!");
	    return false;
	  }
  var c = document.forms["addStd"]["period"].value;
  if (c == "") {
	    alert("Planning year cannot be Empty!!");
	    return false;
	  }
	  
  var d = document.forms["addStd"]["specialization"].value;
  if (d == "") {
	    alert("Specialization cannot be Empty!!");
	    return false;
	  }
	  
  var e = document.forms["addStd"]["stdname"].value;
  if (e == "") {
	    alert("Student name cannot be Empty!!");
	    return false;
	  }
	  
  var f = document.forms["addStd"]["stdmobile"].value;
  if (f == "") {
	    alert("Student mobile no cannot be Empty!!");
	    return false;
	  }
	  
  var g = document.forms["addStd"]["stdphone"].value;
  if (g == "") {
	    alert("Student home phone no cannot be Empty!!");
	    return false;
	  }
	  
  var h = document.forms["addStd"]["stdemail"].value;
  if (h == "") {
	    alert("Student email cannot be Empty!!");
	    return false;
	  }
	  
  var i = document.forms["addStd"]["startdate"].value;
  if (i == "") {
	    alert("Planning date cannot be Empty!!");
	    return false;
	  }
	  
  var j = document.forms["addStd"]["supemail"].value;
  if (j == "") {
	    alert("Supervisor email cannot be Empty!!");
	    return false;
	  }
}

</script>
	
	
</head>


<body>

    <div class="container">
        <h2>Student Sign-Up</h2>
        <p>Please fill in this form to create an account!</p>
        <form action="StdServlet" method="POST" class="my-login-validation" name="addStd" onsubmit="return validateForm()">
            <h4>Step 2</h4>

            <div class="form-group">
              <label for="year">Current Year of Registration at SLIIT</label>
              <input type="number" class="form-control" id="cyear" name="cyear" aria-describedby="year" placeholder="">
              <small id="emailHelp" class="form-text text-muted">You must be a 3rd year or 4th year student to enroll in the internship program.</small>
            </div>

            <div class="form-group">
                <label for="calendar">Which calendar year have you completed or planning to complete your second year?</label>
                <input type="date" class="form-control" id="calendar" name="calendar" aria-describedby="calendar" placeholder="">
            </div>
            
            <div class="form-group">
                <label for="period">Which period of the year are you planning to complete or completed your second year?</label>
                <input type="text" class="form-control" id="period" name="period" aria-describedby="period" placeholder="">
            </div>

            <div class="form-group">
                <label for="exampleFormControlSelect1">Specialization</label>
                <select class="form-control" id="specialization" name="specialization">
                    <option></option>
                    <option>IT</option>
                    <option>SE</option>
                    <option>DS</option>
                    <option>CSNE</option>
                    <option>CS</option>
                    <option>ISE</option>
                </select>
            </div>

            <div class="form-group">
                <label for="period">Student Name with Initials</label>
                <input type="text" class="form-control" id="stdname" name="stdname" aria-describedby="name" placeholder="e.g. Rathnayaka M.H.K.R.">
            </div>
              
            <div class="form-group">
                <label for="period">Student Mobile Phone Number</label>
                <input type="number" class="form-control" id="stdmobile" name="stdmobile" aria-describedby="mobile" placeholder="">
            </div>

            <div class="form-group">
                <label for="period">Student Home Phone Number</label>
                <input type="number" class="form-control" id="stdphone" name="stdphone" aria-describedby="phone" placeholder="">
            </div>

            <div class="form-group">
                <label for="period">Student E-Mail</label>
                <input type="email" class="form-control" id="stdemail" name="stdemail" aria-describedby="emailHelp" placeholder="Enter One Primary E-mail Address that you use">
            </div>

            <div class="form-group">
                <label for="period">What is the date you started or plan to start your internship?</label>
                <input type="date" class="form-control" id="startdate" name="startdate" aria-describedby="startDate" placeholder="">
            </div>

            <div class="form-group">
                <label for="period">Specify Supervisor E-Mail address for the supervisor to fill his/her information</label>
                <input type="email" class="form-control" id="supemail" name="supemail" aria-describedby="superEmailHelp" placeholder="Enter One Primary E-mail Address that supervisor use">
            </div>

            <a class="btn btn-primary" href="#" role="button">Back</a>
            <button type="reset" class="btn btn-danger">Clear</button>
            <button type="submit" class="btn btn-success">Submit</button>

          </form>
    </div>

</body>
</html>