<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Supervisor Registration</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>

    <div class="container">
        <h2>Supervisor Sign-Up</h2>
        <p>Please fill in this form to create an account!</p>
        <form>
            <h4>Step 2</h4>

            <div class="form-group">
              <label for="sliitId">SLIIT Student ID Number</label>
              <input type="text" class="form-control" id="sliitId" aria-describedby="sliitId" placeholder="e.g IT17121966">
            </div>

            <div class="form-group">
                <label for="company">Company Name</label>
                <input type="text" class="form-control" id="company" aria-describedby="company" placeholder="">
            </div>
            
            <div class="form-group">
                <label for="cAddress">Company Address</label>
                <input type="text" class="form-control" id="cAddress" aria-describedby="cAddress" placeholder="">
            </div>

            <div class="form-group">
                <label for="name">Supervisor Name</label>
                <input type="text" class="form-control" id="name" aria-describedby="name" placeholder="">
            </div>
              
            <div class="form-group">
                <label for="sTitle">Supervisor Title (Organizational Designation)</label>
                <input type="text" class="form-control" id="sTitle" aria-describedby="sTitle" placeholder="">
            </div>

            <div class="form-group">
                <label for="period">Supervisor Contact Number</label>
                <input type="number" class="form-control" id="phone" aria-describedby="phone" placeholder="">
            </div>

            <div class="form-group">
                <label for="period">Supervisor E-Mail Address</label>
                <input type="email" class="form-control" id="emailHelp" aria-describedby="emailHelp" placeholder="Enter One Valid Company E-mail Address">
            </div>

            <div class="form-group">
                <label for="period">Internship Start Date</label>
                <input type="date" class="form-control" id="startDate" aria-describedby="startDate" placeholder="">
            </div>

            <div class="form-group">
                <label for="period">Internship End Date</label>
                <input type="date" class="form-control" id="endDate" aria-describedby="endDate" placeholder="">
            </div>

            <div class="form-group">
                <label for="period">Expected Number of Hours Per Week that the student needs to work</label>
                <input type="number" class="form-control" id="NoH" aria-describedby="NoH" placeholder="">
            </div>

            <div class="form-group">
                <label for="period">Describe the tasks student needs to complete</label>
                <textarea class="form-control" id="NoH" aria-describedby="NoH" placeholder="Write here.." rows="2"></textarea>
            </div>

            <div class="form-group">
                <label for="period">Describe what student will learn</label>
                <textarea class="form-control" id="NoH" aria-describedby="NoH" placeholder="Write here.." rows="2"></textarea>
            </div>

            <div class="form-group">
                <label for="exampleFormControlSelect1">Student Specialization</label>
                <select class="form-control" id="specialization">
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
                <label for="cType">How would you broadly categorize type of training the IT student will get?</label>
                <input type="text" class="form-control" id="cType" aria-describedby="cType" placeholder="">
            </div>

            <br><h4><b>Agreement</b></h4>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">We accept this student and would permit leave for the student for mandatory academic activities such as examinations during week days if and when required.</label>
              </div>
            <br>  
            <a class="btn btn-primary" href="#" role="button">Back</a>
            <button type="reset" class="btn btn-danger">Clear</button>
            <button type="submit" class="btn btn-success">Submit</button>
              
          </form>
          <br><br>
    </div>

</body>
</html>