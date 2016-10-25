<?php

mysql_connect("localhost", "root", "");
mysql_select_db("event");

if(isset($_GET['s']) && $_GET['s'] != ''){
	$s = $_GET['s'];
	$sql = "SELECT * FROM `checklist` WHERE task LIKE '%$s%'";
	$result = mysql_query($sql);
	while($row = mysql_fetch_array($result)){
		$url = $row['name'];
		$title = $row['task'];
		echo "<div style='' id='searchtitle'><p>". $title ."</p></div>";
	}
	
}

?>