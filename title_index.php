				
								<div class="row-fluid">

						<div class="span12">
						
						</div>	
													
							</div>
							<div class="row-fluid">

						<div class="span4">
						<img class="index_logo" src="admin/images/logobuddhi.png">
						</div>	
						<div class="span8">
						
								<div class="title">
							<p class="chmsc"></p>
							<h3>

							<p>Learning Management System</p>
						
							</h3>		
						</div>
			
						</div>							
							</div>
				
				<div id="def" class="abc">
			
			<head>
	<title></title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="uwie, WOW Slider, Slideshow Js, Slider HTML5" />
	<meta name="description" content="uwie created with WOW Slider, a free wizard program that helps you easily generate beautiful web slideshow" />
	<!-- Start WOWSlider.com HEAD section -->
	<link rel="stylesheet" type="text/css" href="slide/engine1/style.css" />
	<script type="text/javascript" src="slide/engine1/jquery.js"></script>
	<!-- End WOWSlider.com HEAD section -->
</head>
<body style="background-color:#d7d7d7">
	<!-- Start WOWSlider.com BODY section -->
	<div id="wowslider-container1">
	<div class="ws_images"><ul>
<li><img src="slide/data1/images/images.jpg" alt="E-Learning" title="E-Learning" id="wows1_0"/></li>
<li><img src="slide/data1/images/index.jpg" alt="LMS" title="LMS" id="wows1_1"/></li>
<li><img src="slide/data1/images/keyboard_000018984124medium.jpg" alt="Learning" title="Learning" id="wows1_2"/></li>
</ul></div>
<div class="ws_bullets"><div>
<a href="#" title="E-Learning"><img src="slide/data1/tooltips/images.jpg" alt="E-Learning"/>1</a>
<a href="#" title="LMS"><img src="slide/data1/tooltips/index.jpg" alt="LMS"/>2</a>
<a href="#" title="Learning"><img src="slide/data1/tooltips/keyboard_000018984124medium.jpg" alt="Learning"/>3</a>
</div></div>
<span class="wsl"><a href="http://wowslider.com"></a> </span>
	<div class="ws_shadow"></div>
	</div>
	<script type="text/javascript" src="slide/engine1/wowslider.js"></script>
	<script type="text/javascript" src="slide/engine1/script.js"></script>
	<!-- End WOWSlider.com BODY section -->
</body>
</html>
				<div class="pull-right">
					
				</div>
			</div>
			
			<div id="ghi" class="abc">
			<font>
			<?php
					$content_query = mysql_query("select * from content where content_id=6")or die(mysql_error());
					while($row = mysql_fetch_array($content_query)){
					$id = $row['content_id'];
					?>
                              
										<tr>
                                         <td><?php echo $row['content']; ?></td>
                                     
                               
                                </tr>
                         <?php } ?>
			</font>
				<div class="pull-right">
					
				</div>
			</div>&nbsp;&nbsp;&nbsp;