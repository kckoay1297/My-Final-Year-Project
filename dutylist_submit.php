<?php
$did = $cid = $uid = null;
$target_dir = "upload/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$fileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
$tmp_name = $_FILES["fileToUpload"]["tmp_name"]; 

$filename  = basename($_FILES['fileToUpload']['name']);
$extension = pathinfo($filename, PATHINFO_EXTENSION);
$new       = $filename.'.'.$extension;


if(isset($_POST["submit"])) {
	$status = $_POST['status'];
	$did = $_POST['did'];
	$cid = $_POST['cid'];
	
    $uid = $_POST['uid'];
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        echo "" . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
		echo "" . $check["mime"] . ".";
        $uploadOk = 1;
        
    }
	$con = new mysqli("localhost", "root", "", "event");
if ($con->connect_error) {
     die("Connection failed: " . $con->connect_error);
}
echo $status;
$sql = "UPDATE event_checklist SET status=".$status." WHERE ec_index=".$did;
if(mysqli_query($con,$sql)){
	
	 }else{
		
	 }

}
$target_dir = "upload/".$cid."/";
$ei = $did;

$filename  = basename($_FILES['fileToUpload']['name']);
$extension = pathinfo($filename, PATHINFO_EXTENSION);
$newfile = $ei.'.'.$extension;

if (file_exists($newfile)) {
	unlink($newfile);
    //rename('upload/tmp/'.$_POST['overwrite_file_name'],'upload/'.$_POST['overwrite_file_name']);
    echo "file exist and try to rename it. ";
    $uploadOk = 1;
}
// Check file size
if ($_FILES["fileToUpload"]["size"] > 500000000000) {
    echo "Sorry, your file is too large.";
	echo '<script language="javascript">';
	echo 'alert("Exceed file size.")';
	echo '</script>';
    $uploadOk = 0;
}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
	echo '<script language="javascript">';
	echo 'alert("Sorry, your file was not uploaded.")';
	echo '</script>';
	
// if everything is ok, try to upload file
} else {
	$new = $target_dir.$newfile;
	
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $new)) {
        echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
		echo '<script language="javascript">';
		echo 'alert("File Uploaded.")';
		echo '</script>';
		
    } else {
       /* echo " Sorry, there was an error uploading your file.";
		echo '<script language="javascript">';
		echo 'alert("Error.")';
		echo '</script>';*/
		
    }
}
echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('Redirecting...')
    window.location.href='http://localhost/event_dutylist.php?cid=".$cid."&uid=".$uid."';
    </SCRIPT>");
?>