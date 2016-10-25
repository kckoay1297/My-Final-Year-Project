<?php
$cid = $_GET["cid"];
$uid = $_GET["uid"];

$con = mysqli_connect("localhost","root","","event");

if (mysqli_connect_errno()){
	echo "Failed to connect to MySQL:" . mysqli_connect_error();
}
$sql ="UPDATE hosting_event SET act1=1 WHERE caseID = '$cid'";
if(mysqli_query($con,$sql)){
	 echo "working";
 }else{
	 echo "not working";
}

$con1 = mysqli_connect("localhost","root","","profile");
$fname = $lname = null;
$sql1 = "SELECT firstname, lastname FROM user WHERE id=".$uid;
$res1 = $con1->query($sql1);
	if ($res1->num_rows > 0) {
		while( $row1 = mysqli_fetch_array($res1)) {
		$fname = $row1['firstname'];
		$lname = $row1['lastname'];
		}
	}else{
		echo "0 result";
	}
	$ename = $eid = null;
	$sql2 = "SELECT * FROM event_record WHERE caseID='$cid'";
	$res2 = $con->query($sql2);
	if ($res2->num_rows > 0) {
		while( $row2 = mysqli_fetch_array($res2)) {
			$ename = $row2['caseName'];
			$eid = $row2['cIndex'];
		}
	}else{
		echo "0 result";
	}
echo $fname,$lname;

				$thisdir = getcwd(); 
				$new_dir = $cid;
				error_reporting(0);
				$filename = '/upload/'.$new_dir;

				if (is_dir($filename)) {
					//echo "The file $filename exists";
				} else {
				//echo "file x exist la";
				try{
					if(mkdir($thisdir . "/upload/" . $new_dir, 0777)){
						//echo "Directory has been created successfully...";
					}
					else{
						//echo "Failed to create directory...";
					} 
				} catch(Exception $e){
					//echo $e;
					
				}
    

}

$sql3 = "INSERT INTO member_record(event_id,event_index,event_name,member_id,name,lastname,position,department) VALUES ('$cid','$eid','$ename','$uid','$fname','$lname','president','central committee')";
if(mysqli_query($con,$sql3)){
	 echo '<script language="javascript">';
	echo 'alert("Event Started.")';
	echo '</script>';    
	echo "<script>setTimeout(\"location.href = 'http://localhost/view_hosting_event.php?id=".$cid."&uid=".$uid."';\",1500);</script>";
 }else{
	 echo "not working";
}

?>