<?php
require('db_connect.php');
$result=array();
$data=array();
$sql="select * from school_event";
$res=mysqli_query($con,$sql);
while($row=mysqli_fetch_assoc($res))
{
    $result['url']=$row['url'];
    $result['category']=$row['category'];
    array_push($data,$result);

}
echo json_encode($data);
?>