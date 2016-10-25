<!DOCTYPE html>
<html>
<style>
body {
    background-color: #eefffd ;
	overflow = auto;
	width=100%;
}
#header{
	background-color:  #006d5f;
    padding: 6px;
	postion: relative; 
}
h1,h4.topspace {
	font-family: Helvetica;
	color: white;
	position: relative;
	left:20px;
	
}

a{
	color: white;
	text-decoration: none;
}
<--input[type=text], select {
    width: 100%;
    padding: 12px 12px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
	font-family: Helvetica;
	font-size:120%;
}-->

button.choice {
    width: 100%;
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

button.choice:hover {
    background-color: #45a049;
}

button.choice:active, button.choice:focus {
    background-color: #45a049;
	color: black;
	transform: translateY(4px);
}

input.input{
	padding: 12px 12px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    resize: none;
	font-family: Helvetica;
	font-size: 14px;
}

input.final{
	width: 100%;
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

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}


label {
	font-family: Helvetica;
}
textarea {
    width: 100%;
    height: 200px;
    padding: 12px 12px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    resize: none;
	font-family: Helvetica;
	font-size: 14px;
}
textarea.leavetalk {
    width: 100%;
    height: 140px;
    padding: 12px 12px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    resize: none;
	font-family: Helvetica;
}
a.edit{
	color:blue;
	text-decoration: initial;
}
</style>
<body>
<title>Event Management: Email Edit</title>
<div id="header">
<a class="header" href="http://localhost/homepage.html">
<h1 class="topspace">Event Mangement System</h1>
</a>
<h4 class="topspace">Email</h4>
</div>
<br></br>
<div>
	<h2 class="topspace">Edit Your Template</h2>
	<a class="edit" href="http://localhost/email_edit_default.php"><h5 class="link"> (Reset to Default) </h5></a>
	<form method="post" action="email_edit.php">
	<?php
	$conn = new mysqli("localhost", "root", "", "etest");
	// Check connection
	if ($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
}		
	$sql="SELECT template FROM tempt";
	$res = $conn->query($sql);
	$id = 1; 
	if ($res->num_rows > 0) {
	
		
		// output data of each row
			while( $row = mysqli_fetch_array($res)) {
			if($id == 1){
			echo "<h3 class='topspace'>Edit Recruitment</h3>";
			echo "<textarea id = 't1' name='t1' class='edit'>";
			echo $row["template"];
			echo "</textarea>";
			}elseif($id == 2){
				echo "<h3 class='topspace'>Edit Invitation</h3>";
			echo "<textarea id = 't2' name='t2' class='edit'>";
			echo $row["template"];
			echo "</textarea>";
			}elseif($id ==3){
				echo "<h3 class='topspace'>Edit Feedback</h3>";
			echo "<textarea id = 't3' name='t3' class='edit'>";
			echo $row["template"];
			echo "</textarea>";
			}else{
				echo "<h3 class='topspace'>Edit Other</h3>";
			echo "<textarea id = 't4' name='t4' class='edit'>";
			echo $row["template"];
			echo "</textarea>";
			}
			$id++;
	}
		
	} else {
		echo "0 results";
	} 

$conn->close();
?>
	<h3 class='topspace'>Edit Leavetalking</h3>
<?php
	$conn1 = new mysqli("localhost", "root", "", "etest");
	if ($conn1->connect_error) {
    die("Connection failed: " . $conn1->connect_error);
}
	$ltsql = "SELECT end_text FROM list WHERE name = 'KCKoay'";
	$res = $conn1->query($ltsql);
	if ($res->num_rows > 0) {
		echo "<textarea id='leavetalk' name='leavetalk'>";
		while($row1 = $res->fetch_assoc()) {
			echo $row1["end_text"];
		}
		echo "</textarea>";
	}else {
		echo "0 results";
	}
	$conn1->close();
?>
    <input type="submit" name="submit" value="Submit" class="final">
	
</div>
</body>
</html>


