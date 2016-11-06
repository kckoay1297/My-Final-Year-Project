<?php
$con = mysqli_connect("localhost","root","","casebase");

if (mysqli_connect_errno()){
	echo "Failed to connect to MySQL:" . mysqli_connect_error();
}
if(isset($_POST['submit'])){  
  $date = $_POST['date'];
 $expenses = $_POST['expenses'];
 $budget = $_POST['budget'];
 $level = $_POST['level']; 
 $income = $_POST['income'];
 $cmtSize = $_POST['cSize'];
 $ppt = $_POST['ppt'];
 $feedback = $_POST['feedback'];
 $desc = $_POST['desc'];
 $id= $_POST['cid'];
$sql = "UPDATE weight SET date=".$date.", budget=".$budget.", expenses=".$expenses.", level = '$level', income=".$income.",
cSize=".$cmtSize.", ppt=".$ppt.", feedback=".$feedback.", description=".$desc." WHERE windex=".$id;

 if(mysqli_query($con,$sql)){
	 echo '<script language="javascript">';
	 echo 'alert("Case Info Updated.")';
	 echo '</script>';
	 echo "<script>setTimeout(\"location.href = 'http://localhost/admin_panel.php';\",1500);</script>";
 }else{
	 echo '<script language="javascript">';
	 echo 'alert("Failed to update.")';
	 echo '</script>';
	 echo "<script>setTimeout(\"location.href = 'http://localhost/admin_panel.php';\",1500);</script>";
}
 //echo "1 record added";
 mysqli_close($con);
}
?>