	<?php include('dbcon.php'); ?>
	<form action="delete_student.php" method="post">
	<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
	<a data-toggle="modal" href="#student_delete" id="delete"  class="btn btn-danger" name=""><i class="icon-trash icon-large"></i></a>
  <link rel="stylesheet" href="bootstrap.min.css">
  <script src="jquery.min.js"></script>
  <script src="bootstrap.min.js"></script>
	
	<div class="pull-right" style="margin-right:100px;">
	 <div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Kelas
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
      <li role="presentation"><a role="menuitem" tabindex="-1" href="students.php">Kelas 1A</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="unreg_students.php">Kelas 2A</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="reg_students.php">Kelas 3A</a></li>
    </ul>
  </div>
			  
	</div>
	<?php include('modal_delete.php'); ?>
		<thead>
		<tr>
					<th></th>
				
					<th>Nama</th>
					<th>NIS</th>
			
					<th>Tahun ajaran</th>
					<th></th>
		</tr>
		</thead>
		<tbody>
			
		<?php
	$query = mysql_query("select * from student LEFT JOIN class ON student.class_id = class.class_id where class_name='Kelas 1A' ORDER BY student.student_id DESC") or die(mysql_error());
	while ($row = mysql_fetch_array($query)) {
		$id = $row['student_id'];
		?>
	
		<tr>
		<td width="30">
		<input id="optionsCheckbox" class="uniform_on" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
		</td>
	
		<td><?php echo $row['firstname'] . " " . $row['lastname']; ?></td> 
		<td><?php echo $row['username']; ?></td> 
	
		<td width="100"><?php echo $row['class_name']; ?></td> 
	
		<td width="30"><a href="edit_student.php<?php echo '?id='.$id; ?>" class="btn btn-success"><i class="icon-pencil"></i> </a></td>
	
		</tr>
	<?php } ?>    
	
		</tbody>
	</table>
	</form>