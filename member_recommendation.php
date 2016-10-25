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
	<title>Event Mangement System: Select People</title>
<script>
		var people, asc1 = 1,
            asc2 = 1,
            asc3 = 1;
        window.onload = function () {
            people = document.getElementById("member");
        }

        function sort_table(tbody, col, asc) {
            var rows = tbody.rows,
                rlen = rows.length,
                arr = new Array(),
                i, j, cells, clen;
            // fill the array with values from the table
            for (i = 0; i < rlen; i++) {
                cells = rows[i].cells;
                clen = cells.length;
                arr[i] = new Array();
                for (j = 0; j < clen; j++) {
                    arr[i][j] = cells[j].innerHTML;
                }
            }
            // sort the array by the specified column number (col) and order (asc)
            arr.sort(function (a, b) {
                return (a[col] == b[col]) ? 0 : ((a[col] > b[col]) ? asc : -1 * asc);
            });
            // replace existing rows with new rows created from the sorted array
            for (i = 0; i < rlen; i++) {
                rows[i].innerHTML = "<td>" + arr[i].join("</td><td>") + "</td>";
            }
        }
		
</script>
<style>
body {
    background: url("http://www.borongaja.com/data_images/out/25/663969-night-urban-landscape.jpg") ;
	overflow = auto;
	width=100%;
	margin: 0 auto;
	
}

#wrapper {
	overflow: hidden;
	background: #FFFFFF;
	
box-shadow: 
        inset 0px 11px 8px -20px #CCC,
        inset 0px -11px 8px -10px #CCC;
}

.container {
	width: 1200px;
	margin: 0px auto;
}
.clearfix {
	clear: both;
}
#header-wrapper {
	overflow: hidden;
	height: 150px;
	background-color: black;
	//border-left: 60px solid #282828;
}
#header {
	width: 1200px;
	height: 150px;
	margin: 0 auto;
    padding: 1px;
	postion: relative; 
}
#logo {
	float: left;
	width: 507 px;
	height: 50 px;
	//padding: 0px 0px 0px 40px;
}
h1.topspace {
	font-size: 35px; 
	letter-spacing: -1px; 
	color: white; 
	text-transform: uppercase; 
	text-shadow: 1px 1px 0 #000, margin: 10px 0 24px; 
	//text-align: center; 
	line-height: 50px;
	position: relative;
	left:1px;
}

h4.topspace{
	font-size: 25px; 
	letter-spacing: -1px; 
	color: white; 
	text-transform: uppercase; 
	text-shadow: 1px 1px 0 #000, margin: 10px 0 24px; 
	//text-align: center; 
	line-height: 50px;
	position: relative;
	left:1px;
	text-decoration: underline;
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

thead{
	background-color:#333;
	color:white;
}
tbody{
	background-color:white;
}
th:hover{
	color:#FDFFD0;
}
td:hover{
	background-color:#FDFFD0;
}
i.sort:hover{
	color:#FF8663;
}
@media (max-width:767px) {
.logo {
	margin: 15px;
	float: none;
	text-align: center;
}
}
p{
	font-family: Helvetica;
	color: black;
	text-align:center;
	float: clear;
	position: relative;
	top:120px;
	
}
a {
    color:black;
}
a.header{
	color: white;
	text-decoration: none;
}

ul.topnav {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

ul.topnav li {float: left;}

ul.topnav li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

ul.topnav li a:hover:not(.active) {background-color: #111;}

ul.topnav li a.active {background-color: #4CAF50;}

ul.topnav li.right {float: right;}

@media screen and (max-width: 600px){
    ul.topnav li.right, 
    ul.topnav li {float: none;}
}
</style>
</head>
<div id="header-wrapper">
	<div id="header">
		<div id="logo">
			
			<a class="header" href="http://localhost/new_home.php">
			<h1 class="topspace">Event Management System</h1>
			<h4 class="topspace">Email: Select People</h4>
			</a>
		</div>
	</div>
</div>
<div id="nav">
<ul class="topnav">
  <li><a class="active" href="http://localhost/new_home.php">Home</a></li>
  <li><a href="http://localhost/profile.php">Profile</a></li>
  <li><a href="http://localhost/memberlist.php">Member</a></li>
  <li><a href="http://localhost/email_start.php">Email</a></li>
  <li><a href="http://localhost/doc_list.php">Documents</a></li>
  <li><a href="http://localhost/readme.docx">About</a></li>
  <li><a href="http://localhost/readme.docx">About</a></li>
  <li class="right"><a href="#about">Logout</a></li>
</ul>
</div>
<br></br>
<div class="table-responsive container">
<form method="post" action="member_select_position.php">          
<table class="table table-condensed table-striped table-bordered">
<thead>
  <tr>
    <th>Choose:</th> 
	<th>Name <i class="fa fa-sort sort" onclick="sort_table(people, 0, asc1); asc1 *= -1; asc2 = 1; asc3 = 1;"></i></th>
    <th>Email <i  class="fa fa-sort sort" onclick="sort_table(people, 1, asc1); asc1 *= -1; asc2 = 1; asc3 = 1;"></i></th>
    <th>Department <i  class="fa fa-sort sort" onclick="sort_table(people, 2, asc1); asc1 *= -1; asc2 = 1; asc3 = 1;"></i></th>
	<th>Position <i class="fa fa-sort sort" onclick="sort_table(people, 3, asc1); asc1 *= -1; asc2 = 1; asc3 = 1;"></i></th>
	<th>Phone <i class="fa fa-sort sort" onclick="sort_table(people, 4, asc1); asc1 *= -1; asc2 = 1; asc3 = 1;"></i></th>
	</tr>
</thead>

  <tbody id="member">
<?php
        
        class SimMeasure {
        
         public $date1;
         public $budget1;
         public $department1;
	 public $type1;
	 public $level1;
	 public $aIncome1;
	 public $cSize1;
	 public $feedback1;
	 public $aPpt1;
		 
	 public $date2;
         public $budget2;
         public $department2;
         public $type2;
	 public $level2;
	 public $eIncome2;
	 public $aIncome2;
	 public $cSize2;
	 public $feedback2;
	 public $ePpt2;
	 public $aPpt2;
         
        public function __construct($date1, $date2, $budget1, $budget2, $department1, $department2, $level1, $level2,$aIncome1, $aIncome2, $feedback1, $feedback2, $cSize1, $cSize2,$aPpt1, $aPpt2) {
             $this->$date1 = $date1;
             $this->$budget1 = $budget1;
             //$this->$department1 = $department1;
             $this->$level1 = $level1;
             $this->$aIncome1 = $aIncome1;
             $this->$cSize1 = $cSize1;
             $this->$feedback1 = $feedback1;
             $this->$aPpt1 = $aPpt1;
             $this->$date2 = $date2;
             $this->$budget2 = $budget2;
             //$this->$department2 = $department2;
             $this->$level2 = $level2;
             $this->$aIncome2 = $aIncome2;
             $this->$cSize2 = $cSize2;
             $this->$feedback2 = $feedback2;
             $this->$aPpt2 = $aPpt2;
        } 
                 public function calculateSim($date1, $date2, $budget1, $budget2, $level1, $level2,$aIncome1, $aIncome2, $feedback1, $feedback2, $cSize1, $cSize2,$aPpt1, $aPpt2){
                     $date_max = 13.0;
                     $level_max = 1.0;
                     $feedback_max = 100.0;
                     $cSize_max = 100;
                     $con = new mysqli("localhost", "root", "", "casebase");
                     if($con->connect_error){
                        die("Connection failed: " . $con->connect_error);
                     }
                     
                     $sql = "SELECT * FROM weight WHERE windex = 1";
                     $result = $con->query($sql);
                     while(($row = mysqli_fetch_array($result))){
                            $wdate = $row['date'];
                            $wbudget = $row['budget'];
                            $wlevel = $row['level'];
                            $wincome = $row['income'];
                            $wfeedback = $row['feedback'];
                            $wcSize = $row['cSize'];
                            $wppt = $row['ppt'];
                     }
                     $sum = $wdate + $wbudget + $wlevel + $wincome + $wfeedback + $wcSize + $wppt;
                     $level1a = self::level_sim($level1);
                     $level2a = self::level_sim($level2);
                     $date1 = self::chgDate($date1);
                     $date2 = self::chgDate($date2);
                     $upper = ($wdate * self::distance($date1,$date2,$date_max)) + ($wbudget * self::money_distance($budget1,$budget2)) + ($wlevel * self::distance($level1a,$level2a,$level_max))
                             + ($wincome * self::money_distance($aIncome1,$aIncome2)) + ($wfeedback * self::distance($feedback1, $feedback2,$feedback_max)) + ($wcSize * self::distance($cSize1,$cSize2,$cSize_max))
                             + ($wppt * self::ppt_distance($aPpt1,$aPpt2));
                     $sim = $upper/$sum;
                     return $sim;
                 }
                 public function distance($new, $old, $max){
                        $ans = abs((double)$new - (double)$old)/$max;
                        return 1 - $ans;
                 }
                public function  level_sim($lvl){
                    if($lvl=="department"){
                        return 0.4;
                    }elseif($lvl=="faculty"){
                        return 0.6;
                    }elseif($lvl=="university"){
                        return 0.7;
                    }elseif($lvl == "state"){
                         return 1.0;
                    }else{
                        return 0.0;
                    }
                }
                public function ppt_distance($new, $old){
                    $ans  = 0;
                    $max = 100;
                    $new1 = 0;
                    $ans1 = 0;
                    if($old > $new){
                        if($old < 100){
                            $max = 100;
                        }elseif($old >= 100 and $old < 500){
                            $max = 500;
                        }else{
                            $max = 2000;
                        }
                    }elseif ($old < $new) {
                        if($new < 100){
                            $max = 100;
                        }elseif($new >= 100 and $new < 500){
                            $max = 500;
                        }else{
                            $max = 2500;
                        }
                    }else{
                        $max = 1;
                    }
                        $ans = abs((double)$new - (double)$old)/$max;
                        return 1 - $ans;
                }
                
                public function money_distance($new, $old){
                    $max = 1000.0;
                    if($old > $new){
                        if($old < 1000){
                            $max = 1000.0;
                        }elseif ($old >= 1000 and $old < 5000) {
                            $max = 5000.0;
                
                        }elseif($old >= 5000 and $old < 10000){
                            $max = 10000.0;
                        }elseif ($old >= 10000 and $old <15000) {
                            $max = 15000.0;
                        }else{
                            $max = 20000.0;
                        }
                    }elseif($new > $old){
                        if($new < 1000){
                            $max = 1000.0;
                        }elseif ($new >= 1000 and $new < 5000) {
                            $max = 5000.0;
                
                        }elseif($new >= 5000 and $new < 10000){
                            $max = 10000.0;
                        }elseif ($new >= 10000 and $new <15000) {
                            $max = 15000.0;
                        }else{
                            $max = 20000.0;
                        }
                    }else{
                        $max = 1;
                    }
                    
                        
                        $ans = abs((double)$new - (double)$old)/$max;
                        return 1 - $ans;
                    
                }
                public function chgDate($cdate){
                    if($cdate != 0){
                                        $datetime = DateTime::createFromFormat("Y-m-d", $cdate);
                                        $cdate = $datetime -> format("m");
					$cdate = $cdate -1+1;
                                        $day = $datetime -> format("d");
                                        if($cdate %2 == 1 or $cdate == 8){
                                            $day = $day/32.0;
                                        }elseif($cdate == 2){
                                            $day = $day/30.0;
                                            
                                        }else{
                                            $day = $day/31.0;
                                        }
                                       $cdate += $day;
				}else{
					$cdate = 0;
				}
                                return $cdate;
                }
         }
		 $name ="";
		 $date1 = '2015-09-26';
         $budget1 = 2500;
         $department1 = '';
		 $type1 = 0;
		 $level1 = 'faculty';
		 $aIncome1 = 1500;
		 $cSize1 = 25;
		 $feedback1 = 70.0;
		 $aPpt1 = 35;
		 $cid = $_GET['cid'];
		 $uid = $_GET['uid'];
		 $no = 5;
		 $cid_a = array();
		 $con2 = new mysqli("localhost","root","","event");
		 if($con2->connect_error){
            die("Connection failed: " . $con2->connect_error);
        }
		 
		 $sql1 = "SELECT * FROM event_record WHERE caseID = '$cid'";
		 $res1 = $con2->query($sql1);
if ($res1->num_rows > 0) {
		 while($row1 = mysqli_fetch_array($res1)){
			 $name = $row1['caseName'];
			 $date1 = $row1['caseDate'];
			 $budget1 = $row1['budget'];
			 $type1 = $row1['type'];
			 $level1 = $row1['level'];
			 $aIncome1 = $row1['expectedIncome'];
			 $cSize1 = $row1['cmtSize'];
			 $aPpt1 = $row1['expectedPtcpt'];
		 }
}else{
	echo "<h3>CASE ID DOESN'T EXIST</h3>";
}
		$sql2 = "SELECT * FROM pending_event WHERE caseName = '$name'";
		$res2 = $con2->query($sql2);
		if($res2->num_rows > 0){
			while($row2 = mysqli_fetch_array($res2)){
				$feedback1 = $row2['expectedFeedback'];
			}
		}
        $con = new mysqli("localhost", "root", "", "casebase");
        if($con->connect_error){
            die("Connection failed: " . $con->connect_error);
        }
        
        $sql = "SELECT cIndex, caseDate, budget, department, level,actualIncome,cmtSize, feedback, actualPtcpt FROM positivecase ORDER BY cIndex";
        $result = $con->query($sql);
        $attribute = array();
        while(($row = mysqli_fetch_array($result))){
            $attribute[] = $row;
        }
        
        $len = count($attribute);
        $displayArray = array();
		for ($i = 0;$i < $len;$i++){
           // echo "<br></br>";    
             $Sim = new SimMeasure($date1, $attribute[$i]['caseDate'], $budget1, $attribute[$i]['budget'], $department1,$attribute[$i]['department'], $level1, $attribute[$i]['level'],$aIncome1, $attribute[$i]['actualIncome'], $feedback1, $attribute[$i]['feedback'], $cSize1, $attribute[$i]['cmtSize'],$aPpt1, $attribute[$i]['actualPtcpt']);
       	$displayArray[$attribute[$i]['cIndex']] = $Sim->calculateSim($date1, $attribute[$i]['caseDate'], $budget1, $attribute[$i]['budget'], $level1, $attribute[$i]['level'],$aIncome1, $attribute[$i]['actualIncome'], $feedback1, $attribute[$i]['feedback'], $cSize1, $attribute[$i]['cmtSize'],$aPpt1, $attribute[$i]['actualPtcpt']);
        }
		$_SESSION['list'] = $displayArray;
		
		arsort($displayArray);
			$i = 0;
		foreach($displayArray as $x => $x_value) {
			if($i < $no){
			//echo "Key=" . $x . ", Value=" . $x_value;
			$con1 = new mysqli("localhost", "root", "", "casebase");
        if($con1->connect_error){
            die("Connection failed: " . $con1->connect_error);
        }
            $sql1 = "SELECT * FROM positivecase WHERE cIndex =".$x;
			$res = $con1->query($sql1);
			$rank = $i + 1;
			while(($row = mysqli_fetch_array($res))){
				$cid_a[] = $row['caseID'];
			
			}
			$i++;
			}else{
			 break;
			}
		}
			$con2 = new mysqli("localhost", "root", "", "event"); 
			if($con2->connect_error){
            die("Connection failed: " . $con2->connect_error);
        }
			$member = array();
			$len = count($cid_a);
			for($x = 0; $x < $len; $x++) {
				//echo $cid_a[$x];
				//echo "<br>";
				$arr_sql = "SELECT DISTINCT member_id FROM member_record WHERE event_id ='$cid_a[$x]' AND member_id !=".$uid;
				$res_m = $con2->query($arr_sql);
				if($res_m->num_rows > 0){
					while($rowm = mysqli_fetch_array($res_m)){
						//echo $cid_a[$x];
						//echo "<br>";
						$member[] = $rowm['member_id'];
						//echo $rowm['member_id']."<br>";
					}
				}else{
					//echo "<h3>Error</h3>";
				}
			}
			//echo $member[2];
			$member = array_unique($member);
			$len2 = count($member);
			for($x = 0;$x < $len2; $x++){
				$conn1 = new mysqli("localhost", "root", "", "profile");
				if ($conn1->connect_error) {
					die("Connection failed: " . $conn1->connect_error);
				}	
				$mmb = "SELECT * FROM user WHERE id=".$member[$x]." AND id !=".$uid;
				//echo $x." ".$mmb ."<br>";
				$res_m2 = $conn1->query($mmb);
				if($res_m2->num_rows > 0){
					
					while($rowm = mysqli_fetch_array($res_m2)){
						echo "<td><label class='checkbox-inline'><input type='checkbox' name='to_list[]' value='".$rowm['id']."'>Choose </label></td>";
						echo "<td>".$rowm['firstname']." ".$rowm['lastname']."<small> (Recommended by system)</small></td>";
						echo "<td>".$rowm['email']."</td>";
						echo "<td>".$rowm['department']."</td>";
						echo "<td>".$rowm['designation']."</td>";
						echo "<td>".$rowm['phone']."</td>";
						echo "</tr>";
					}
				}else{
						
				}
				
			}
		
			$conn = new mysqli("localhost", "root", "", "profile");
			if ($conn->connect_error) {
				die("Connection failed: " . $conn->connect_error);
			}
			
			for($x = 0;$x < $len2; $x++){
				if($x == 0){
					$qql = "SELECT * FROM user WHERE id != ".$uid." AND id!=".$member[$x]." AND ";
				}elseif($x > 0 AND $x < $len2-1){
					$qql.= "id != ".$member[$x]." AND ";
				}elseif($len2 == 1){
					$qql = "SELECT * FROM user WHERE id!=".$member[$x]." AND id!=".$uid;
				}elseif($len2 == 0){
					$qql = "SELECT * FROM user WHERE id !=".$uid;
				}
				else{
					$qql.= "id != ".$member[$x];
				}
			}
			//echo $qql;
			//$sql="SELECT * FROM user";
			$res = $conn->query($qql);
			while( $row = mysqli_fetch_array($res)) {
				echo "<tr>";
				echo "<td><label class='checkbox-inline'><input type='checkbox' name='to_list[]' value='".$row['id']."'>Choose </label></td>";
				echo "<td>".$row['firstname']." ".$row['lastname']."</td>";
				echo "<td>".$row['email']."</td>";
				echo "<td>".$row['department']."</td>";
				echo "<td>".$row['designation']."</td>";
				echo "<td>".$row['phone']."</td>";
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