<?php

if(isset($_POST['submit'])){
    $con = new mysqli("localhost", "root", "", "event");
	if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
	$duty = $_POST['duty'];
	 $eid= $_POST['eid'];
	
	$editph = "UPDATE event_checklist SET duty='$duty' WHERE ec_index = ".$eid;
	
	
	
	mysqli_query($con, $editph);
	
	
	echo '<script language="javascript">';
	echo 'alert("Info Updated.")';
	echo '</script>';    
	echo "<script>setTimeout(\"location.href = 'http://localhost/hosting_event.php';\",1500);</script>";
}
?>