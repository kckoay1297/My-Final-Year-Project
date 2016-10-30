<?php 
  $con = mysqli_connect("localhost","root","","event");
	if (mysqli_connect_errno()){
	echo "Failed to connect to MySQL:" . mysqli_connect_error();
}
$new = null;
$target_dir = "template/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
	$dir = $_POST['dir'];
	$name = $_POST['name'];
	echo $name."<br>";
	//echo $dir;
    
}
$target_dir = $dir."/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
echo $target_file."<br>";
// Check if file already exists

// Check file size
if ($_FILES["fileToUpload"]["size"] > 5000000000) {
	echo '<script language="javascript">';
		 echo 'alert("Sorry, your file is too large.")';
		 echo '</script>';  
    //echo "Sorry, your file is too large.";
    $uploadOk = 0;
}

$filename  = basename($_FILES['fileToUpload']['name']);
$extension = pathinfo($filename, PATHINFO_EXTENSION);
$newfile = $name.'.'.$extension;
	$del = $target_dir.$newfile;
	$delete = "DELETE FROM link WHERE link='$del'";
	echo $delete;
	if(mysqli_query($con,$delete)){
	}else{
		
	}
if (file_exists($newfile)) {
	unlink($newfile);
	
    //rename('upload/tmp/'.$_POST['overwrite_file_name'],'upload/'.$_POST['overwrite_file_name']);
    echo "file exist and try to rename it. ";
    $uploadOk = 1;
}


// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
	$new = $target_dir.$newfile;
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $new)) {
		echo '<script language="javascript">';
		 echo 'alert("The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.")';
		 echo '</script>';  
        //echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
    } else {
		echo '<script language="javascript">';
		 echo 'alert("Sorry, there was an error uploading your file.")';
		 echo '</script>';  
        //echo "Sorry, there was an error uploading your file.";
    }
}


 //echo $new;

	$update = "INSERT INTO link (name,link) VALUES ('$name','$new')";
	if(mysqli_query($con,$update)){
		echo '<script language="javascript">';
		 echo 'alert("File Uploaded!")';
		 echo '</script>';  
		 echo "<script>setTimeout(\"location.href = 'create_folder.php';\",500);</script>";
	}else{
	 echo '<script language="javascript">';
		 echo 'alert("File Uploaded! Link update not done!")';
		 echo '</script>';  
		 echo "<script>setTimeout(\"location.href = 'create_folder.php';\",500);</script>";
	}
  
?>