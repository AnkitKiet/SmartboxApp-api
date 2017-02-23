<?php
require("db_connect.php");
$id=mysqli_real_escape_string($con,$_POST['uniqueid']);
$type=mysqli_real_escape_string($con,$_POST['type']);
$pin=mysqli_real_escape_string($con,$_POST['pin']);
//$id="670123";
//$type=1;
//$pin="12345";
$result = array('valid'=>"false");
if(!empty($type)){
if($type==1){
$sql="select * from `student_info` where `library_id`=$id";
}
else
if($type==2)
{
$sql="select * from `teacher_info` where `ssn_no`=$id";
}

$res=mysqli_query($con,$sql);
$row=mysqli_fetch_assoc($res);
$pass = $row['pin'];
    if($pass==($pin) && ($type==1 || $type==2)){
$result=array('valid'=>"true");
if($type==1){
	 $result=array('valid'=>"true",'name'=>$row['stud_name'],'age'=>$row['age'],'gender'=>$row['gender'],'pic'=>$row['pic'],'class'=>$row['class'],'sec'=>$row['section'],'library_id'=>$row['library_id'],'roll'=>$row['roll_no'],'parent_name'=>$row['parent_name'],'parent_email'=>$row['parent_email'],'address'=>$row['address'],'bus'=>$row['bus'],'route'=>$row['route'],'parent_mobile'=>$row['parent_mobile']);
	}
	if($type==2){
		$result=array('valid'=>"true",'name'=>$row['name'],'mobile'=>$row['mobile'],'ssnno'=>$row['ssn_no'],'class'=>$row['class'],'sec'=>$row['sec']);
				}
}
}
echo json_encode($result);

?>