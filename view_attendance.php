<?php
require('db_connect.php');
$roll=mysqli_real_escape_string($con,$_POST['roll']);
$clas=mysqli_real_escape_string($con,$_POST['class']);
//$roll=2;
//$clas="threeA";
$sql="select `$clas` from `attendance`";
$res=mysqli_query($con,$sql);
$count=0;
$total=0;
while($row=mysqli_fetch_assoc($res)){
    $att=$row[$clas];
    if(in_array($roll,explode(", ",$att))){
       $count++;
    }
if($att !=""){
    $total++;
}
}
$percent=($count/$total)*100;
$result=array('percent'=>$percent,'present'=>$count,'total'=>$total);
echo json_encode($result);
?>