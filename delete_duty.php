<?php 
$uid = $_GET['uid'];
$eid = $_GET['eid'];
$cid = $_GET['cid'];
$del = "DELETE FROM event_checklist WHERE ec_index =".$eid;
$conn1 = new mysqli("localhost", "root", "", "event");
	if ($conn1->connect_error) {
    die("Connection failed: " . $conn1->connect_error);
}
	
	if(mysqli_query($conn1,$del)){
		echo '<script language="javascript">';
	echo 'alert("Info Deleted.")';
	echo '</script>';    
	echo "<script>setTimeout(\"location.href = 'http://localhost/event_dutylist.php?cid=".$cid."&uid=".$uid."';\",800);</script>";
	}else{
	echo '<script language="javascript">';
	echo 'alert("Info Deleted.")';
	echo '</script>';    
	echo "<script>setTimeout(\"location.href = 'http://localhost/event_dutylist.php?cid=".$cid."&uid=".$uid."';\",2000);</script>";
	}
	$conn1->close();
?>