<?php
include('dbcon.php');
        
               $un = $_POST['un'];
               $fn = $_POST['fn'];
               $ln = $_POST['ln'];
			   $ks = $_POST['ks'];
               $class_id = $_POST['class_id'];

               mysql_query("insert into student (username,firstname,lastname,password,location,class_id,status)
		values ('$un','$fn','$ln','$ks','uploads/NO-IMAGE-AVAILABLE.jpg','$class_id','Registered')                                    
		") or die(mysql_error()); ?>
<?php    ?>