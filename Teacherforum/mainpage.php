<?php
	
	session_start();
	
		include 'DAO/MainDAO.php';
		$action = new MainDAO();
		if(!isset($_SESSION['UserID'])){
			header('Location:index.php');
		}
		
	

		
	
	   

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml ">
<head>
	<meta http-equiv="Content-Type" content="text/html";charset=utf-8"/>
	<link rel='stylesheet' type='text/css' href='css/main.css'/>
	<link rel="short icon" href='' />
	<script type='text/javascript' src='js/jquery.js'></script>
	<script type='text/javascript' src='js/mainpagescript.js'></script>
	
	<title>Forum</title>
</head>
<body>
	<div id='div-wrapper' style="margin-left:-5px;">
	
		<div id='div-header'>
			<div id='div-logo'><span class='chikka'>Forum</span></div>
          <div id='div-notifications-list'></div>				
				
				
			
			<div id='div-navigation'>
				<ul>
					<li><?php						
							echo $action->GetUserFullName($_SESSION['UserID']);
						?>   <a href='logout.php' id='Logout'>Logout</a></li>
					
				</ul>
			</div>
		</div><!--end div tag (id div-header)-->
		
		<div id='div-maincontent'>
		
			<div id='div-leftcontent'>
		
				<div id='div-leftcontent-profilepic'>
					<div id='div-image-hover'>
						<span class='Profile_Image'>
							<img style="margin-left:100px;" alt ='Profile Picture' src= 
								 <?php
									$profile_img = $action -> GetUsersProfile_Pic($_SESSION['UserID']);
									if($profile_img != null || $profile_img != ""){
										echo $profile_img;
									}else{
										echo "images/logobuddhi.png";
									}
								?>
							/>
						</span>
						
						<?php
							if(isset($ErrorPicMsg)){ 
								echo $ErrorPicMsg;
							}
						?>
					</div>
					<div id='div-editp-option'>
						<ul>
							
						</ul>
					</div>
					
					<div id='div-loading'><img src='images/loading.gif' id='loading-img'/></div>
					
					<!--end div tag (id div-form-upload-profile-pic)-->
					
						<!--Sets the Name of the User-->
						
					
					
				</div><!--end div tag (id div-leftcontent-profilepic)-->
				<div id='div-for-public-chat' style="margin-top:-90px;">
					<h3 id='span-pchat'>Obrolan publik</h3>
					<div id='div-tbl-for-chat'>
					
					  <div id='div-for-online'><span id='count-online'><?php echo $action->CountUsersOnline();?> <small>Pengguna yang sedang online</small></span></div>
					  
					   <div id='div-for-main-table'>					    
					  </div><!--end div tag (id div-for-main-table)-->
					  
					  <div id='div-for-chat-form'>
					    <form id='chat-form' method='POST'>
					       <input type='text' name='chat-message' id='chat-message'/>
					       <!--input type='submit' value='Send' id='btn_SendChat'/-->
					    </form>
					   </div>
					   
					</div>
				</div><!--end div tag (id div-for-public-chat)-->
				
			</div><!--end div tag (id div-leftcontent)-->
			
			<div id='div-rightcontent'>
			

			    
			    <div id='div-for-post-area'>
			        <textarea name='post-message' id='post-message' cols="30" rows="3" placeholder="Ketik bahan diskusi disini"></textarea>
			        <div id='div-for-button'>
			            <button id='btn_post'>Kirim</button>
			        </div>
			        

			            
			        </div><!--end div tag (id div-displayed-selected-post)-->
			        
			        
			    </div><!--end div tag (id div-for-post-area)-->
			    
			</div><!--end div tag (id div-rightcontent)-->
			
		</div><!--end div tag (id div-maincontent)-->
		<fieldset id='overlay-fst-form-upload-profile-pic'>
					<div id='div-form-upload-profile-pic'>
						<form enctype='multipart/form-data' id='ChangeProfile_Pic' method='POST' action='mainpage.php'>
							<input type='file' name='Profile_pic'/>
							<input type='submit' value ='Save' id='btn_saveNewPic' class='btn-for-upload'/>
						</form>
						
					</div>
		</fieldset>
		<div id='overlay_inlarge_profilepic'>
			<div id='overlay_pinlarge_rofilepic_content'>
				<span class='close_btn'>Tutup</span>
				<div class='inlarge_img_displayer'><div>
			</div><!--end content-->
		</div><!--end div overlay_inlarge_profilepic -->
	</div><!--end div tag (id div-wrapper)-->
</body>
</html>
