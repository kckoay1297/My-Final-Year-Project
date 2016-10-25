<?php
session_start();
include_once 'dbconnect.php';

//if(!isset($_SESSION['user']))
//{
 //header("Location: index.php");
//}						
$con = mysqli_connect("localhost","root","","dbtest");						
echo $_SESSION['email'];			
$res=mysqli_query($con,"SELECT * FROM users WHERE users.email='".$_SESSION['email']."'");
$userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);
echo '<script language="javascript">';
	echo 'alert("Welcome.")';
	echo '</script>';    
	echo "<script>setTimeout(\"location.href = 'http://localhost/homepage.html';\",1500);</script>";
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<h1>Welcome - <?php echo $userRow['firstname']; ?></h1>

<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
<div id="header">
 <div id="left">
    <label>cleartuts</label>
    </div>
    <div id="right">
     <div id="content">
         hi' <?php echo $userRow['email']; ?>&nbsp;<a href="logout.php?logout">Sign Out</a>
        </div>
    </div>
</div>
</body>
</html>