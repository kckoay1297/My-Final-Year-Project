<?php 
if(isset($_POST['submit'])) 
{ 
$name = $_POST['name'];
$dir ="template/".$name;
if(file_exists($dir)){
		echo '<script language="javascript">';
		 echo 'alert("Folder Exists!")';
		 echo '</script>';  
		 echo "<script>setTimeout(\"location.href = 'add_folder.php';\",1500);</script>";
}else{
	mkdir($dir);
	echo '<script language="javascript">';
		 echo 'alert("Folder Created!")';
		 echo '</script>';  
		 echo "<script>setTimeout(\"location.href = 'admin_panel.php';\",1500);</script>";
}

}
?>