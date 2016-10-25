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
			
$sql = "UPDATE event_record SET caseDate='$date', budget = '$budget',department = '$department',level = '$level',type = '$type',actualIncome = '$income',cmtSize = '$cSize',
actualPtcpt='$aPpt',feedback='$feedback',description='$desc',status='$status' WHERE caseID='$cid'";


 if(mysqli_query($con,$sql)){
	 echo '<script language="javascript">';
	 echo 'alert("Event Updated.")';
	 echo '</script>';
 }else{
	 echo '<script language="javascript">';
	 echo 'alert("Failed to created")';
	 echo '</script>';
}
 //echo "1 record added";
 mysqli_close($con);
}
?>