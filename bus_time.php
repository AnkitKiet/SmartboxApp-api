<?php
require('db_connect.php');
$id=mysqli_real_escape_string($con,$_POST['id']);
$result=array();
$sql="select * from bus_time where lib_id='$id'";
$res=mysqli_query($con,$sql);
while($row=mysqli_fetch_assoc($res))
{
    $route=$row['route'];
    $pt=$row['pick_time'];
    $dt=$row['drop_time'];
$result=array('route'=>$route , 'pick_time'=>$pt, 'drop_time'=>$dt);
}
echo json_encode($result);
?>