<div class="navbar navbar-fixed-top navbar-inverse">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
					<span class="icon-bar"></span><span class="icon-bar"></span>
                </a>
                <a class="brand" href="#">Selamat datang di: Online Learning Management System</a>
					<div class="nav-collapse collapse">
						<ul class="nav pull-right">
							<?php $query= mysql_query("select * from student where student_id = '$session_id'")or die(mysql_error());
									$row = mysql_fetch_array($query);
							?>
							<li class="dropdown">
							<link rel="stylesheet" href="popup1/style.css" type="text/css" />
							
		
		<div id="popup">
			<div class="window">
				<a href="#" class="close-button" title="Close">X</a>
				<h1><iframe src="chat/sample.php" width="530px" height="400px;"></iframe></h1>
			</div>
		</div>
								<a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user icon-large"></i><?php echo $row['firstname']." ".$row['lastname'];  ?> <i class="caret"></i></a>
									<ul class="dropdown-menu">
										<li><a tabindex="-1" href="change_password_student.php"><i class="icon-circle"></i> Ganti kata sandi</a></li>
										<li><a tabindex="-1" href="#myModal_student" data-toggle="modal"><i class="icon-picture"></i> Ganti avatar</a></li>
										<li><a tabindex="-1" href="#popup" >Chat</a></li>
										<li class="divider"></li>
										<li>
											<a tabindex="-1" href="logout.php"><i class="icon-signout"></i>&nbsp;Keluar</a>
										</li>
									</ul>
							</li>
						</ul>
					</div>
            </div>
        </div>
</div>
<?php include('avatar_modal_student.php'); ?>	