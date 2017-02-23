<?php
require('db_connect.php');
$libid=mysqli_real_escape_string($con,$_POST['library_id']);
$session=mysqli_real_escape_string($con,$_POST['session']);
$clas=mysqli_real_escape_string($con,$_POST['class']);
$exam=mysqli_real_escape_string($con,$_POST['exam']);
//$session="2016";
//$exam="Half";
//$libid=670123;
//$clas="6";
//subject
$sql="select * from `subject_list` where class=$clas";
$res=mysqli_query($con,$sql);
$row=mysqli_fetch_assoc($res) or die(mysql_error());
$sub1=$row['sub1'];
$sub2=$row['sub2'];
$sub3=$row['sub3'];
$sub4=$row['sub4'];
$sub5=$row['sub5'];
$sub6=$row['sub6'];
$sub7=$row['sub7'];
$sub8=$row['sub8'];
//marks
$sqlmarks="select * from `marks` where `session`='$session' AND `library_id`='$libid' And `exam_name`='$exam'";
$resmarks=mysqli_query($con,$sqlmarks);
$rowmarks=mysqli_fetch_assoc($resmarks) or die(mysql_error());
$marks1=$rowmarks['sub1'];
$marks2=$rowmarks['sub2'];
$marks3=$rowmarks['sub3'];
$marks4=$rowmarks['sub4'];
$marks5=$rowmarks['sub5'];
$marks6=$rowmarks['sub6'];
$marks7=$rowmarks['sub7'];
$marks8=$rowmarks['sub8'];

$result=array($sub1=>$marks1 , $sub2=>$marks2, $sub3=>$marks3 , $sub4=>$marks4, $sub5=>$marks5 , $sub6=>$marks6, $sub7=>$marks7 , $sub8=>$marks8);
echo json_encode($result);
?> 

