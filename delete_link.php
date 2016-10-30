<?php
$cid = $_GET['id'];

$del = "DELETE FROM link WHERE l_index =".$cid;
$conn1 = new mysqli("localhost", "root", "", "event");
	if ($conn1->connect_error) {
    die("Connection failed: " . $conn1->connect_error);
}
	
	if(mysqli_query($conn1,$del)){
		echo '<script language="javascript">';
	echo 'alert("Link Deleted.")';
	echo '</script>';    
	echo "<script>setTimeout(\"location.href = 'admin_panel.php';\",800);</script>";
	}else{
	echo '<script language="javascript">';
	echo 'alert("Link Not Deleted.")';
	echo '</script>';    
	echo "<script>setTimeout(\"location.href = 'admin_panel.php';\",800);</script>";
	}

	$conn1->close();
	
?>