<link rel="stylesheet" type="text/css" href="style.css" />
<?php

session_start();
error_reporting(0);
if(!isset($_SESSION['uid'])){
   
   echo"Silahkan masuk komentar.<a href='index.php'>Klik disini untuk masuk</a>";
}else{
echo"<center><p><font color='brown'>Masuk sebagai ".$_SESSION['username']."</font> |<a href='logout.php'>Keluar</a></p></center>";
}
?>
<hr/>
<div id="content">
<?php
include_once("connect.php");
  $cid=$_GET['cid'];
  $tid=$_GET['tid'];
  $sql="select * from topics where category_id='".$cid."' and id='".$tid."' limit 1";
  $res=mysql_query($sql) or die(mysql_error());
  $r=mysql_num_rows($sql);
  if(mysql_num_rows($res)==1){

  echo"<table width='100%'>";
  


  if(isset($_SESSION['uid'])){
  
  echo"<tr><td colspan='2'><input type='submit'id='buttons' value='Komentar' onClick	=\"window.location='post_reply.php?cid=".$cid." &tid=".$tid." '\"/><hr/>";}else{
  echo"<tr><td colspan='2'><center><p>Silahkan masuk dahulu.</p><hr/></center></td></tr>";
  }
  
  while($row=mysql_fetch_array($res)){
  $sql2="select * from post where category_id='".$cid."'and topic_id='".$tid."'";
  $res2=mysql_query($sql2)or die(mysql_error());
  while($row2=mysql_fetch_assoc($res2)){

   // $poster name ;
   $user=mysql_query("select * from teacher where username='".$row2['post_creator']."'  ");
    while($row5=mysql_fetch_array($user)){
    $username=$row5['firstname'];
      echo $username;
      }

  echo" <div id='wrapper'='left'><div class='uinfo'>Id:".$row2['post_creator']." </div>".$row['topic_title']."<br/> Tanggal ".$row2['post_creator']."-".$row2['post_date']."<hr/>".$row2['post_content']." </div>";
  
  }?>

  <?php 
  //count totlal views
    
    $old_views=$row['topic_views'];
    $new_views=$old_views + 1;
    $sql3="update topics SET topic_views='".$new_views."' where category_id='".$cid."' AND id='".$tid."' LIMIT 1";
    $res3=mysql_query($sql3);
}
  }else{
  
  echo"<p>Tidak ada topik.</p>";
    }


?> 
</div>
</div>