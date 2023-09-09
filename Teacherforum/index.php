<?php
	session_start();
	
	include 'DAO/AccountsDAO.php';
	$action = new Chikka();
	if(isset($_SESSION['UserID'])){
		header('Location:mainpage.php');
	}else if(isset($_POST['username']) && isset($_POST['password'])){
		$verrified = $action -> LogInUser($_POST['username'],$_POST['password']);
		if($verrified){
			$UserID = $action->GetUseriD_SetUserStatus($_POST['username']);
			$_SESSION['UserID'] = $UserID;
			header('Location: mainpage.php');
		}else{
			$errMsg = "<div class='ErrorMsg'>Unknown User!</div>";
			
		}
	}
	
	

?>

<!DOCTYPE HTML>
<html>

<head>
	<link rel='stylesheet' type='text/css' href='css/index.css'/>
	<link rel='short icon' href='images/messenger.png' />
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
	<script type='text/javascript' src='js/jquery.js'></script>
	<script type='text/javascript' src='js/jquery-ui-darkhive.js'></script>
	<script type='text/javascript' src='js/indexscript.js'></script>
	<title>Forum</title>
</head>
<body>
	<div class='wrapper'>
	
		<input type='hidden' name='UserID' value=<?php if(isset($UserID)){echo "'".$UserID."'";}?>/><!--Sets the ID of the User-->
		<div class='header'>
			<div class='div-bg-header'>

				<div class='div-login-form'>
					<form method='POST'>
						<label for='email'>Nama kelas:</label>
						<input type='text' name='username' id='username-email'/>
						<label  for='password'>Kode subjek:</label>
						<input type='password' name='password' id='password'/>
						<input type='submit' value='Masuk' id='btn_login'/>
					</form>
				</div><!--end tag for class div-login-form-->
			</div><!--end tag for class div-bg-header-->
			<?php
				
				if(isset($errMsg)){
					echo $errMsg;
				}
			
			?>
		</div><!--end tag div with a class header-->
		
		<!--end tag for class div-center-->
	</div><!--end tag div with a class wrapper-->
</body>

</html>
