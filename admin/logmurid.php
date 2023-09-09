<?php include('header.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('logmuridsidebar.php'); ?>

                <div class="span9" id="content">
                     <div class="row-fluid">
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Absensi murid || <a href="logmuridprint.php" target="blank"> Cetak</a></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
								
										<thead>
										  <tr>
												<th>Tanggal masuk</th>
												<th>Tanggal keluar</th>
												<th>NIS</th>
												<th>Nama pengguna</th>
												<th>Kelas</th>
												
											
										   </tr>
										</thead>
										<tbody>
													<?php
													$user_query = mysql_query("select * from log left join student on student.student_id = log.student_id left join class on class.class_id = student.class_id order by user_log_id DESC")or die(mysql_error());
													while($row = mysql_fetch_array($user_query)){
													$id = $row['user_log_id'];
													?>
									
												<tr>
											
												<td><?php echo $row['login_date']; ?></td>
												<td><?php echo $row['logout_date']; ?></td>
												<td><?php echo $row['username']; ?></td>
												<td><?php echo $row['firstname']; ?> <?php echo $row['lastname']; ?></td>
												<td><?php echo $row['class_name']; ?></td>
												</tr>
												<?php } ?>
										</tbody>
									</table>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>


                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>

</html>