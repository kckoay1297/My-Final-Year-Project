<?php 
$name = $_GET['name'];
$dirPath ="template/".$name;
recursiveRemoveDirectory($dirPath);
		 echo '<script language="javascript">';
		 echo 'alert("Folder Deleted Succesfully!")';
		 echo '</script>';  
		 echo "<script>setTimeout(\"location.href = 'create_folder.php';\",1500);</script>";
	function recursiveRemoveDirectory($directory){
    foreach(glob("{$directory}/*") as $file)
    {
        if(is_dir($file)) { 
            recursiveRemoveDirectory($file);
        } else {
            unlink($file);
        }
    }
    rmdir($directory);
}
?>