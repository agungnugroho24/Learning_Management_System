<?php include('header.php'); ?>
<?php 
    echo "<script type='text/javascript'>javascript:window.print()</script>";
?>
    <body>

                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Daftar aktivitas pengguna</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
								
										<thead>
										  <tr>
												<th>Tanggal masuk</th>
												<th>Tanggal keluar</th>
												<th>Nama pengguna</th>
												
											
										   </tr>
										</thead>
										<tbody>
													<?php
													$user_query = mysql_query("select * from user_log order by user_log_id DESC ")or die(mysql_error());
													while($row = mysql_fetch_array($user_query)){
													$id = $row['user_log_id'];
													?>
									
												<tr>
											
												<td><?php echo $row['login_date']; ?></td>
												<td><?php echo $row['logout_date']; ?></td>
												<td><?php echo $row['username']; ?></td>
												</tr>
												<?php } ?>
										</tbody>
									</table>
                                </div>
                        </div>
                        <!-- /block -->
                    </div>


               
		<?php include('footer.php'); ?>
        </div>
    </body>

</html>