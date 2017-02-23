<?php
require('db_connect.php');
$class=mysqli_real_escape_string($con,$_POST['class']);
//$class="threeA";
$result=array();
$sql="select * from volleyupload where class ='$class'";
$res=mysqli_query($con,$sql);
while($row=mysqli_fetch_assoc($res))
{
    $name=$row['name'];
    $photo=$row['photo'];
    $result[]=array($name,$photo);
}
echo json_encode($result);
?>