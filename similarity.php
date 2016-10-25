
<?php
         $date1 = '2015-05-26';
         $budget1 = 4000;
         $department1 = 'stk';
		 $type1 = 0;
		 $level1 = 'faculty';
		 $aIncome1 = 1500;
		 $cSize1 = 10;
		 $feedback1 = 70.0;
		 $aPpt1 = 20;
		 
		 $date2 = '2014-05-05';
         $budget2 = 3000;
         $department2 = 'ai';
		 $type2 = 'faculty';
		 $level2 = 'faculty';
		 $eIncome2 = 3000;
		 $aIncome2 = 2000;
		 $cSize2 = 30;
		 $feedback2 = 80.0;
		 $ePpt2 = 40;
		 $aPpt2 = 30;
		 
		 changeValue($department1, $level1, $date1);
		 changeValue($department2, $level2, $date2);
		 toZeroDate($date1,$date2);
		 toZeroBudget($budget1, $budget2);
		 toZeroDepartment($department1, $department2);
		 toZeroType($type1, $type2);
		 toZeroLevel($level1,$level2);
		 toZeroIncome($aIncome1, $aIncome2);
		 toZeroFeedback($feedback1, $feedback2);
		 toZeroParticipant($aPpt1,$aPpt2);
         
		 
		 
		 function changeValue($department, $level, $cdate){
				if($department == 'ai'){
					$department = 2.5;
				}elseif($department == 'stk'){
					$departmet = 2.8;
				}elseif($department == 'se'){
					$department = 2.3;
				}elseif($department == 'is'){
					$department = 2.0;
				}elseif($department == 'it'){
					$department = 1.9;
				}elseif($department == 'under_grad'){
					$department = 3.0;
				}elseif($department == 'post_grad'){
					$department = 5.0; 
				}else{
					$department = 1.0; 
				}
				
				if($level == 'department'){
					$level = 2; 
				}elseif($levle == 'faculty'){
					$level = 3;
				}elseif($levle == 'university'){
					$level = 4;
				}elseif($levle == 'state'){
					$level = 5;
				}else{
					$level = 1; 
				}
				
				if($cdate != 0){
					$cdate = strtotime($cdate);
				}else{
					$cdate = 0;
				}
		 }
		 function toZeroDate($cdate1, $cdate2){
			 if($cdate1 == 0){
				 $cdate2 = 0;
			 }
		 }
		 function toZeroBudget($budget1, $budget2){
			 if($budget1 == 0){
				 $budget2 = 0;
			 }
		 } 
		 function toZeroDepartment($departmetn1, $departmetn2){
			 if($departmetn1 == 0){
				 $departmetn2 = 0;
			 }
		 }
		 function toZeroType($type1, $type2){
			 if($type1 == 0){
				 $type2 = 0;
			 }
		 }
		 function toZeroLevel($level1, $level2){
			 if($level1 == 0){
				 $level2 = 0;
			 }
		 }
		 function toZeroIncome($aIncome1, $aIncome2){
			 if($aIncome1 == 0){
				 $aIncome2 = 0;
			 }
		 }
		 function toZeroFeedback($feedback1, $feedback2){
			 if($feedback1 == 0){
				 $feedback2 = 0;
			 }
		 }
		 function toZeroParticipant($aPpt1, $aPpt2){
			 if($aPpt1 == 0){
				 $aPpt2 = 0;
			 }
		 }
?>