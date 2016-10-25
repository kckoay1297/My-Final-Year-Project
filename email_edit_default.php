<?php
	$con = new mysqli("localhost", "root", "", "profile");
	if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
	$tid = $_GET["temp_id"];
	$uid = $_GET["userid"];
	mysqli_query($con, "UPDATE user_tempt u, def_tempt d
   SET u.tempt = (SELECT temp FROM def_tempt WHERE temp_id = '$tid') WHERE u.user_id = '$uid' AND u.temp_id = '$tid'");
	
	
	echo '<script language="javascript">';
	echo 'alert("Template Reset.")';
	echo '</script>';    
	echo "<script>setTimeout(\"location.href = 'http://localhost/email_start.php';\",1500);</script>";
?>