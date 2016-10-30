<?php
	if(isset($_POST['submit'])){
    $con = new mysqli("localhost", "root", "", "profile");
	if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
	$template = $_POST['email'];
	$id = $_POST['id'];
	$sql = "UPDATE def_tempt SET temp='".htmlspecialchars($template)."' WHERE temp_id =".$id;
	echo $sql;
	
	if (mysqli_query($con, $sql)) {
    echo '<script language="javascript">';
	echo 'alert("Template Updated.")';
	echo '</script>';    
	echo "<script>setTimeout(\"location.href = 'http://localhost/admin_panel.php';\",1500);</script>";
	} else {
    echo '<script language="javascript">';
	echo 'alert("Error")';
	echo '</script>';    
	echo "<script>setTimeout(\"location.href = 'http://localhost/admin_panel.php';\",1500);</script>";
}
}
?>