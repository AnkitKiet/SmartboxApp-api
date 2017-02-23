<?php
require('db_connect.php');
$comp=mysqli_real_escape_string($con,$_POST['complain']);
$id=mysqli_real_escape_string($con,$_POST['id']);
//$comp="hey";
//$id="670123";
$result = array('valid'=>"false");
if(!empty($comp))
{
$sql="INSERT INTO `complaint` VALUES ('','$id','$comp')";
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