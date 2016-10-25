<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>FCIST Event Management System Login</title>
    
    
    
    
        <link rel="stylesheet" href="css/login_style.css">

    
    
    
  </head>

  <body>
    <div class="vid-container">
  <video id="Video1" class="bgvid back" autoplay="false" muted="muted" preload="auto" loop>
      <source src="http://shortcodelic1.manuelmasiacsasi.netdna-cdn.com/themes/geode/wp-content/uploads/2014/04/milky-way-river-1280hd.mp4.mp4" type="video/mp4">
  </video>

  <div class="inner-container">
    <video id="Video2" class="bgvid inner" autoplay="false" muted="muted" preload="auto" loop>
      <source src="http://shortcodelic1.manuelmasiacsasi.netdna-cdn.com/themes/geode/wp-content/uploads/2014/04/milky-way-river-1280hd.mp4.mp4" type="video/mp4">
    </video>
    <div class="box">
	   
      <h1>Event Management System</h1>
	  <h6>(version 0.100)</h6>
	  <form action = "" method = "post">
      <input type="email" name = "email" placeholder="Email" required/>
      <input type="password" name = "password" placeholder="Password" required/>
      <button type = "submit" name = "submit" value = "submit">Submit  </button> <!--onClick="parent.location='http://localhost/login.php' class = "submit action-utton"-->
      <p>Not registered yet? <a href="http://localhost/register.php" target="_blank"><span>Sign Up</span></a></p>
	  </form>
    </div>
  </div>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script src="js/login.js"></script>

    
    
    
  </body>
</html>

<?php
session_start();
include_once 'dbconnect.php';

/*if(isset($_SESSION['user'])!="")
{
	header("Location: home.php");
}*/
$con = mysqli_connect("localhost","root","","dbtest");
if (mysqli_connect_errno()){
	echo "Failed to connect to MySQL:" . mysqli_connect_error();
}
if(isset($_POST['submit'])){
	$email = $_POST['email'];
	$pass = $_POST['password'];
	
	
	//$con = mysqli_connect("localhost","root","","dbtest");
	//$sql = "SELECT × FROM admin WHERE username = '$myusername' and passcode = '$mypassword'";
	$res=mysqli_query($con,"SELECT * FROM users WHERE users.email='".$email."' and users.password ='".$pass."'");
	$row=mysqli_fetch_array($res,MYSQLI_ASSOC);
	
	$count = mysqli_num_rows($res); // if uname/pass correct it returns must be 1 row

	
	if($count == 1)
	{	//echo $count;
		$_SESSION['email'] = $row["email"];
		$_SESSION['staffid'] = $row["staffid"];
		echo '<script language="javascript">';
		echo 'alert("Login!")';
		echo '</script>';
		header("Location: home.php");
	}
	else
	{
		 echo '<script language="javascript">';
		 echo 'alert("Error!")';
		 echo '</script>';       
	}
}
?>
	
	
