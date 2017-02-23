<?php
 
if($_SERVER['REQUEST_METHOD']=='POST'){
 require_once('db_connect.php');
$image =$_POST['image'];
$name = mysqli_real_escape_string($con,$_POST['name']);
$class=mysqli_real_escape_string($con,$_POST['class']);
$sql ="SELECT id FROM volleyupload ORDER BY id ASC";
$res = mysqli_query($con,$sql);
$id = 0;
while($row = mysqli_fetch_array($res)){
$id = $row['id'];
}
$path = "assignment_image/$id.jpg";
$actualpath = "http://www.smartboxapp.esy.es/api/$path";
$sql = "INSERT INTO volleyupload (photo,name,class) VALUES ('$actualpath','$name','$class')";
if(mysqli_query($con,$sql)){
file_put_contents($path,base64_decode($image));
echo "Successfully Uploaded";
}
mysqli_close($con);
}else{
echo "Error";
}