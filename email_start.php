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
	<title>Event Mangement System: Email</title>
	<script src="js/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
div.temp{
	height:70%;
	width:auto;
	margin:60px;
	padding-bottom:20px;
	background-color:#F8F8F8;
	background: -webkit-linear-gradient(left top, #F8F8F8, #E3E3E3); /* For Safari 5.1 to 6.0 */
    background: -o-linear-gradient(bottom right, #F8F8F8, #E3E3E3); /* For Opera 11.1 to 12.0 */
    background: -moz-linear-gradient(bottom right, #F8F8F8, #E3E3E3); /* For Firefox 3.6 to 15 */
    background: linear-gradient(to bottom right, #F8F8F8, #E3E3E3); /* Standard syntax (must be last) */
	padding-left:40px;
	border-radius: 8px;
	border: 3px solid #8C8C8C;
	float:auto;
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
h2{
	text-decoration:underline;
	letter-spacing: 1px;
	line-height: 1.8;
}
h3{
	letter-spacing: 1px;
	line-height: 1.8;
	margin-left:10px;
}
p{
	margin-left:10px;
}
a{
	color: white;
	text-decoration: none;
}
a.edit{
	font-size:12px;
	color:#187FFA;
}
a.edit:hover{
	color:#0061D6;
}
a.edit:active{
	color:#D60000;
}
a.reset{
	font-size:12px;
	color:#FF3F3F;
}
a.reset:hover{
	color:#B90000;
}
a.reset:active{
	color:#5A0000;
}
@media (max-width:767px) {
.logo {
	margin: 15px;
	float: none;
	text-align: center;
}
}
a {
    color:black;
}
a.header{
	color: white;
	text-decoration: none;
}
a.btn{
	margin-top:20px;
	margin-bottom:15px;
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
li.temp{
	color:white;
}
</style>
</head>
<body>
<title>Event Management: Choose Template</title>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			
			<a class="header" href="http://localhost/new_home.php">
			<h1 class="topspace">Event Management System</h1>
			<h4 class="topspace">Choose Your Email Template</h4>
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

<div class="container temp">
  <h2>Select Template</h2>
  <ul class="nav nav-tabs nav-pills">
    <li class="active"><a data-toggle="pill" href="#home">Home</a></li>
	<?php
	$con = new mysqli("localhost", "root", "", "profile");
	if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
	}
	$sql = "SELECT * FROM user_tempt WHERE user_id = 1";
	$i = 1;
	$res=$con->query($sql);
	if ($res->num_rows > 0) {
		while( $row = mysqli_fetch_array($res)) {
			echo "<li class='temp'><a data-toggle='pill' href='#menu".$i."'>".$row['name']."</a></li>";
			$i++;
		}
		echo "</ul>";
		echo "<div class='tab-content'>";
		echo "<div id='home' class='tab-pane fade in active'>";
		echo "<h3>HOME</h3>";
		echo "<p>E-mail is the most important business tool in today’s workplace – make sure you’re using it correctly<br></br>

It’s something you use every day, probably without thinking too much about it. It’s the single most important communication tool on the planet – e-mail. Allowing nearly instantaneous discussion and direction, it lets you reach people on all corners of the globe. But look out! You may be sending the wrong message without even realizing it!

Like it or not, your e-mail style is a direct reflection of your professional reputation. And that means you simply cannot afford to just assume you’re being understood. You need to KNOW WITH ABSOLUTE CERTAINTY that you’re sending the right message every time. Don’t risk your reputation and career on e-mail blunders. Attend E-mail Etiquette for the Workplace and ensure that you never send the wrong message again!</p>";
		echo "</div>";
		$sql1 = "SELECT * FROM user_tempt WHERE user_id = 1";
		$j = 1;
		$res1=$con->query($sql1);
		if ($res1->num_rows > 0) {
			while( $row1 = mysqli_fetch_array($res1)) {
				echo "<div id='menu".$j."' class='tab-pane fade'>";
				echo "<h3>".$row1['name']." <a href='edit_email_tempt.php?id=1&temp_id=".$row1['temp_id']."&name=".$row1['name']."' class='edit'>Edit</a> <a href='reset_email.php?id=1' class='reset'>Reset All</a> </h3>";
				echo "<p>".nl2br($row1['tempt'])."</p>";
				echo "<a href='email_ready.php?id=1&temp_id=".$row1["temp_id"]."' class='btn btn-warning btn-lg' role='button'>Choose Template</a>";
				echo "</div>";
				$j++;
			}
		}
	}else{
			echo "<tr class='success'>";
			echo "<td>NO RESULT</td>";
			echo "<td>NO RESULT</td>";
			echo "<td>NO RESULT</td>";
			echo "<td>NO RESULT</td>";
			echo "<td>NO RESULT</td>";
			echo "</tr>";
	}
   echo "</div>";
  echo "</div>";
  ?>
</div>

</body>
</html>