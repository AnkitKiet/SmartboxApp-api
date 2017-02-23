<?php
require('db_connect.php');
$arr=mysqli_real_escape_string($con,$_POST['present_students']);
$date=mysqli_real_escape_string($con,$_POST['date']);
$class=mysqli_real_escape_string($con,$_POST['class']);
//$arr="1,2,3,4,5,6,7,8,9,10";
//$date="17-01-2017";
//$class="fourA";
$result=array();
//$ar=implode(",",$arr);
$sql="UPDATE attendance SET $class = '$arr' WHERE date = '$date'";
if(mysqli_query($con,$sql)){
    $result=array('updated'=>true);
    echo json_encode($result);
}
else{
    mysql_error();
    $result=array('updated'=>false);
    echo json_encode($result);
}

?>