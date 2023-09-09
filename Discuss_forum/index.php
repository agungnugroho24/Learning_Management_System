<link rel="stylesheet" type="text/css" href="style.css" />
<?php session_start();   ?>
 <div id="wrapper">
<h2>Forum diskusi</h2>
<?php
if(!isset($_SESSION['uid'])){
   
   echo"<form action='login_parse.php' method='post'>
   Verifikasi<br>
   Nomor induk	:<input type='text' name='username'/>&nbsp;<br>
   Kata sandi 			:<input type='password' name='password'/>&nbsp;<br>
   <input type='submit' name='submit' value='Masuk'/> ";

}else{
echo"<p><font color='brown'>Masuk sebagai ".$_SESSION['username']." &bull;<a href='logout.php'>Keluar</a></font></p> ";
}
?>
<hr/>
<div id="content">
<?php
include_once('connect.php');
$sql="select * from categories order by category_title asc";
$res=mysql_query($sql) or die (mysql_error());
$categories="";
if(mysql_num_rows($res)>0){
while($row=mysql_fetch_assoc($res)){
   $id=$row['id'];
   $title=$row['category_title'];
   $description=$row['category_description'];
   $categories.="<a href='view_category.php?cid=".$id."' class='cat_links'>".$title."- <font size ='-1'>".$description."</font></a>";
  }
echo $categories;
}else{
echo"<p>Tidak ada kategori kelas.</p>";
}


?>
</div>