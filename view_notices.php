<?php
require('db_connect.php');
$class=mysqli_real_escape_string($con,$_POST['class']);
$sec=mysqli_real_escape_string($con,$_POST['sec']);
//$class="3";
//$sec="A";
$result=array();
$sql="select * from notice where class ='$class' AND sec='$sec'";
$res=mysqli_query($con,$sql);
while($row=mysqli_fetch_assoc($res))
{
    $date=$row['date'];
    $notice=$row['notices'];
    $result[]=array($date,$notice);
}
echo json_encode($result);
?>