
<?php session_start(); ?>
<?php

if(!isset($_SESSION['uid'])||($_GET['cid']=="")){
  header('location:index.php');
  exit();
  
  }
$cid=$_GET['cid'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title></title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
<div id="wrapper">
<h2>Forum diskusi</h2>
<p>Kategori dan topik baru</p>
</body>
<?php

echo"<p><font color='#ccc'>Masuk sebagai ".$_SESSION['username']."</font> |<a href='logout.php'>Keluar</a></p> ";

?>

<hr />

<div id="content">
<form action="create_topic_parse.php" method="post">
<p>Judul</p>
<input type="text" name="topic_title" size="98" maxlength="150" />
<p>Topik</p>
<textarea name="topic_content" rows="5" cols="75"></textarea>
<br /><br />
<input type="hidden" name="cid" value="<?php echo $cid;?>" />
<input type="submit" name="topic_submit" value="Simpan" />
</form>

</html>
