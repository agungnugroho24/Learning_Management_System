<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
    <body id="class_div">
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('teacher_sidebar2.php'); ?>
                <div class="span9" id="content" >
                     <div class="row-fluid">
					  <!-- breadcrumb -->
				
									
				
					     <ul class="breadcrumb">
							<li><a href="#"></a> <span class="divider"></span></li>
							<li><a href="#"></a> <span class="divider"></span></li>
							<li><a href="#"><b>Forum</b></a></li>
						</ul>
						 <!-- end breadcrumb -->
					 
                        <!-- block -->
                        <div id="block_bg" class="block" style="margin-left:-70px; width=1200px;">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left"></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								
  											<iframe src="Teacherforum/mainpage.php" width="1050px;" height="470px"></iframe>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
             </div>
				<?php include('teacher_right_sidebar.php') ?>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>