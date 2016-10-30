<?php 
if(isset($_POST['submit'])){
    $from = $_POST['from']; // this is your Email address
    $to = $_POST['to']; // this is the sender's Email address
    $subject = "<b>".htmlspecialchars($_POST['subject'])."</b>";
	$content = $_POST['message'];
	$lt = htmlspecialchars($_POST['endtext']);
	$message = $content. "<br>". $lt."</br>";
	//$message = $content;
    $cc = $_POST['cc'];
	
    $header = "MIME-Version: 1.0\r\n";
    $header .= "Content-type: text/html; charset=iso-8859-1\r\n";
	$header .= "From: <".$from.">\r\n";
	//if($cc != null){
	//	$header .= "Cc: <".$cc.">\r\n";
	//}
	///echo $message;
    //echo $to;
	//echo $from;
	//echo $cc;
    $verify = mail($to,$subject,$message,$header);
    //mail($from,$subject2,$message2,$header2); // sends a copy of the message to the sender
	if($verify == true){
		 echo '<script language="javascript">';
		 echo 'alert("Email Sent Succesfully!")';
		 echo '</script>';  
		  echo "<script>setTimeout(\"location.href = 'http://localhost/new_home.php';\",1500);</script>";
	}else{
		 echo '<script language="javascript">';
		 echo 'alert("Email Sent.")';
		 echo '</script>';  
		  echo "<script>setTimeout(\"location.href = 'http://localhost/new_home.php';\",1500);</script>";
	}
    
    // You can also use header('Location: thank_you.php'); to redirect to another page.
    }
?>