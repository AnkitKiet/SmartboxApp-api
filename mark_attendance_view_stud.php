<?php
require('db_connect.php');
$class=mysqli_real_escape_string($con,$_POST['class']);
$sec=mysqli_real_escape_string($con,$_POST['section']);
$sql="select stud_name,roll_no from student_info where class='$class' AND section='$sec'";
$res=mysqli_query($con,$sql);
while($row=mysqli_fetch_assoc($res)){
    
    $stud_array[]=array($row['roll_no'],$row['stud_name']);
}
    echo json_encode($stud_array);


?>