<?php 
if(isset($_POST['submit'])) 
{ 
    $url = $_POST['url'];
	$name= $_POST['name'];
	
	$update = "INSERT INTO link (name, link) VALUES ('$name','$url')";
	$con = mysqli_connect("localhost","root","","event");
	if (mysqli_connect_errno()){
	echo "Failed to connect to MySQL:" . mysqli_connect_error();
}
	if(mysqli_query($con,$update)){
		echo '<script language="javascript">';
		 echo 'alert("Add Succesfully!")';
		 echo '</script>';  
		 echo "<script>setTimeout(\"location.href = 'admin_panel.php';\",1500);</script>";
	}else{
	 echo '<script language="javascript">';
		 echo 'alert("Error!")';
		 echo '</script>';  
		  echo "<script>setTimeout(\"location.href = 'admin_panel.php';\",1500);</script>";
	}
}
?>