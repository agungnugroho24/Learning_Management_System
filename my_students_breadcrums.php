	 <!-- breadcrumb -->
	<?php $class_query = mysql_query("select * from teacher_class
	LEFT JOIN class ON class.class_id = teacher_class.class_id
	LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
	where teacher_class_id = '$get_id'")or die(mysql_error());
	$class_row = mysql_fetch_array($class_query);
	?>
				
	<ul class="breadcrumb" style="color:#fff;">
		<li><a href="#"><font color="#fff"><?php echo $class_row['class_name']; ?></a> <span class="divider"></span></font></li>
		<li><a href="#"><font color="#fff"><?php echo $class_row['subject_code']; ?></a> <span class="divider"></span></font></li>
		<li><a href="#"><font color="#fff">Tahun ajaran: <?php echo $class_row['school_year']; ?></a> <span class="divider">/</span></font></li>
		<li><a href="#"><font color="#fff"><b>Muridku</b></a></font></li>
	</ul>
	<!-- end breadcrumb -->