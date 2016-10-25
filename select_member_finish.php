<?php 
if(isset($_POST['submit'])){
	$uid = $_POST['uid'];
	$cid = $_POST['cid'];
	$bu = $_POST['bureau'];
	$po = $_POST['position'];
	$member = array();
	$po = array();
	$con = new mysqli("localhost","root","","profile");
	if($con->connect_error){
            die("Connection failed: " . $con->connect_error);
    }
	if(!empty($_POST['position'])) {
		 $i = 0;
		 foreach($_POST['position'] as $to_) {
			 $po[] = $to_;
			 //echo $po[$i]."<br>";
			 $i++;
		 }
	}
	if(!empty($_POST['bureau'])) {
		 $i = 0;
		 foreach($_POST['bureau'] as $to_) {
			 $bu[] = $to_;
			 //echo $bu[$i]."<br>";
			 $i++;
		 }
	}
	
    if(!empty($_POST['uid'])) {
		 $i = 0;
		 foreach($_POST['uid'] as $to_) {
			 $uid[] = $to_;
			// echo $uid[$i]."uid<br>";
			// echo $i."index<br>";
			 $i++;
		 }
	}
	$sqli = array();
	$len = count($po);
	echo $len;
	$conn1 = new mysqli("localhost", "root", "", "event");
				if ($conn1->connect_error) {
					die("Connection failed: " . $conn1->connect_error);
				}	
	for($x = 0;$x < $len; $x++){
				$sql = "INSERT INTO Invitation (memberid, caseID, position,biro) VALUES (".$uid[$x].", '$cid', '$po[$x]','$bu[$x]')";
				//echo $sql."<br>";
				//echo $x . "<br>";
				$sqli[] = $sql;
				
				if(mysqli_query($conn1,$sql)){
					
				}else{
					echo '<script language="javascript">';
					echo 'alert("Failed to update. OMG")';
					echo '</script>';
				}
				
				
	}
	$upd = "UPDATE hosting_event SET act2 = 1 WHERE caseID='$cid'";
	if(mysqli_query($conn1,$upd)){
		echo "successs";
	}else{
		echo "error";
	}
}
?>