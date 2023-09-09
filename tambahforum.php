<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('tambahforumsidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->	
									<ul class="breadcrumb">
										<?php
										$school_year_query = mysql_query("select * from school_year order by school_year DESC")or die(mysql_error());
										$school_year_query_row = mysql_fetch_array($school_year_query);
										$school_year = $school_year_query_row['school_year'];
										?>
											<li><a href="#"><b>Kelasku</b></a><span class="divider">/</span></li>
										<li><a href="#">Tahun ajaran: <?php echo $school_year_query_row['school_year']; ?></a><span class="divider">/</span></li>
										<li><a href="#"><b>Forum diskusi</b></a></li>
									</ul>
						 <!-- end breadcrumb -->
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-right"></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
									<div class="pull-right">
									<a href="tambahforumguru.php" class="btn btn-info"><i class="icon-arrow-left"></i> Kembali</a>
									</div>
								
									    <form class="form-horizontal" method="post">
										<div class="control-group">
											<label class="control-label" for="inputEmail">Judul diskusi</label>
											<div class="controls">
											<input type="text" name="forum" id="inputEmail" placeholder="Judul diskusi">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputPassword">Penjelasan diskusi</label>
											<div class="controls">
											<input type="text" class="span8" name="forumdeskripsi" id="inputPassword" placeholder="Penjelasan diskusi" required>
											</div>
										</div>										
										<div class="control-group">
										<div class="controls">										
										<button name="save" type="submit" class="btn btn-success"><i class="icon-save"></i> Simpan</button>
										</div>
										</div>
										</form>									
										<?php
										if (isset($_POST['save'])){
										$forum = $_POST['forum'];
										$forumdeskripsi = $_POST['forumdeskripsi'];
										mysql_query("insert into users_post (forum,forumdeskripsi,tgldeskripsi,teacher_id) values('$forum','$forumdeskripsi',NOW(),'$session_id')")or die(mysql_error());
										?>
										<script>
										window.location = 'tambahforumguru.php';
										</script>
										<?php
										}
										?>							
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