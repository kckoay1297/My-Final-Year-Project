<?php
$con = mysqli_connect("localhost","root","","event");

if (mysqli_connect_errno()){
	echo "Failed to connect to MySQL:" . mysqli_connect_error();
}
if(isset($_POST['submit'])){  
			$date = $_POST['date'];
			$budget = $_POST['budget'];
			$department = $_POST['department'];
			$type = $_POST['type'];
			$level = $_POST['level'];
			$income = $_POST['income'];
			$cSize = $_POST['cSize'];
			$feedback = $_POST['feedback'];
			$aPpt = $_POST['aPpt'];
			$desc = $_POST['desc'];
			$status =$_POST['status'];
			$cid =$_POST['cid'];
			$status2 = $_POST['status2'];
			if($status2 == 1 AND $status='success'){
				$chg = "UPDATE hosting_event SET act2=3 WHERE caseID ='$cid'";
			}elseif($status2 == 1 AND $status='setback'){
				$chg = "UPDATE hosting_event SET act2=-1 WHERE caseID ='$cid'";
			}elseif($status2 == 1 AND $status='cancelled'){
				$chg = "UPDATE hosting_event SET act2=-1 WHERE caseID ='$cid'";
			}else{
				$chg = "UPDATE hosting_event SET act2=2 WHERE caseID ='$cid'";
			}
			if(mysqli_query($con,$chg)){
$sql = "UPDATE event_record SET caseDate='$date', budget = '$budget',department = '$department',level = '$level',type = '$type',actualIncome = '$income',cmtSize = '$cSize',
actualPtcpt='$aPpt',feedback='$feedback',description='$desc',status='$status' WHERE caseID='$cid'";


 if(mysqli_query($con,$sql)){
	 echo '<script language="javascript">';
	 echo 'alert("Event Updated.")';
	 echo '</script>';
	 echo "<script>setTimeout(\"location.href = 'http://localhost/hosting_event.php';\",1500);</script>";
 }else{
	 echo '<script language="javascript">';
	 echo 'alert("Failed to created")';
	 echo '</script>';
	  echo "<script>setTimeout(\"location.href = 'http://localhost/hosting_event.php';\",1500);</script>";
}
			}else{
				echo "<p>Error Occured</p>";
			}
 //echo "1 record added";
 mysqli_close($con);
}
?>