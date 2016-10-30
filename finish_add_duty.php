<?php 
if(isset($_POST['submit'])) 
{ 
    $duty = htmlspecialchars($_POST['duty']);
	$url = $_POST['url'];
	$uid= $_POST['uid'];
	$cid = $_POST['cid'];
	$url = $_POST['url'];
	$url2 = $_POST['url2'];
	
    echo $url."<br>".$url2."<br>";
	$update = "INSERT INTO event_checklist (memberid, caseID, duty, url, url2) VALUES ('$uid','$cid','$duty','$url','$url2')";
	echo $update;
	$con = mysqli_connect("localhost","root","","event");
	if (mysqli_connect_errno()){
	echo "Failed to connect to MySQL:" . mysqli_connect_error();
}
	if(mysqli_query($con,$update)){
		echo '<script language="javascript">';
		 echo 'alert("Duty Sent Succesfully!")';
		 echo '</script>';  
		 echo "<script>setTimeout(\"location.href = 'add_dutylist.php?uid=".$uid."&cid=".$cid."';\",1500);</script>";
	}else{
	 echo '<script language="javascript">';
		 echo 'alert("Error!")';
		 echo '</script>';  
		 echo "<script>setTimeout(\"location.href = 'add_dutylist.php?uid=".$uid."&cid=".$cid."';\",1500);</script>";
	}
}
?>