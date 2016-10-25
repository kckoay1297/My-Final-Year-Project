<?php
	if(isset($_POST['submit'])){
    $con = new mysqli("localhost", "root", "", "profile");
	if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
	$duty = $_POST['duty'];
	$ic = $_POST['ic'];
	
	$editph = "UPDATE users SET phone=".$ph." WHERE id = 1";
	$editic = "UPDATE users SET icnumber=".$ic." WHERE id = 1";
	
	
	mysqli_query($con, $editph);
	mysqli_query($con, $editic);
	
	echo '<script language="javascript">';
	echo 'alert("Info Updated.")';
	echo '</script>';    
	echo "<script>setTimeout(\"location.href = 'http://localhost/profile.php';\",1500);</script>";
}
?>