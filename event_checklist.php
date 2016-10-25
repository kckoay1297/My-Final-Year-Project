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
	<title>Event Mangement System: View Event Checklist</title>

<style>
body {
    background: url("http://www.borongaja.com/data_images/out/25/663969-night-urban-landscape.jpg") ;
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
p.br{
	opacity:0.0;
}
a {
    color:black;
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
.btn {
  display: inline-block;
  font-size: 16px;
  line-height: 1.42857143;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 4px;
  padding: 35px 25px;
  width:260px ;
  height:180px;
  margin: 5px;
  float:left;
}

.btn-lg {
  font-size: 16px;
  line-height: 1.33;
  border-radius: 6px;
}

.btn-primary {
  color: #fff;
  background-color: #8716FF;
  border-color: #8716FF;
}
.btn-primary:hover,
.btn-primary:focus,
.btn-primary:active,
.btn-primary.active,
.open .dropdown-toggle.btn-primary {
  color: #fff;
  background-color: #001ABD;
  border-color: #001ABD;
  opacity: 1.0;
}

/***********************
  SHARP BUTTONS
************************/
.sharp {
  border-radius:0;
}

/***********************
  CUSTON BTN VALUES
************************/

.btn {
    border: 0 none;
    font-weight: 700;
    letter-spacing: 1px;
	opacity: 0.8;
    /*position:absolute;*/
}
.btn:focus, .btn:active:focus, .btn.active:focus {
    outline: 0 none;
	background: #0027B6;
    color: #ffffff;
	opacity: 1.0;
}

.btn-primary {
    background: #0046A5;
    color: #ffffff;
}
.btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .open > .dropdown-toggle.btn-primary {
    background: #01019C;
	//8000BB
	opacity: 1.0;
	box-shadow: 2px 2px 8px #000000;
}
.btn-primary:active, .btn-primary.active {
    background: #6199E4;
    box-shadow: none;
	opacity: 1.0;
}

div.content{
padding-left:60px;
padding-bottom:5px;
margin: 5px 0;
height:480px;
width:auto;
}
</style>
</head>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			
			<a class="header" href="http://localhost/homepage.html">
			<h1 class="topspace">Event Management System</h1>
			<h4 class="topspace">View Event Checklist</h4>
			</a>
		</div>
	</div>
</div>
<div id="nav">
<ul class="topnav">
  <li><a class="active" href="http://localhost/homepage.html">Home</a></li>
  <li><a href="http://localhost/profile.php">Profile</a></li>
  <li><a href="http://localhost/readme.docx">About</a></li>
  <li class="right"><a href="#about">Logout</a></li>
</ul>
</div>
<br></br>

<div class="content">
<?php
	$con = new mysqli("localhost", "root", "", "event");
	// Check connection
	if ($con->connect_error) {
     die("Connection failed: " . $conn->connect_error);
}
	$sql = "SELECT DISTINCT(name),type FROM checklist";
	$res = $con->query($sql);
	if ($res->num_rows > 0) {
		while( $row = mysqli_fetch_array($res)) {
			echo "<a href='check_list_description.php?id=".$row['type']."'><button type='btn' class='btn btn-primary btn-lg sharp'><i class='material-icons' style='font-size:36px'>view_module	</i><br>".$row['name']."</br></button></a>";
		}
	}else{
		echo "0 result";
	}
?>
</div>
<p class="br">Prototype</p><br></br><br></br>
<script src="js/bootstrap.min.js"></script>
</body>
</html>