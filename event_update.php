<?php
$con = mysqli_connect("localhost","root","","event");

if (mysqli_connect_errno()){
	echo "Failed to connect to MySQL:" . mysqli_connect_error();
}
if(isset($_POST['submit'])){
	
 $name = $_POST['name'];
 $date = $_POST['date'];
 $budget = $_POST['budget'];
 $department = $_POST['department'];
 $level = $_POST['level'];
 $type = $_POST['type'];
 $income = $_POST['income'];
 $cmtSize = $_POST['cmtSize'];
 $ppt = $_POST['ppt'];
 $feedback = $_POST['feedback'];
 $aim = $_POST['aim'];
 $justification = $_POST['justification'];
 $objective = $_POST['objective'];
 $imp = $_POST['implementation'];
 $hasil_bengkel = $_POST['hasil_bengkel'];
 $schedule = $_POST['schedule'];
 $prepare_by = $_POST['pby'];
 $id = $_POST['id'];
$sql = "UPDATE pending_event SET caseDate='$date', caseName='$name',budget='$budget',department='$department',level='$level',type='$type',expectedIncome='$income'
,cmtSize='$cmtSize',expectedPtcpt='$ppt',expectedFeedback='$feedback',aim='$aim',justification='$justification',objective='$objective',implementation='$imp',hasil_bengkel='$hasil_bengkel',
schedule='$schedule',prepare_by='$prepare_by' WHERE pd_index=".$id;

 if(mysqli_query($con,$sql)){
	 echo '<script language="javascript">';
	 echo 'alert("Event Info Updated.")';
	 echo '</script>';
	 echo "<script>setTimeout(\"location.href = 'pending_list.php';\",500);</script>";
 }else{
	 echo '<script language="javascript">';
	 echo 'alert("Failed to update.")';
	 echo '</script>';
	 echo "<script>setTimeout(\"location.href = 'pending_list.php';\",500);</script>";
}
 //echo "1 record added";
 mysqli_close($con);
}
?>