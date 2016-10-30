<?php 
if(isset($_POST['submit'])) 
{ 
	$dir1 = $_POST['dir'];
	$name = $_POST['name'];
	$dir = "template/".$dir1;
	rename($dir, "template/".$name);
		 echo '<script language="javascript">';
		 echo 'alert("Folder Name Edited Succesfully!")';
		 echo '</script>';  
		 echo "<script>setTimeout(\"location.href = 'create_folder.php';\",1500);</script>";
}
?>