<!DOCTYPE html>
<html>
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
<style>
body {
    background: #000428; /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #000428 , #004e92); /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #000428 , #004e92); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */overflow = auto;
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
h2.form{
	padding-left:40px;
}
a{
	color: white;
	text-decoration: none;
}
<--input[type=text], select {
    width: 100%;
    padding: 12px 12px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
	font-family: Helvetica;
	font-size:120%;
}-->

button.choice {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 12px 12px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
	font-family: Helvetica;
	font-size:120%;
}

button.choice:hover {
    background-color: #45a049;
}

button.choice:active, button.choice:focus {
    background-color: #45a049;
	color: black;
	transform: translateY(4px);
}
input.phone{
	color:black;
	background-color:black;
}

input.input{
	padding: 12px 12px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    resize: none;
	font-family: Helvetica;
	font-size: 14px;
}

input.final{
	width: 40%;
    background-color: #FF3B3B  ;
    color: white;
    //padding: 12px 12px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
	font-family: Helvetica;
	font-size:120%;
}
input.final:hover{
	background-color: #FF6F6F  ;
}
input.final:active{
	background-color: #FF6F6F  ;
	color: #DCDCDC;
	transform: translateY(4px);
}

label {
	font-family: Helvetica;
}
textarea {
    width: 40%;
    height: 50px;
    padding: 12px 12px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
	color:black;
    resize: none;
	font-family: Helvetica;
	font-size: 14px;
}
textarea.view{
	width: 40%;
    height: 50px;
    padding: 12px 12px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #959595;
    resize: none;
	font-family: Helvetica;
	font-size: 14px;
}
textarea.phone,textarea.ic{
	color:black;
}
a.edit{
	color:blue;
	text-decoration: initial;
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
a {
    color:#6d0058;
}
a.header{
	color: white;
	text-decoration: none;
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
.inner {
  //position: absolute;
}
.inner-container{
  width:500px;
  height:400px;
  //position:relative;
  overflow:hidden;
}

.box{
  position:absolute;
  font-family:Helvetica;
  color:white;
  padding:20px 20px;
  background-color:rgba(0,0,0,0.3);
  margin-left:20%;
  width: 50%;
}
.box input{
  display:block;
  width:40%;
  margin-top:20px;
  padding:15px;
  color:#fff;
  border:0;
}
.box input:focus,.box input:active,.box button:focus,.box button:active{
  outline:none;
}

.box button{
  background:#742ECC;
  border:0;
  color:#fff;
  padding:10px;
  font-size:20px;
  width:330px;
  margin:20px auto;
  display:block;
  cursor:pointer;
}
.box button:active{
  background: #17202a ;
}
.box p{
  font-size:14px;
  text-align:center;
}
.box p span{
  cursor:pointer;
  color:#666;
}
form{
	padding-left:40px;
}
</style>
<body>
<title>Event Management: Profile Edit</title>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			
			<a class="header" href="http://localhost/new_home.php">
			<h1 class="topspace">Event Management System</h1>
			<h4 class="topspace">Edit Profile Info</h4>
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
  <li><a href="http://localhost/event_search.php" target="_blank"><span class="glyphicon glyphicon-search"></span></a></li>
  <li class="right"><a href="#about">Logout</a></li>
</ul>
</div>
<br></br>
<div class="inner-container">
<div class="box center">
	<h2 class="topspace form">Edit Event Info</h2>
	<form method="post" action="finish_event_edit.php">
<?php
	$cid = $_GET['cid'];
	$conn1 = new mysqli("localhost", "root", "", "event");
	if ($conn1->connect_error) {
    die("Connection failed: " . $conn1->connect_error);
}
	$date = $budget = $department = $type = $level = $income = $cSize = $feedback = $aPpt = $desc = $status = null;
	$sql = "SELECT * FROM event_record WHERE caseID='$cid'";
	$res = $conn1->query($sql);
	if ($res->num_rows > 0) {
		while($row1 = $res->fetch_assoc()) {
			$date = $row1['caseDate'];
			$budget = $row1['budget'];
			$expenses = $row1['expenses'];
			$department = $row1['department'];
			$type = $row1['type'];
			$level = $row1['level'];
			$income = $row1['actualIncome'];
			$cSize = $row1['cmtSize'];
			$feedback = $row1['feedback'];
			$aPpt = $row1['actualPtcpt'];
			$desc = $row1['description'];
			$status =strtoupper($row1['status']);
		}
	}else {
		echo "0 results";
	}
	$conn1->close();
	echo "<br>";
	echo "<label for='date'>Date:</label>";
	echo "<input  class='form-control phone' id='datepicker' type='text' value='$date' name='date' required>";
	echo "<br>";
	echo "<label for='income'>Budget:</label>";
	echo "<span class='help-block'>Not more than RM20000</span>";
	echo "<input  class='form-control phone' id='income' min='0' max='20000' type='number' name='budget' value=".$budget." required/>";
	echo "<br>";
	echo "<label for='expenses'>Expenses:</label>";
	echo "<span class='help-block'>Not more than RM20000</span>";
	echo "<input  class='form-control phone' id='expenses' min='0' max='20000' type='number' name='expenses' value=".$expenses." required/>";
	echo "<br>";
	echo "<div class='col-xs-10'>";
	echo "<label for='department'>Department:</label>";
			echo "<select class='form-control' id='sel1' name='department'>";
			if($department == 'ai'){
				echo "<option value='ai' selected='selected'>Artificial Intelligence</option>";
				echo "<option value='stk'>Computer System & Network</option>";
				echo "<option value='se'>Software Engineering</option>";
				echo "<option value='mis'>Management Information System</option>";
				echo "<option value='it'>Information Technology</option>";
				echo "<option value='under_grad'>All Undergraduate Students</option>";
				echo "<option value='post_grad'>All Postgraduate Students</option>";
				echo "<option value='all'>All Level Students</option>";
			}elseif($department == 'se'){
				echo "<option value='ai'>Artificial Intelligence</option>";
				echo "<option value='stk'>Computer System & Network</option>";
				echo "<option value='se'  selected='selected'>Software Engineering</option>";
				echo "<option value='mis'>Management Information System</option>";
				echo "<option value='it'>Information Technology</option>";
				echo "<option value='under_grad'>All Undergraduate Students</option>";
				echo "<option value='post_grad'>All Postgraduate Students</option>";
				echo "<option value='all'>All Level Students</option>";
			}elseif($department == 'stk'){
				echo "<option value='ai' >Artificial Intelligence</option>";
				echo "<option value='stk' selected='selected'>Computer System & Network</option>";
				echo "<option value='se'>Software Engineering</option>";
				echo "<option value='mis'>Management Information System</option>";
				echo "<option value='it'>Information Technology</option>";
				echo "<option value='under_grad'>All Undergraduate Students</option>";
				echo "<option value='post_grad'>All Postgraduate Students</option>";
				echo "<option value='all'>All Level Students</option>";
			}elseif($department == 'mis'){
				echo "<option value='ai'>Artificial Intelligence</option>";
				echo "<option value='stk'>Computer System & Network</option>";
				echo "<option value='se'>Software Engineering</option>";
				echo "<option value='mis' selected='selected'>Management Information System</option>";
				echo "<option value='it'>Information Technology</option>";
				echo "<option value='under_grad'>All Undergraduate Students</option>";
				echo "<option value='post_grad'>All Postgraduate Students</option>";
				echo "<option value='all'>All Level Students</option>";
			}elseif($department == 'it'){
				echo "<option value='ai'>Artificial Intelligence</option>";
				echo "<option value='stk'>Computer System & Network</option>";
				echo "<option value='se'>Software Engineering</option>";
				echo "<option value='mis'>Management Information System</option>";
				echo "<option value='it'  selected='selected'>Information Technology</option>";
				echo "<option value='under_grad'>All Undergraduate Students</option>";
				echo "<option value='post_grad'>All Postgraduate Students</option>";
				echo "<option value='all'>All Level Students</option>";
			}elseif($department == 'under_grad'){
				echo "<option value='ai'>Artificial Intelligence</option>";
				echo "<option value='stk'>Computer System & Network</option>";
				echo "<option value='se'>Software Engineering</option>";
				echo "<option value='mis'>Management Information System</option>";
				echo "<option value='it'>Information Technology</option>";
				echo "<option value='under_grad'  selected='selected'>All Undergraduate Students</option>";
				echo "<option value='post_grad'>All Postgraduate Students</option>";
				echo "<option value='all'>All Level Students</option>";
			}elseif($department == 'post_grad'){
				echo "<option value='ai'>Artificial Intelligence</option>";
				echo "<option value='stk'>Computer System & Network</option>";
				echo "<option value='se'>Software Engineering</option>";
				echo "<option value='mis'>Management Information System</option>";
				echo "<option value='it'>Information Technology</option>";
				echo "<option value='under_grad'>All Undergraduate Students</option>";
				echo "<option value='post_grad' selected='selected'>All Postgraduate Students</option>";
				echo "<option value='all'>All Level Students</option>";
			}else{
				echo "<option value='ai'>Artificial Intelligence</option>";
				echo "<option value='stk'>Computer System & Network</option>";
				echo "<option value='se'>Software Engineering</option>";
				echo "<option value='mis'>Management Information System</option>";
				echo "<option value='it'>Information Technology</option>";
				echo "<option value='under_grad'>All Undergraduate Students</option>";
				echo "<option value='post_grad'>All Postgraduate Students</option>";
				echo "<option value='all' selected='selected'>All Level Students</option>";
			}
			echo "</select>";
			echo "</div>";
			echo "<div class='col-xs-10'>";
			echo "<label for='level'>Level:</label>";
			echo "<select class='form-control ' id='sel1' name='level'>";
			if($level == 'department'){
				echo "<option value='department' selected='selected'>Department</option>";
				echo "<option value='faculty'>Faculty</option>";
				echo "<option value='university'>University</option>";
				echo "<option value='state'>State</option>";
			}elseif($level == 'faculty'){
				echo "<option value='department'>Department</option>";
				echo "<option value='faculty' selected='selected'>Faculty</option>";
				echo "<option value='university'>University</option>";
				echo "<option value='state'>State</option>";
			}elseif($level == 'university'){
				echo "<option value='department'>Department</option>";
				echo "<option value='faculty'>Faculty</option>";
				echo "<option value='university' selected='selected'>University</option>";
				echo "<option value='state'>State</option>";
			}else{
				echo "<option value='department'>Department</option>";
				echo "<option value='faculty'>Faculty</option>";
				echo "<option value='university'>University</option>";
				echo "<option value='state' selected='selected'>State</option>";
			}
			
			echo "</select>";
			echo "</div>";
			
			echo "<div class='col-xs-10'>";
			echo "<label for='type'>Type:</label>";
			echo "<select class='form-control' id='sel1' name='type'>";
			if($type == 'workshop'){
				echo "<option value='workshop' selected='selected'>Workshop</option>";
				echo "<option value='talk'>Talk</option>";
				echo "<option value='sports'>Sports</option>";
				echo "<option value='orientation'>Orientation</option>";
				echo "<option value='industrial_visit'>Industrial Visit</option>";
				echo "<option value='industrial_visit'>Academic Workshop</option>";
				echo "<option value='exhibition'>Exhibition</option>";
				echo "<option value='dinner'>Diner</option>";
				echo "<option value='conferrence'>Conferrence</option>";
				echo "<option value='competition'>Competition</option>";
				echo "<option value='seminar'>Seminar</option>";
				echo "<option value='other'>Other</option>";
			}elseif($type == 'talk'){
				echo "<option value='workshop'>Workshop</option>";
				echo "<option value='talk' selected='selected'>Talk</option>";
				echo "<option value='sports'>Sports</option>";
				echo "<option value='orientation'>Orientation</option>";
				echo "<option value='industrial_visit'>Industrial Visit</option>";
				echo "<option value='industrial_visit'>Academic Workshop</option>";
				echo "<option value='exhibition'>Exhibition</option>";
				echo "<option value='dinner'>Diner</option>";
				echo "<option value='conferrence'>Conferrence</option>";
				echo "<option value='competition'>Competition</option>";
				echo "<option value='seminar'>Seminar</option>";
				echo "<option value='other'>Other</option>";
			}elseif($type == 'sports'){
				echo "<option value='workshop'>Workshop</option>";
				echo "<option value='talk'>Talk</option>";
				echo "<option value='sports' selected='selected'>Sports</option>";
				echo "<option value='orientation'>Orientation</option>";
				echo "<option value='industrial_visit'>Industrial Visit</option>";
				echo "<option value='industrial_visit'>Academic Workshop</option>";
				echo "<option value='exhibition'>Exhibition</option>";
				echo "<option value='dinner'>Diner</option>";
				echo "<option value='conferrence'>Conferrence</option>";
				echo "<option value='competition'>Competition</option>";
				echo "<option value='seminar'>Seminar</option>";
				echo "<option value='other'>Other</option>";
			}elseif($type == 'orientation'){
				echo "<option value='workshop'>Workshop</option>";
				echo "<option value='talk'>Talk</option>";
				echo "<option value='sports'>Sports</option>";
				echo "<option value='orientation' selected='selected'>Orientation</option>";
				echo "<option value='industrial_visit'>Industrial Visit</option>";
				echo "<option value='industrial_visit'>Academic Workshop</option>";
				echo "<option value='exhibition'>Exhibition</option>";
				echo "<option value='dinner'>Diner</option>";
				echo "<option value='conferrence'>Conferrence</option>";
				echo "<option value='competition'>Competition</option>";
				echo "<option value='seminar'>Seminar</option>";
				echo "<option value='other'>Other</option>";
			}elseif($type == 'industrial_visit'){
				echo "<option value='workshop'>Workshop</option>";
				echo "<option value='talk'>Talk</option>";
				echo "<option value='sports'>Sports</option>";
				echo "<option value='orientation'>Orientation</option>";
				echo "<option value='industrial_visit' selected='selected'>Industrial Visit</option>";
				echo "<option value='industrial_visit'>Academic Workshop</option>";
				echo "<option value='exhibition'>Exhibition</option>";
				echo "<option value='dinner'>Diner</option>";
				echo "<option value='conferrence'>Conferrence</option>";
				echo "<option value='competition'>Competition</option>";
				echo "<option value='seminar'>Seminar</option>";
				echo "<option value='other'>Other</option>";
			}elseif($type == 'academic_workshop'){
				echo "<option value='workshop'>Workshop</option>";
				echo "<option value='talk'>Talk</option>";
				echo "<option value='sports'>Sports</option>";
				echo "<option value='orientation'>Orientation</option>";
				echo "<option value='industrial_visit'>Industrial Visit</option>";
				echo "<option value='industrial_visit' selected='selected'>Academic Workshop</option>";
				echo "<option value='exhibition'>Exhibition</option>";
				echo "<option value='dinner'>Diner</option>";
				echo "<option value='conferrence'>Conferrence</option>";
				echo "<option value='competition'>Competition</option>";
				echo "<option value='seminar'>Seminar</option>";
				echo "<option value='other'>Other</option>";
			}elseif($type == 'exhibition'){
				echo "<option value='workshop'>Workshop</option>";
				echo "<option value='talk'>Talk</option>";
				echo "<option value='sports'>Sports</option>";
				echo "<option value='orientation'>Orientation</option>";
				echo "<option value='industrial_visit'>Industrial Visit</option>";
				echo "<option value='industrial_visit'>Academic Workshop</option>";
				echo "<option value='exhibition' selected='selected'>Exhibition</option>";
				echo "<option value='dinner'>Diner</option>";
				echo "<option value='conferrence'>Conferrence</option>";
				echo "<option value='competition'>Competition</option>";
				echo "<option value='seminar'>Seminar</option>";
				echo "<option value='other'>Other</option>";
			}elseif($type == 'dinner'){
				echo "<option value='workshop'>Workshop</option>";
				echo "<option value='talk'>Talk</option>";
				echo "<option value='sports'>Sports</option>";
				echo "<option value='orientation'>Orientation</option>";
				echo "<option value='industrial_visit'>Industrial Visit</option>";
				echo "<option value='industrial_visit'>Academic Workshop</option>";
				echo "<option value='exhibition'>Exhibition</option>";
				echo "<option value='dinner' selected='selected'>Diner</option>";
				echo "<option value='conferrence'>Conferrence</option>";
				echo "<option value='competition'>Competition</option>";
				echo "<option value='seminar'>Seminar</option>";
				echo "<option value='other'>Other</option>";
			}elseif($type == 'conferrence'){
				echo "<option value='workshop'>Workshop</option>";
				echo "<option value='talk'>Talk</option>";
				echo "<option value='sports'>Sports</option>";
				echo "<option value='orientation'>Orientation</option>";
				echo "<option value='industrial_visit'>Industrial Visit</option>";
				echo "<option value='industrial_visit'>Academic Workshop</option>";
				echo "<option value='exhibition'>Exhibition</option>";
				echo "<option value='dinner'Diner</option>";
				echo "<option value='conferrence' selected='selected'>>Conferrence</option>";
				echo "<option value='competition'>Competition</option>";
				echo "<option value='seminar'>Seminar</option>";
				echo "<option value='other'>Other</option>";
			}elseif($type == 'competition'){
				echo "<option value='workshop'>Workshop</option>";
				echo "<option value='talk'>Talk</option>";
				echo "<option value='sports'>Sports</option>";
				echo "<option value='orientation'>Orientation</option>";
				echo "<option value='industrial_visit'>Industrial Visit</option>";
				echo "<option value='industrial_visit'>Academic Workshop</option>";
				echo "<option value='exhibition'>Exhibition</option>";
				echo "<option value='dinner'>Diner</option>";
				echo "<option value='conferrence'>Conferrence</option>";
				echo "<option value='competition' selected='selected'>Competition</option>";
				echo "<option value='seminar'>Seminar</option>";
				echo "<option value='other'>Other</option>";
			}elseif($type == 'seminar'){
				echo "<option value='workshop'>Workshop</option>";
				echo "<option value='talk'>Talk</option>";
				echo "<option value='sports'>Sports</option>";
				echo "<option value='orientation'>Orientation</option>";
				echo "<option value='industrial_visit'>Industrial Visit</option>";
				echo "<option value='industrial_visit'>Academic Workshop</option>";
				echo "<option value='exhibition'>Exhibition</option>";
				echo "<option value='dinner'>Diner</option>";
				echo "<option value='conferrence'>Conferrence</option>";
				echo "<option value='competition'>Competition</option>";
				echo "<option value='seminar' selected='selected'>Seminar</option>";
				echo "<option value='other'>Other</option>";
			}else{
				echo "<option value='workshop'>Workshop</option>";
				echo "<option value='talk'>Talk</option>";
				echo "<option value='sports'>Sports</option>";
				echo "<option value='orientation'>Orientation</option>";
				echo "<option value='industrial_visit'>Industrial Visit</option>";
				echo "<option value='industrial_visit'>Academic Workshop</option>";
				echo "<option value='exhibition'>Exhibition</option>";
				echo "<option value='dinner'>Diner</option>";
				echo "<option value='conferrence'>Conferrence</option>";
				echo "<option value='competition'>Competition</option>";
				echo "<option value='seminar' >Seminar</option>";
				echo "<option value='other' selected='selected'>Other</option>";
				
			}
			echo "</select>";
			echo "<br></br>";
			
			echo "</div>";
			echo "<label for='ename'>Actual Income:</label>";
			echo "<input type='number' min='0' max='20000' class='form-control phone' id='income' name='income'  value=".$income. " step='0.01'>";
			echo "<br></br>";
			echo "<label for='ename'>Comittee Size:</label>";
			echo "<input type='number' min='0' max='100' class='form-control phone' id='cmtSize' name='cSize'  value=".$cSize.">";
			echo "<br></br>";
			echo "<label for='ename'>Actual Participants:</label>";
			echo "<input type='number' min='0' max='2000' class='form-control phone' id='ppt' name='aPpt'  value=".$aPpt.">";
			echo "<br></br>";
			echo "<label for='ename'>Actual Feedback:</label>";
			echo "<input type='number' min='0' max='100' class='form-control phone' id='feedback' name='feedback'  value=".$feedback." step='0.01'>";
			echo "<br></br>";
			
			echo "<div class ='form-group'>";
			echo "<label for='ename'>Description:</label>";
			echo "<textarea class='form-control phone' id='description' name='desc' rows='5' cols='2'>".$desc."</textarea>";
			echo "</div>";
			
			echo "<div class='col-xs-10'>";
			echo "<label for='status'>Status:</label>";
			echo "<select class='form-control ' id='sel1' disabled>";
			if($status == 'ONGOING'){
				echo "<option value='ongoing' selected='selected'>ONGOING</option>";
				echo "<option value='cancelled'>CANCELLED</option>";
				echo "<option value='setback'>SETBACK</option>";
				echo "<option value='success'>SUCCESS</option>";
			}elseif($status == 'CANCELLED'){
				echo "<option value='ongoing' >ONGOING</option>";
				echo "<option value='cancelled' selected='selected'>CANCELLED</option>";
				echo "<option value='setback'>SETBACK</option>";
				echo "<option value='success'>SUCCESS</option>";
			}elseif($status == 'SETBACK'){
				echo "<option value='ongoing'>ONGOING</option>";
				echo "<option value='cancelled'  selected='selected'>CANCELLED</option>";
				echo "<option value='setback'>SETBACK</option>";
				echo "<option value='success'>SUCCESS</option>";
			}else{
				echo "<option value='ongoing' selected='selected'>ONGOING</option>";
				echo "<option value='cancelled'>CANCELLED</option>";
				echo "<option value='setback'>SETBACK</option>";
				echo "<option value='success'  selected='selected'>SUCCESS</option>";
			}
			echo "</select>";
			echo "<br></br>";
			
			echo "</div>";
			echo "<input type='hidden' name='status' value=".$status.">";
			echo "<input type='hidden' name='cid' value=".$cid.">";
			echo "<input type='hidden' name='status2' value='0'>";
	
?>
	<br></br>
    <input type="submit" name="submit" value="Submit" class="final">
	</form>
</div>
</div>
</body>
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
</html>