<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
  width:400px ;
  height:280px;
  margin: 10px;
  float:left;
}

.btn-lg {
  font-size: 16px;
  line-height: 1.33;
  border-radius: 6px;
}

.btn-primary {
  color: #fff;
  background-color: #E46BFF;
  border-color: #E46BFF;
}
.btn-primary:hover,
.btn-primary:focus,
.btn-primary:active,
.btn-primary.active,
.open .dropdown-toggle.btn-primary {
  color: #fff;
  background-color: #E46BFF;
  border-color: #E46BFF;
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
	background: #A30FC4;
    color: #ffffff;
	opacity: 1.0;
}

.btn-primary {
    background: #8000BB;
    color: #ffffff;
}
.btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .open > .dropdown-toggle.btn-primary {
    background: #590182;
	//8000BB
	opacity: 1.0;
	box-shadow: 2px 2px 8px #000000;
}
.btn-primary:active, .btn-primary.active {
    background: #8E04CD;
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
div.nav{
padding-left:60px;
}
input.email{
	width:250px;
	height:150px;
	position: relative;
	top: 40px;
	left: 40px;
}
input.email:active {
  background-color: #3e8e41;
  transform: translateY(4px);
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
</style>
</head>
<body>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			
			<a class="header" href="http://localhost/new_home.php">
			<h1 class="topspace">Event Management System</h1>
			<h4 class="topspace">Homepage</h4>
			</a>
		</div>
	</div>
</div>
<div id="nav">
<ul class="topnav">
  <li><a class="active" href="http://localhost/homepage.html">Home</a></li>
  <li><a href="http://localhost/profile.php">Profile</a></li>
  <li><a href="http://localhost/memberlist.php">Member</a></li>
  <li><a href="http://localhost/email_start.php">Email</a></li>
  <li><a href="http://localhost/doc_list.php">Documents</a></li>
  <li><a href="http://localhost/readme.docx">About</a></li>
  <li class="right"><a href="#about">Logout</a></li>
</ul>
</div>
<title>Event Recommendation</title>
<br></br>

<div class="content">
<a href="http://localhost/positive_recom.php"><button type="btn" class="btn btn-primary btn-lg sharp "><i class="material-icons" style="font-size:48px">event_available</i><br>Positive</br></button></a>
<a href="http://localhost/negative_recom.php"><button type="btn" class="btn btn-primary btn-lg sharp "><i class="material-icons" style="font-size:48px">event_busy</i><br>Negative</br></button></a>
<a href="http://localhost/custom_recom.php"><button type="btn" class="btn btn-primary btn-lg sharp "><i class="material-icons" style="font-size:48px">event_note</i><br>Customized</br></button></a>
</div>

<div></div>
</div>

<nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
					<li>
                        <a href="http://myum.um.edu.my/" target="_blank">UM</a>
                    </li>
                    <li>
                        <a href="http://myum.um.edu.my/" target="_blank">Staff Portal</a>
                    </li>
                    <li>
                        <a href="http://www.fsktm.um.edu.my/" target="_blank">FCSIT</a>
                    </li>
                    <li>
                        <a href="https://docs.google.com/forms/d/1UsLkpzp73qr0Vfb8y8Q0l8WT7C9yRmaSdxHjMhw5_R8/viewform" target="_blank">Room Booking</a>
                    </li>
					<li>
                        <a href="http://hep.um.edu.my/" target="_blank">HEP</a>
                    </li>
					<li>
                        <a href="http://vmis.um.edu.my/" target="_blank">Bus Booking</a>
                    </li>
					<li>
                        <a href="https://siswa.um.edu.my/" target="_blank">Siswamail</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

<p> prototype</p>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
