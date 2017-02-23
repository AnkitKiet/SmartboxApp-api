<?php
require('db_connect.php');
$result=array();
$data=array();
$sql="select * from school_toppers";
$res=mysqli_query($con,$sql);
while($row=mysqli_fetch_assoc($res))
{
     $result['name']=$row['name'];
    $result['batch']=$row['batch'];
    $result['pic']=$row['pic'];
array_push($data,$result);

}

echo json_encode($data);

?>