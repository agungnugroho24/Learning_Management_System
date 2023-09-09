<style type="text/css">
<!--
a {
	color: #F63;
}
input {
	border: 1px solid #CCC;
	color: #666;
	font-weight: normal;
}
body {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 15px;
	color: #666;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	letter-spacing: -1px;
}
.info
{
	text-align:left;
	padding: 10px;
	margin: 10px;
	background-color: #FFF9CE;
	border: 1px dotted #F90;
}

-->
</style>

<BODY>
<div style="background-color:#333; padding:10px">
<p>
<?php
@$room = $_POST['room'];
@$r = $_GET['r'];

include_once("incsan.php");
sanV($room);
sanV($r);



if ($r)
{
	?> 
<div class="info">
  <strong></strong>
   <script language="JavaScript">
			function censorName()
			{
				document.adminForm.username.value = document.adminForm.username.value.replace(/^[\s]+|[\s]+$/g, '');
				document.adminForm.username.value = document.adminForm.username.value.replace(/[^0-9a-zA-Z_\-]+/g, '-');
				document.adminForm.username.value = document.adminForm.username.value.replace(/\-+/g, '-');
				document.adminForm.username.value = document.adminForm.username.value.replace(/^\-+|\-+$/g, '');
				if (document.adminForm.username.value.length>3) return true;
				else
				{
				alert("Username should be 3 chars or more!");
				document.adminForm.button.disabled=false; 
				document.adminForm.button.value="Enter Video Chat"; 
				return false;
				}
			}
			</script>
<form id="form1" name="adminForm" method="post" action="2wvideochat.php" onSubmit="return censorName()">
  Saya adalah
    <input name="username" type="text" id="username" value="Guest" size="12" maxlength="16" onChange="censorName()" />.
  <input name="r" type="hidden" id="r" value="<?=$r?>" size="16" maxlength="32" />
  <br>
  <br>
  <input type="submit" name="button" id="button" value="Enter Video Chat" onclick="this.disabled=true; censorName(); this.value='Loading...'; adminForm.submit();" />
</form>
</div>
<div class="info">
  <p><strong>Instruksi</strong></p>
  <p> <img src="images/flashplayer.png" alt="Flash Player" width="48" height="48" align="absmiddle"><script type="text/javascript" src="flash_detect_min.js"> </script>
	<script type="text/javascript">
	
	var updateWarning = false;

	if(FlashDetect.installed)
	{
	document.write("Flash version detected: " + FlashDetect.major + "."+ FlashDetect.minor + " "); 
	
	
	if(!FlashDetect.versionAtLeast(11, 2))
	{
		alert("Flash was detected but is too old to run this application. Upgrade your Flash plugin to proceed!"); 
		updateWarning = true;
	}
	
	}
	else
	{
		alert("Flash was not detected in your browser: Flash plugin is required to use this application!"); 
		updateWarning = true;
	}
	
	if (updateWarning)	document.write("<B class=warning>Update to latest flash player: <a href=\"http://get.adobe.com/flashplayer/\" target=\"_blank\">http://get.adobe.com/flashplayer/</a> !</B>");
	</script> <br>
</div>
    <?php
}
elseif ($room)
{
	if ($room=="InstantChat") $room="InstantChat_".base_convert((time()-1225000000).rand(0,10),10,36);
	$url="http://".$_SERVER['SERVER_NAME'].$_SERVER['SCRIPT_NAME'];
	$roomlink=$url."?r=".urlencode($room);

?>   <div class="info">
      <p> 
        <strong>
        <em>
  <?php=$room?> 
        </em></strong>
        <SCRIPT LANGUAGE="JavaScript">
function copytext(theField) {
var tempval=eval("document."+theField);
tempval.focus();
tempval.select();
textrange=tempval.createTextRange()
textrange.execCommand("Copy");
}
        </script>
</p>
      </p>
      <form name="linkform" id="linkform" method="post">
        <div align="center">
  <p align="left">
  <u></u><br>
    <input name="linktext" id="linktext" type="text" value="<?=$roomlink?>
" size="85" maxlength="200" readonly="readonly" />
  <input onClick="copytext('linkform.linktext')" type="button" value="Select" name="cpy">
  </p>
  <a href="<?=$roomlink?>">Klik disini</a>
</div>
</form></div>
<?php	
}else
{
	?>   <div class="info">
    			<script language="JavaScript">
			function censorName()
			{
				document.adminForm.room.value = document.adminForm.room.value.replace(/^[\s]+|[\s]+$/g, '');
				document.adminForm.room.value = document.adminForm.room.value.replace(/[^0-9a-zA-Z_\-]+/g, '-');
				document.adminForm.room.value = document.adminForm.room.value.replace(/\-+/g, '-');
				document.adminForm.room.value = document.adminForm.room.value.replace(/^\-+|\-+$/g, '');
				if (document.adminForm.room.value.length>0) return true;
				else 
				{
				alert("A room name is required!");
				document.adminForm.button.disabled=false;
				document.adminForm.button.value="Create"; 
				return false;
				}
			}
			</script>
<form id="form1" name="adminForm" method="post" action="index.php">
  <input name="room" type="text" id="room" value="InstantChat" size="20" maxlength="64" onChange="censorName()"/>
  <input type="submit" name="button" id="button" value="Create" onclick="this.disabled=true; censorName(); this.value='Loading...'; adminForm.submit();"/>

</form></div>
    <?php
}

include("clean_older.php");
?>
