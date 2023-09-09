<?php
	session_start();
	
	include 'DAO/MainDAO.php';
	
	$UserID = $_SESSION['UserID'];
	$PostID = $_POST['postID'];
	$Comment = nl2br($_POST['post_comment']);
	
	$action = new MainDAO();
	
	$action->SavePostComment($UserID,$PostID,$Comment);


?>