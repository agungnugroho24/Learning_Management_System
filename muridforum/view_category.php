<link rel="stylesheet" type="text/css" href="style.css" />
<?php error_reporting(0); ?>
<?php session_start();?>

 <title></title>
 <div id="wrapper">
<h2>Pembahasan terakhir</h2>
<?php
 include_once('connect.php');
if(!isset($_SESSION['uid'])){

    echo"Silahkan masuk.<a href='index.php'>Klik disini</a>";
}else{
echo"<p><font color='brown'>Masuk sebagai ".$_SESSION['username']." &bull;<a href='logout.php'>Keluar</a></font></p> ";
}
?>
<hr/>
<div id="content">
 
<?php
 
 include_once('connect.php');
$cid=$_GET['cid'];
  
   if(isset($_SESSION['uid'])){
      
   $logged=" <a  href='create_topic.php?cid=".$cid."'></a>";

   }else{   
   $logged="  |Silahkan masuk untuk membuat topik baru di forum ini.";
   }
   $sql="select id from categories where id= '".$cid."' limit 1";
   $res=mysql_query($sql)or die (mysql_error());
    if(mysql_num_rows($res)==1){
	$sql2="select * from topics where category_id='".$cid."' order by topic_reply_date desc";
	$res2=mysql_query($sql2) or die (mysql_error());
	if(mysql_num_rows($res2)>0){
	
	$topics.="<table width='100%' style='border-collapse:collapse;'>";
	$topics.="<tr><td colspan='3'><a href='index.php'>Kembali</a>".$logged."<hr/></td></tr>";
	$topics.="<tr style='background-color:#dddddd;' ><td>Judul topik</td><td width='65'align='center'>Balas</td><td width='65' align='center'>views</td></tr>";
	$topics.="<tr><td colspan='3'><hr/></td><tr>";
	while($row=mysql_fetch_assoc($res2)){
	$replies=mysql_num_rows($sql2);
	$tid=$row['id'];
	$title=$row['topic_title'];
	$views=$row['topic_views'];
	$date=$row['topic_date'];
	$creator=$row['topic_creator'];
	$topics.="<tr><td><a href='view_topic.php?cid=".$cid."&tid=".$tid."'>".$title."</a><br/><span class='post_info'>Dibuat oleh:".$creator." on ".$date."</span></td><td align='center'>0</td><td align='center'>".$views."</td></tr>";
$topics.="<tr><td colspan='3'><hr/></td></tr>";	
}
	$topics.="</table>";
echo $topics;
	
	}else{
	 echo"<a href='index.php'>Beranda</a></hr>";
   echo"<p>Tidak ada topik.".$logged."</p>";
   } 

   }else{
   echo"<a href='index.php'>Kembali</a></hr>";
   echo"<p>Tidak ada pembahasan.";
    }
?>
</div>
</div>