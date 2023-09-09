<?php include('header.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('student_sidebar.php'); ?>
				<div class="span3" id="adduser">
				<?php include('add_students.php'); ?>		   			
				</div>
                <div class="span6" id="">
                     <div class="row-fluid">
                        <!-- block -->
                        <div  id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Daftar murid berdasarkan kelas</div>
                            </div>
                            <div class="block-content collapse in">
								<div class="span12" id="studentTableDiv">
									<table>
									<tr>
									     <td>
										 <a href="students2.php">Kelas 1A</a>
										 </td>
									</tr>
									<tr>
										 <td>
										 <a href="unreg_students.php">Kelas 2A</a>
										 </td>
									</tr>
									<tr>
										 <td>
										 <a href="reg_students.php">Kelas 3A</a>
										 </td>
									</tr>
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