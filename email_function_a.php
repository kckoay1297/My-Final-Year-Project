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
a.edit{
	color:blue;
	text-decoration: initial;
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

</style>
<body>
<title>Event Management: Email</title>
<div id="header">
<a class="header" href="http://localhost/homepage.html">
<h1 class="topspace">Event Mangement System</h1>
</a>
<h4 class="topspace">Email</h4>
</div>
<br></br>
<div>
	
	<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
    <label for="template">Type of Template</label>
	<a class="edit" href="http://localhost/email_edit_info.php">(Edit Template)</a>
	<br></br>
    <button id='submit' type="submit" name = "choice" class = "choice" <?php if (isset($choice) && $choice=="1") echo "checked";?> value="1">Recruitment</button>
	<br></br>
	<button id='submit' type="submit" name = "choice" class = "choice" <?php if (isset($choice) && $choice=="2") echo "checked";?> value="2">Invitation</button>
	<br></br>
	<button id='submit' type="submit" name = "choice" class = "choice" <?php if (isset($choice) && $choice=="3") echo "checked";?> value="3">Feedback</button>
	<br></br>
	<button id='submit' type="submit" name = "choice" class = "choice" <?php if (isset($choice) && $choice=="4") echo "checked";?> value="4">None</button>
	<br></br>
	</form>
	
	<form method="post" action="efunction.php">
	<label for="email">Your Email:</label>
	<br></br>
    <input type="email" id="email" name="email" class="input" value="johny.1297@gmail.com" required/>
	<br> </br>

    <label for="subject">Subject:</label>
	<br> </br>
    <input type="text" id="subject" name="subject" class="input" required/>
	<br> </br>
	<label for="content">Content:</label>
	<?php
		$choice = "";
		$myfile = fopen('C:\xampp\htdocs\choice\choice.txt', "w") or die("Unable to open file!");
		if ($_SERVER["REQUEST_METHOD"] == "POST") {
			$choice = test_input($_POST["choice"]);
			//echo $choice;
			$myfile = fwrite($myfile, $choice);
		}

		function test_input($data) {
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
		}
			$i = file_get_contents('C:\xampp\htdocs\choice\choice.txt');
			//echo $i;
			// Create connection
			$conn = new mysqli("localhost", "root", "", "etest");
	// Check connection
	if ($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
}
		if($i == "1"){
			$sql = "SELECT template FROM tempt WHERE temp_id = 1";
		}elseif($i == "2"){
			$sql = "SELECT template FROM tempt WHERE temp_id = 2";
		}elseif($i == "3"){
			$sql = "SELECT template FROM tempt WHERE temp_id = 3";
		}else{
			$sql = "SELECT template FROM tempt WHERE temp_id = 4"; 
		}
		$result = $conn->query($sql);
	if ($result->num_rows > 0) {
	
		echo "<textarea id='content' name='content'>";
		// output data of each row
		while($row = $result->fetch_assoc()) {
			echo $row["template"];
		}
		echo "</textarea>";
	} else {
		echo "0 results";
	}

$conn->close();
?>
	<label for="leavetalk">Leavetalk:</label>
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
	<label for="Forward">Forward to:</label>
	<br></br>
	<input type="email" id="parti" name="parti" class="input" value="" required/>
	<br></br>
	<label for="CC">CC: (optional)</label>
	<br></br>
	<input type="email" id="cc" name="cc" class="input" value="">
	
    <input type="submit" name="submit" value="Submit" class="final">
	
</div>
</body>
</html>


