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
	<title>Event Mangement System: Invitation to Event</title>

<style>
body {
    background: #000428; /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #000428 , #004e92); /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #000428 , #004e92); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        
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
h4.display{
	font-size: 25px; 
	letter-spacing: -1px; 
	color: white; 
	text-transform: uppercase; 
	text-shadow: 1px 1px 0 #000, margin: 10px 0 24px; 
	//text-align: center; 
	line-height: 50px;
	position: relative;
	left:1px;
	//text-decoration: underline;
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
			
			<a class="header" href="http://localhost/new_home.php">
			<h1 class="topspace">Event Management System</h1>
			<h4 class="topspace">Accept/Reject</h4>
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
<br></br>

<div class="content">
<h4 class="topspace">Confirmation</h4>
<h4 class="topspace">Event Details:</h4>
<?php
	$member = 'member';
	$cid = $_GET['id'];
	$uid = $_GET['uid'];
	$sql = "SELECT * FROM Invitation WHERE caseID = '$cid' AND memberid = ".$uid;
	$con = new mysqli("localhost", "root", "", "event");
	// Check connection
	if ($con->connect_error) {
     die("Connection failed: " . $conn->connect_error);
}
	$res = $con->query($sql);
	if ($res->num_rows > 0) {
		while( $row = mysqli_fetch_array($res)) {
			$ename = "SELECT * FROM event_record WHERE caseID='$cid'";
			$rese = $con->query($ename);
			if($rese->num_rows > 0){
				while( $rowe = mysqli_fetch_array($rese)) {
					echo "<h4 class='display'>Event: ".$rowe['caseName']."</h4>";
				}
			}else{
				echo "error";
			}
			if($row['position'] == 'vp'){
				$member = 'Vice President';
			}elseif($row['position'] == 'helper'){
				$member = 'External Helper';
			}elseif($row['position'] == 'dh'){
				$member = 'Department Head';
			}else{
				$member = ucwords($row['position']);
			}
			echo "<h4 class='display'>Position: ".$member."</h4>";
			if($row['biro']=='CC'){
				echo "<h4 class='display'>Department: Central Committee</h4>";
			}elseif($row['biro'] == 'TEC'){
				echo "<h4 class='display'>Department: Technical</h4>";
			}elseif($row['biro'] == 'REG'){
				echo "<h4 class='display'>Department: Registration</h4>";
			}elseif($row['biro'] == 'PUB'){
				echo "<h4 class='display'>Department: Publishing</h4>";
			}elseif($row['biro'] == 'PRY'){
				echo "<h4 class='display'>Department: Prayer</h4>";
			}elseif($row['biro'] == 'PRO'){
				echo "<h4 class='display'>Department: Programme</h4>";
			}elseif($row['biro'] == 'PP2'){
				echo "<h4 class='display'>Department: Publicity & Promotion</h4>";
			}elseif($row['biro'] == 'LOG'){
				echo "<h4 class='display'>Department: Logistic</h4>";
			}elseif($row['biro'] == 'FOD'){
				echo "<h4 class='display'>Department: Food</h4>";
			}elseif($row['biro'] == 'AWD'){
				echo "<h4 class='display'>Department: Award</h4>";
			}elseif($row['biro'] == 'DEC'){
				echo "<h4 class='display'>Department: Decoration</h4>";
			}elseif($row['biro'] == 'FIN'){
				echo "<h4 class='display'>Department: Finance</h4>";
			}elseif($row['biro'] == 'ACA'){
				echo "<h4 class='display'>Department: Academic</h4>";
			}elseif($row['biro'] == 'INV'){
				echo "<h4 class='display'>Department: Invitation</h4>";
			}else{
				echo "<h4 class='display'>Department: Other</h4>";
			}
					
		}
	}
	echo "<a href='confirm_invite_finish.php?id=".$cid."&uid=".$uid."&confirm=1'><button type='btn' class='btn btn-primary btn-lg sharp btn-success'>Accept</button></a>";
	echo "<a href='confirm_invite_finish.php?id=".$cid."&uid=".$uid."&confirm=-1'><button type='btn' class='btn btn-primary btn-lg sharp btn-danger'>Reject</button></a>";
?>
</div>
<p class="br">Prototype</p><br></br><br></br>
<script src="js/bootstrap.min.js"></script>
</body>
</html>