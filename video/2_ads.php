<?php
/* Sample local ads serving script ; Or use http://adinchat.com compatible ads server to setup http://adinchat.com/v/your-campaign-id

POST Variables:
u=Username
s=Session, usually same as username
r=Room
ct=session time (in milliseconds)
lt=last session time received from this script in (milliseconds)

*/

$room=$_POST[r];
$session=$_POST[s];
$username=$_POST[u];

$currentTime=$_POST[ct];
$lastTime=$_POST[lt];

$cam=$_POST['cam'];
$mic=$_POST['mic'];

$webcam=0;
if ($cam==2) $webcam=1;

$ztime=time();

//fill ad to show
$ad="";

?>x=1&ad=<?=urlencode($ad)?>&loadstatus=1