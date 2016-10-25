<?php
//session_start();
//if(isset($_SESSION['user'])!="") 
//{
//header("Location: home.php");
//}
//include_once 'dbconnect.php';
//$email=$pass=$staffid=$designation=$department=$firstname=$lastname=$phone=$icnumber="";
$con = mysqli_connect("localhost","root","","profile");

if (mysqli_connect_errno()){
	echo "Failed to connect to MySQL:" . mysqli_connect_error();
}
echo 'continue';
if(isset($_POST['submit']))
{  
 $email = $_POST['email'];
 $pass = $_POST['pass'];
 $email = trim($email);
 $staffid = $_POST['staffid'];
 $designation = $_POST['designation'];
 $department = $_POST['department'];
 $staffid = trim($staffid);
 $designation = trim($designation);
 $department = trim($department);
 $firstname = $_POST['firstname'];
 $lastname = $_POST['lastname'];
 $phone = $_POST['phone'];
 $icnumber = $_POST['icnumber'];
 
 $firstname = trim($firstname);
 $lastname = trim($lastname);
 $phone = trim($phone);
 $icnumber = trim($icnumber);
 if(mysqli_query($con,"INSERT INTO user(email, password,staffid, designation, department,firstname,lastname,phone,icnumber) VALUES('$email','$pass','$staffid','$designation','$department','$firstname','$lastname','$phone','$icnumber'  )"))
 {
	 echo '<script language="javascript">';
	 echo 'alert("Successfully registered")';
	 echo '</script>';
 }	
 else
 {
	 echo '<script language="javascript">';
	 echo 'alert("Failed to register")';
	 echo '</script>';
	 
 }
 echo "1 record added";
 mysqli_close($con);
}
?>