<?php
include('admin/dbcon.php');
if (isset($_POST['submit'])){
$username = $_POST['username'];
$password = $_POST['password'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$department_id = $_POST['department_id'];

mysql_query("insert into teacher (username,password,firstname,lastname,department_id,location,about,teacher_status,teacher_stat)
 values('$username','$password','$firstname','$lastname','$department_id','','','Registered','Activated')")or die(mysql_error());
 
header('location:index.php');
}
?>