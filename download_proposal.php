<?php
$id = 0;
$id = $_GET['pid'];
$con = new mysqli("localhost", "root", "", "event");
	if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
	}
	$sql = "SELECT * FROM pending_event WHERE pd_index =".$id;//.strtolower($id);
	$res=$con->query($sql);
	if ($res->num_rows > 0) {
		while( $row = mysqli_fetch_array($res)) {
			header("Content-type: application/vnd.ms-word");
header("Content-Disposition: attachment;Filename=Proposal ".$row['caseName'].".doc");

echo "<html>";
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">";
echo "<body>";
echo "<b>Proposal:".$row['caseName']."</b>";
echo "<br></br>";
echo "<b>Date:".$row['caseDate']."</b>";
echo "<br></br>";
echo "<b>Aim:<b> <br></br><b>".$row['aim']."</b>";
echo "<br></br>";
echo "<b>Justification:<b> <br></br><b>".$row['justification']."</b>";
echo "<br></br>";
echo "<b>Objective:<b> <br></br><b>".$row['objective']."</b>";
echo "<br></br>";
echo "<b>Schedule:<b> <br></br><b>".$row['schedule']."</b>";
echo "<br></br>";
echo "<b>Budget:<b> <br></br><b>RM:".$row['budget']."</b>";
echo "<br></br>";
echo "<b>Hasil Bengkel:<b> <br></br><b>".$row['hasil_bengkel']."</b>";
echo "<br></br>";
echo "<b>Prepared by:<b> <br></br><b>".$row['prepare_by']."</b>";
echo "<br></br>";

			}
	
	}else{
		echo "<b>Error</b>";
	}
echo "</body>";
echo "</html>";
?>