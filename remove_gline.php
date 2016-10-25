<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-color: #eefffd ;
	overflow = auto;
	width=100%;
}

h1.topspace {
	font-family: Helvetica;
	color: white;
	position: relative;
	left:20px;
}
#header{
	background-color:  #006d5f;
    padding: 6px;
	postion: relative; 
}
h4.topspace{
	font-family: Helvetica;
	color: white;
	position: relative;
	left:20px;
}

p{
	font-family: Helvetica;
	color: black;
	text-align:center;
	float: clear;
	position: relative;
	top:120px;
	
}

a{
	color: white;
	text-decoration: none;
}
a.link{
	color:#AF0000;
	text-decoration: none;
}
a.update{
	color:blue;
	font-family:Helvetica;
	position: relative;
	left:20px;
}

input.final{
	width: 30%;
    background-color: #4CAF50;
    color: white;
    padding: 12px 12px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
	font-family: Helvetica;
	font-size:120%;
}
input.final:hover{
	background-color: #45a049;
}
input.final:active{
	background-color: #45a049;
	color: black;
	transform: translateY(4px);
}
table {
    border-collapse: collapse;
	border: 4px solid black;
    width: 90%;
	height:70%;
	position: relative;
	left:20px;
}

th, td {
	border: 4px solid black;
    padding: 6px;
    text-align: left;
    border-bottom: 1px solid #ddd;
	font-family:Helvetica;
	background-color:white;
}
tr:hover{background-color:#DCDCDC}

th {
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body>
<title>Event Management Guildline</title>
<div id="header">
<a class="header" href="http://localhost/homepage.html">
<h1 class="topspace">Event Mangement System</h1>
</a>
<h4 class="topspace">Event Guildline</h4>
</div>
<br></br>
<a class="update" href="http://localhost/update_guidline.php">
<h4>Add Guidline</h4>
</a>

<form method="post" action="">
<table>
  <tr>
	<th>Task ID</th>
    <th>Bureau/Department</th>
    <th>Task Description</th>
	<th>Useful Resources</th>
	
		
  </tr>
  
  <?php
  $con = new mysqli("localhost", "root", "", "gtest");
  if ($con->connect_error) {
     die("Connection failed: " . $con->connect_error);
}		
	$sql="SELECT * FROM checklist";
	$res = $con->query($sql);
	$current = '';
	while( $row = mysqli_fetch_array($res)) {
		echo "<tr>";
		echo "<td>".$row['c_id']."</td>";
		if($row['type'] == 'PIC'){
			echo "<td>Person in-Charge</td>";
		}elseif($row['type'] == 'TRE'){
			echo "<td>Treasurer</td>";
		}elseif($row['type'] == 'SEC'){
			echo "<td>Secretory</td>";
		}elseif($row['type'] == 'PP2'){
			echo "<td>Promotion</td>";
		}elseif($row['type'] == 'PUB'){
			echo "<td>Publication</td>";
		}elseif($row['type'] == 'PRO'){
			echo "<td>Program</td>";
		}elseif($row['type'] == 'TEC'){
			echo "<td>Technical</td>";
		}elseif($row['type'] == 'REG'){
			echo "<td>Register</td>";
		}elseif($row['type'] == 'LOG'){
			echo "<td>Logistc</td>";
		}elseif($row['type'] == 'FOD'){
			echo "<td>Food</td>";
		}else{
			echo "<td>Task Force</td>";
		}
		
		echo "<td>".$row['g_line']."</td>";
		if($row['url'] != null){
		echo "<td>";
		echo "<a href ='".$row['url']."' target='_blank' class='link'>";
		echo "Click Here</a>";
		echo "</td>";
		}else{
			echo "<td>-</td>";
		}
		
	}
  ?>
</table>
<br></br>
<label for="id">Choose the ID of task you want to delete:</label>
	<br></br>
<?php
	$con1 = new mysqli("localhost", "root", "", "gtest");
  if ($con1->connect_error) {
     die("Connection failed: " . $con1->connect_error);
}
	$id = "SELECT c_id FROM checklist";
	$res1 = $con1->query($id);
	$i = 1;
	echo "<select id='choose' name='choose'>";
	while( $row1 = mysqli_fetch_array($res1)) {
		echo "<option value='".$i."'>".$i."</option>";
		$i++;
	}
	echo "</select>";
?>
<input type="submit" name="submit" value="Submit" class="final">
</form>


</body>
</html>