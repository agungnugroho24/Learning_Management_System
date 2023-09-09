<?php
include('admin/dbcon.php');
if (isset($_POST['submit'])){
$username = $_POST['username'];
$password = $_POST['password'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$class_id = $_POST['class_id'];

mysql_query("insert into student (username,password,firstname,lastname,class_id,location,status)
 values('$username','$password','$firstname','$lastname','$class_id','','Registered')")or die(mysql_error());
 
header('location:index.php');
}
?>