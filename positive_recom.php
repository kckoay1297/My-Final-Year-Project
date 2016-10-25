<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<title>Event Mangement System: Positive Case Recommendation</title>

<style>
body {
    background-color:white;
	overflow = auto;
	width=100%;
	margin: 0 auto;
	
}

#wrapper {
	overflow: hidden;
	background: #FFFFFF;
	
box-shadow: 
        inset 0px 11px 8px -20px #CCC,
        inset 0px -11px 8px -10px #CCC;
}

.container {
	width: 1200px;
	margin: 0px auto;
}
.clearfix {
	clear: both;
}
#header-wrapper {
	overflow: hidden;
	height: 150px;
	background-color: black;
	//border-left: 60px solid #282828;
}
#header {
	width: 1200px;
	height: 150px;
	margin: 0 auto;
    padding: 1px;
	postion: relative; 
}
#logo {
	float: left;
	width: 507 px;
	height: 50 px;
	//padding: 0px 0px 0px 40px;
}
h1.topspace {
	font-size: 35px; 
	letter-spacing: -1px; 
	color: white; 
	text-transform: uppercase; 
	text-shadow: 1px 1px 0 #000, margin: 10px 0 24px; 
	//text-align: center; 
	line-height: 50px;
	position: relative;
	left:1px;
}

h4.topspace{
	font-size: 25px; 
	letter-spacing: -1px; 
	color: white; 
	text-transform: uppercase; 
	text-shadow: 1px 1px 0 #000, margin: 10px 0 24px; 
	//text-align: center; 
	line-height: 50px;
	position: relative;
	left:1px;
	text-decoration: underline;
}

p{
	font-family: Helvetica;
	color: black;
	text-align:center;
	float: clear;
	position: relative;
	top:120px;
	
}

a{
	color: white;
	text-decoration: none;
}
label{
	color:black;
	font-size:24px;
}
textarea{
	font-size:16px;
}
@media (max-width:767px) {
.logo {
	margin: 15px;
	float: none;
	text-align: center;
}
}
p{
	font-family: Helvetica;
	color: black;
	text-align:center;
	float: clear;
	position: relative;
	top:120px;
	
}

ul.topnav {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

ul.topnav li {float: left;}

ul.topnav li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

ul.topnav li a:hover:not(.active) {background-color: #111;}

ul.topnav li a.active {background-color: #4CAF50;}

ul.topnav li.right {float: right;}

@media screen and (max-width: 600px){
    ul.topnav li.right, 
    ul.topnav li {float: none;}
}
input.radio{
	font-size:16px;
}
</style>
</head>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			
			<a class="header" href="http://localhost/new_home.php">
			<h1 class="topspace">Event Management System</h1>
			<h4 class="topspace">Postive Case Recommendation</h4>
			</a>
		</div>
	</div>
</div>
<div id="nav">
<ul class="topnav">
  <li><a class="active" href="http://localhost/new_home.php">Home</a></li>
  <li><a href="http://localhost/profile.php">Profile</a></li>
  <li><a href="http://localhost/memberlist.php">Member</a></li>
  <li><a href="http://localhost/email_start.php">Email</a></li>
  <li><a href="http://localhost/doc_list.php">Documents</a></li>
  <li><a href="http://localhost/readme.docx">About</a></li>
  <li><a href="http://localhost/readme.docx">About</a></li>
  <li class="right"><a href="#about">Logout</a></li>
</ul>
</div>
<br></br>
<div class="container">
<form method="post" action="positive_cbr.php">
<div class="form-group col-xs-5">
<label for="budget">Budget:</label>
<span class="help-block">Not more than RM20000</span>
<input type="number" class="form-control" id="budget" min="0" max="20000" placeholder="200" name="budget" required/>
<label for="date">Date:</label>
<input  class="form-control" id="datepicker" type="text" placeholder="2016-09-27" name="date">
<label for="sel1">Level of Event (select one):</label>
      <select class="form-control" id="sel1" name="level">
        <option value="department">Department</option>
        <option value="faculty">Faculty</option>
        <option value="university">University</option>
        <option value="state">State</option>
      </select>
      <br>
<label for="income">Income:</label>
<span class="help-block">Not more than RM20000</span>
<input  class="form-control" id="income" min="0" max="20000" placeholder="500" type="number" name="income" required/>
<label for="size">Committee Size:</label>
<span class="help-block">Not more than 100</span>
<input  class="form-control" id="cSize" min="1" max="100" placeholder="20" type="number" name="cSize" required/>
<label for="size">Degree of Satisfactory:</label>
<span class="help-block">Not more than 100</span>
<input  class="form-control" id="feedback" min="1" max="100" placeholder="70.5" type="number" step="0.01" name="feedback" required/>
<label for="size">Number of Participants:</label>
<span class="help-block">Not more than 2500</span>
<input  class="form-control" id="ptp" min="1" max="2500" placeholder="20" type="number" name="ppt" required/>
<label for="sel1">No. of Result(select one):</label>
      <select class="form-control" id="sel1" name="no">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="5">5</option>
        <option value="10">10</option>
      </select>
<br></br>
<button type = "submit" name = "submit" value = "submit" class="btn btn-success btn-md btn-block" onClick="return empty()">Submit</button>
<a href='create_event.php?app=0&id=0&id2=0' class='myBtn btn btn-primary btn-md btn-block' role='button'>Create New Event</a>
</div>

</form>
</div>


<script src="js/bootstrap.min.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({ dateFormat: 'yy-mm-dd' });
  } );
  function empty() {
    var x;
    x = document.getElementById("val").value;
    if (x == "") {
        alert("Enter a Variable");
        return false;
    };
}
  </script>
</body>
</html>