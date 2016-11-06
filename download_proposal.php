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
echo nl2br("<style 'text-align: center'><b>Proposal: ".$row['caseName']."</b></style> \n");
echo " <br>";
echo nl2br("Date: \n".$row['caseDate']." \n");
echo " <br>";
echo nl2br("Aim:  \n".$row['aim']." \n");
echo " <br>";
echo nl2br("Justification:  \n".$row['justification']." \n");
echo " <br>";
echo nl2br("Objective:  \n".$row['objective']." \n");
echo " <br>";
echo nl2br("Implementation: \n".$row['implementation']."\n");
echo " <br>";
echo nl2br("Schedule:  \n".$row['schedule']." \n");
echo " <br>";
echo nl2br("Budget: \n RM:".$row['budget']." \n");
echo " <br>";
echo nl2br("Hasil Bengkel: \n".$row['hasil_bengkel']." \n");
echo " <br>";
echo nl2br("Prepared by: \n".$row['prepare_by']." \n");
echo "<br></br>";

			}
	
	}else{
		echo "<b>Error</b>";
	}
echo "</body>";
echo "</html>";
?>