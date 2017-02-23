<?php
require('db_connect.php');
$notice=mysqli_real_escape_string($con,$_POST['notice']);
$class=mysqli_real_escape_string($con,$_POST['class']);
$sec=mysqli_real_escape_string($con,$_POST['sec']);
$date=date("Y-m-d");
$result = array('valid'=>"false");
if(!empty($notice))
{
$sql="INSERT INTO `notice` VALUES ('','$date','$notice','$class','$sec')";
$res=mysqli_query($con,$sql);
if($res)
{
$result = array('valid'=>"true");
}
else
{
die(mysqli_error($con));
}
}
echo json_encode($result);

?>