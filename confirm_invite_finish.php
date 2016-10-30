<?php 
$uid = $_GET['uid'];
$cid = $_GET['id'];
$confirm = $_GET['confirm'];
$fname = $lname = $po = $de = null;
$con = new mysqli("localhost", "root", "", "event");
	// Check connection
	if ($con->connect_error) {
     die("Connection failed: " . $conn->connect_error);
}
$sql = "UPDATE Invitation SET confirm = ".$confirm." WHERE caseID = '$cid' AND memberid=".$uid;
echo $sql;
if(mysqli_query($con,$sql)){
	if($confirm == 1){
	echo '<script language="javascript">';
	 echo 'alert("Event Confirm.")';
	 echo '</script>';
	 }else{
		 echo '<script language="javascript">';
	 echo 'alert("Rejected.")';
	 echo '</script>';
	 }
	 }else{
	echo '<script language="javascript">';
	 echo 'alert("Failed to update.")';
	 echo '</script>';
	 }
 $profile = "SELECT * FROM user WHERE id = ".$uid;
 $con1 = new mysqli("localhost", "root", "", "profile");
 $res = $con1->query($profile);
if($res->num_rows > 0){
	while( $row = mysqli_fetch_array($res)) {
		$fname = $row['firstname'];
		$lname = $row['lastname'];
	}
}
$event = "SELECT * FROM Invitation WHERE memberid=".$uid;
$res1 = $con->query($event);
if($res1->num_rows > 0){
	while( $row1 = mysqli_fetch_array($res1)) {
		$po = $row1['position'];
		$de = $row1['biro'];
	}
}
 
 $sql1 = "INSERT INTO member_record( event_id, member_id, name, lastname, position, department) VALUES ('$cid','$uid','$fname','$lname','$po','$de')";
 echo $sql1;
 if(mysqli_query($con,$sql1)){
	 //echo "It worked!";
	 echo "<script>setTimeout(\"location.href = 'http://localhost/new_home.php';\",1500);</script>";
 }else{
	 //echo "No";
	 echo "<script>setTimeout(\"location.href = 'http://localhost/new_home.php';\",1500);</script>";
 }
?>