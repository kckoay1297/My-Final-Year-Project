<html>
     
	<script src="js/bootstrap.min.js"></script>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<title>Event Mangement System: Invite More People</title>
	</style>
</head>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			
			<a class="header" href="http://localhost/new_home.php">
			<h1 class="topspace">Event Management System</h1>
			<h4 class="topspace">Invite More People</h4>
			</a>
		</div>
	</div>
</div>

<br></br>
<div class="table-responsive container">
<form method="post" action="member_select_position.php">          
<table class="table table-condensed table-striped table-bordered">
<thead>
  <tr>
    <th>Choose:</th> 
	<th>Name </th>
    <th>Email </th>
    <th>Department </th>
	<th>Position </th>
	<th>Phone </th>
	</tr>
</thead>

  <tbody>
<?php
$cid = $_GET['cid'];
$uid = $_GET['uid'];
$selected = array();
$con = new mysqli("localhost", "root", "", "event");
if($con->connect_error){
      die("Connection failed: " . $con->connect_error);
}
$con1 = new mysqli("localhost", "root", "", "profile");
if($con1->connect_error){
      die("Connection failed: " . $con1->connect_error);
}
$sql = "SELECT * FROM invitation WHERE caseID = '$cid'";
$res = $con->query($sql);
while( $row = mysqli_fetch_array($res)) {
	$selected[] = $row['memberid'];
}
$len = count($selected);
$qql = "";
for($x = 0;$x < $len; $x++){
				if($x == 0){
					$qql = "SELECT * FROM user WHERE id!=".$selected[$x]." AND id!=".$uid." AND ";
				}elseif($x > 0 AND $x < $len-1){
					$qql.= "id != ".$selected[$x]." AND ";
				}elseif($len == 1){
					$qql = "SELECT * FROM user WHERE id!=".$selected[$x]." AND id !=".$uid;
				}elseif($len == 0){
					$qql = "SELECT * FROM user WHERE id !=".$uid;
				}
				else{
					$qql.= "id != ".$selected[$x];
				}
}
$res1 = $con1->query($qql);
while($row1 = mysqli_fetch_array($res1)){
	echo "<tr>";
	echo "<td><label class='checkbox-inline'><input type='checkbox' name='to_list[]' value='".$row1['id']."'>Choose </label></td>";			
	echo "<td><a href='user_profile.php?id=".$row1["id"]."' target='_blank'>".$row1['firstname']." " .$row1['lastname']. "</a></td>";
	echo "<td>".$row1['email']."</td>";
	echo "<td>".$row1['phone']."</td>";
	echo "<td>".$row1['department']."</td>";
	echo "<td>".$row1['designation']."</td>";
	echo "</tr>";
}    

echo "<input type='hidden' name='cid' value='$cid'>";

?>

</tbody>
</table>

<input type='submit' name='submit' value='Submit' class='btn btn-success btn-md btn-block'>
 
</form>
</table>
</html>