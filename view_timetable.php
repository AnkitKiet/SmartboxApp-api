<?php
require('db_connect.php');
//$day=mysqli_real_escape_string($con,$_POST['day']);
//$class=mysqli_real_escape_string($con,$_POST['class']);
//$sec=mysqli_real_escape_string($con,$_POST['sec']);
$day="monday";$class="3";$sec="A";
$result=array();
$sql="SELECT * FROM `timetable` WHERE class='$class' AND sec='$sec' And day='$day'";
$res=mysqli_query($con,$sql);
while($row=mysqli_fetch_array($res)){
$result['one']=$row[4];
$result['two']=$row[5];
$result['three']=$row[6];
$result['four']=$row[7];
$result['five']=$row[8];
$result['six']=$row[9];
$result['seven']=$row[10];
$result['eight']=$row[11];

}
$result_final=array_push($result_final, $result);
echo json_encode($result_final);
?>